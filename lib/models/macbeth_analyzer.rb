class MacbethAnalyzer
  def initialize(play)
    @play = play
  end

  def result
    play.
    acts.
    flat_map(&:scenes).
    flat_map(&:speeches).
    sort_by(&:speaker).
    group_by(&:speaker).
    reduce({}) do |initial, (name, speeches)|
      if name != 'ALL'
        initial.merge!(name => speeches.flat_map(&:lines).size)
      end
      initial
    end
  end

  def output
    result.
      map { |k, v| "#{k} #{v} \n" }.
      join
  end

  private

  attr_reader :play
end
