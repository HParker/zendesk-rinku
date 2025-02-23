require_relative "lib/version"

Gem::Specification.new do |s|
  s.name = 'zendesk-rinku'
  s.version = Rinku::VERSION
  s.summary = "Mostly autolinking"
  s.description = <<-EOF
    A fast and very smart autolinking library that
    acts as a drop-in replacement for Rails `auto_link`

    This is now a significant departure from the base gem.
  EOF
  s.email = 'shajith@zendesk.com'
  s.homepage = 'https://github.com/zendesk/rinku'
  s.authors = ["Shajith Chacko", "Jonathan Cheatham", "Matt Barker"]
  s.license = "ISC"
  s.files = %w[
    COPYING
    README.markdown
    Rakefile
    ext/rinku/rinku.c
    ext/rinku/rinku.h
    ext/rinku/autolink.c
    ext/rinku/autolink.h
    ext/rinku/buffer.c
    ext/rinku/buffer.h
    ext/rinku/extconf.rb
    lib/rinku.rb
    lib/rails_rinku.rb
    rinku.gemspec
  ]
  s.extensions = ["ext/rinku/extconf.rb"]
  s.required_ruby_version = ">= 2.7"
end
