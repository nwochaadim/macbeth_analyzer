class Act

  def initialize(doc)
    @doc = doc
  end

  def title
    doc.css('> TITLE').text
  end

  def scenes
    scene_docs = doc.css('SCENE')
    scene_docs.map { |doc| Scene.new(doc) }
  end

  private

  attr_reader :doc
end
