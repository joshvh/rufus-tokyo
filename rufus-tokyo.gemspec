
$: << File.expand_path('lib')
require 'rufus/tokyo/base'

$gemspec = Gem::Specification.new do |s|

  s.name = 'rufus-tokyo'
  s.version = Rufus::Tokyo::VERSION
  s.authors = [ 'John Mettraux' ]
  s.email = 'jmettraux@gmail.com'
  s.homepage = 'http://rufus.rubyforge.org/'
  s.platform = Gem::Platform::RUBY
  s.summary = 'ruby-ffi based lib to access Tokyo Cabinet'

  s.require_path = 'lib'
  s.test_file = 'test/test.rb'
  s.has_rdoc = true
  s.extra_rdoc_files = %w{ README.txt CHANGELOG.txt CREDITS.txt }
  s.rubyforge_project = 'rufus'

  %w{ ffi }.each do |d|
    s.requirements << d
    s.add_dependency(d)
  end

  files = [ '{lib,test}/**/*' ].map { |p| Dir[p] }.flatten
  s.files = files.to_a
end

