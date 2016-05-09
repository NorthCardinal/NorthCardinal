require 'zlib'
require 'base64'

class Account < ActiveRecord::Base
  self.inheritance_column = 'name'

  def self.names
    [nil, 'Bag', 'Container', 'Plant', 'Waste', 'Seed']
  end

  def self.scan(data)
    find(Zlib::Inflate.inflate(Base64.decode64(data))[/\d+/])
  end

  def label
    Label.new(label_text, label_data)
  end

  protected

    def label_text
      "#{name}-#{id}"
    end

    def label_data
      Base64.encode64(Zlib::Deflate.deflate(label_text))
    end

end
