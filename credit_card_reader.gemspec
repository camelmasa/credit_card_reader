$:.push File.expand_path('../lib', __FILE__)
require 'credit_card_reader/version'

Gem::Specification.new do |s|
  s.name        = 'credit_card_reader'
  s.version     = CreditCardReader::VERSION
  s.authors     = ['Masahiro Saito']
  s.email       = ['camelmasa@gmail.com']
  s.summary     = 'Detect credit card information'
  s.description = 'Detect credit card information'
  s.homepage    = 'https://github.com/camelmasa/credit_card_reader'
  s.license     = 'MIT'

  s.files = `git ls-files`.split($/)
  s.require_paths = ['lib']
end
