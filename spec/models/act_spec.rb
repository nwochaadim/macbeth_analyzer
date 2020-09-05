# frozen_string_literal: true

describe Act do
  let(:play) { Play.build_with_file('spec/support/fixtures/macbeth.xml') }
  let(:act) { play.acts.first }

  describe '#title' do
    it 'returns the title' do
      expect(act.title).to eq('ACT I')
    end
  end

  describe '#scenes' do
    it 'returns an array of scenes' do
      expect(act.scenes).to all(be_a Scene)
    end
  end

end
