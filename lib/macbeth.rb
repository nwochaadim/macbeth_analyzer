require 'pry'
require 'nokogiri'
require_relative './models/speech'
require_relative './models/scene'
require_relative './models/act'
require_relative './models/play'
require_relative './models/macbeth_analyzer'

play = Play.build
analyzer = MacbethAnalyzer.new(play)
print analyzer.output

