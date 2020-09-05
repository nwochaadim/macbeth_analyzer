describe Play do
  let(:play) { Play.build_with_file('spec/support/fixtures/macbeth.xml') }

  describe '.build' do
    it 'returns an instance of Play' do
      play = Play.build

      expect(play).to be_kind_of(Play)
    end
  end

  describe '#title' do
    it 'returns the title of the play' do
      expect(play.title).to eq('The Tragedy of Macbeth')
    end
  end

  describe '#acts' do
    it 'returns an array of acts' do
      result = play.acts

      expect(result).to all(be_an Act)
    end
  end

end
