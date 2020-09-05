class Play

  def initialize(document)
    @document = document
  end

  def acts
    act_docs = document.css('ACT')
    act_docs.map { |doc| Act.new(doc) }
  end

  def title
    document.css('> TITLE').text
  end

  def self.build
    build_with_file('lib/macbeth.xml')
  end

  def self.build_with_file(file_path)
    payload = File.open(file_path).read
    document = Nokogiri::XML(payload)
    play_document = document.css('PLAY').first
    new(play_document)
  end

  private

  attr_reader :document
end
