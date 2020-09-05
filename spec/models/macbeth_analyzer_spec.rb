describe MacbethAnalyzer do
  let(:play) { Play.build_with_file('spec/support/fixtures/macbeth.xml') }

  describe '#result' do
    it 'outputs names of speakers' do
      analyzer = MacbethAnalyzer.new(play)

      result = analyzer.result

      expect(result).to eq(
        'DUNCAN' => 3,
        'MALCOLM' => 5,
        'First Witch' => 2,
        'Third Witch' =>  1
      )
    end
  end

  describe '#output' do

    it 'returns the string version of the result' do
      analyzer = MacbethAnalyzer.new(play)

      result = analyzer.output

      expect(result).to eq(
        "DUNCAN 3 \nFirst Witch 2 \nMALCOLM 5 \nThird Witch 1 \n"
      )
    end
  end
end
