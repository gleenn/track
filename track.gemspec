Gem::Specification.new do |s|
  s.name        = 'track'
  s.version     = '0.0.1'
  s.date        = '2013-04-24'
  s.summary     = "Print out current id of story in Pivotal Tracker"
  s.description = "Print out current id of story in Pivotal Tracker"
  s.authors     = ["Glenn Jahnke"]
  s.email       = 'glenn@whistle.com'
  s.files       = `git ls-files`.split("\n")
	s.executables << 'track'
  s.homepage    = 'http://rubygems.org/gems/track'
	s.add_dependency('pivotal-tracker', '>= 0.5.10')
	s.add_dependency('multi_json', '>= 1.3.0')
end
