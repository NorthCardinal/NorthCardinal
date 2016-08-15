require 'barby'
require 'barby/barcode/code_128'
require 'barby/outputter/rmagick_outputter'

class NorthCardinal::Label

  def initialize text:, data:, barcode: Barby::Code128B
    @barcode = barcode.new(data)
    @text = text
  end

  def to_png
    @barcode.to_png
  end
end
