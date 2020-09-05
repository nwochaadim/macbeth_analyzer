describe Scene do
  let(:play) { Play.build }
  let(:act) { play.acts.first }
  let(:scene) { act.scenes.first }

  describe '#title' do
    it 'returns the title of the scene' do
      expect(scene.title).to eq('SCENE I. A desert place.')
    end
  end

  describe '#speeches' do
    it 'returns an array of speeches' do
      expect(scene.speeches).to all(be_a Speech)
    end
  end
end
