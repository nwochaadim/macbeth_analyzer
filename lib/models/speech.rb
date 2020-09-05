class Speech

  def initialize(doc)
    @document = doc
  end

  def speaker
    document.css('> SPEAKER').text
  end

  def lines
    document.css('LINE').map(&:text)
  end

  private

  attr_reader :document
end
