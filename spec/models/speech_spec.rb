describe Speech do
  let(:play) { Play.build }
  let(:act) { play.acts.first }
  let(:scene) { act.scenes.first }
  let(:speech) { scene.speeches.first }

  describe '#speaker' do
    it 'returns the speaker' do
      expect(speech.speaker).to eq('First Witch')
    end
  end

  describe '#lines' do
    it 'returns the lines' do
      expect(speech.lines).to eq(
        ['When shall we three meet again', 'In thunder, lightning, or in rain?']
      )
    end
  end
end
