require 'zlib'
require 'base64'

class Account < ActiveRecord::Base
  self.inheritance_column = 'name'

  validates :name,
    presence: true,
    allow_blank: false

  validates :description,
    presence: true,
    allow_blank: false

  def self.names
    [nil, 'Bag', 'Container', 'Plant', 'Waste', 'Seed']
  end

  def self.scan(data)
    find(decompress(data)[/\d+/])
  end

  def label
    NorthCardinal::Label.new(label_text, label_data)
  end

  protected

    def label_text
      "#{name}-#{id}"
    end

    def label_data
      compress label_text
    end

  private

    def compress(text)
      Base64.encode64(Zlib::Deflate.deflate(text))
    end

    def decompress(text)
      Zlib::Inflate.inflate(Base64.decode64(text))
    end

end
