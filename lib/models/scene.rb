class Scene
  def initialize(document)
    @document = document
  end

  def title
    document.css('> TITLE').text
  end

  def speeches
    speech_docs = document.css('SPEECH')
    speech_docs.map { |speech| Speech.new(speech) }
  end

  private

  attr_reader :document
end
