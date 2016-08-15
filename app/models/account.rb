require 'zlib'
require 'base64'

class Account < ActiveRecord::Base
  self.abstract_class = true
  self.inheritance_column = 'name'

  validates :name,
    presence: true,
    allow_blank: false

  validates :description,
    presence: true,
    allow_blank: false

  def self.names
    ['Bag', 'Container', 'Plant', 'Waste', 'Seed']
  end

  def self.scan(data)
    find(decompress(data)[/\d+/])
  end

  def label
    NorthCardinal::Label.new(
      text: self.to_s,
      data: compress(self.to_s))
  end

  def to_s
    "#{name}-#{id}"
  end

  private

    def compress(text)
      Base64.encode64(Zlib::Deflate.deflate(text))
    end

    def decompress(text)
      Zlib::Inflate.inflate(Base64.decode64(text))
    end

end
