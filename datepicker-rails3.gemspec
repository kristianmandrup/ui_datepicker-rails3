Gem::Specification.new do |s|
  s.name = %q{ui_datepicker-rails3}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kristian Mandrup"]
  s.date = %q{2011-11-25}
  s.description = %q{jQuery UI datepicker integration for Formtastic, Simple Form and Active Admin}
  s.email = %q{kmandrup@gmail.com}
  s.extra_rdoc_files = [
    "README.mdown"
  ]
  s.files = Dir.glob("lib/**/*.rb") + [
    "MIT-LICENSE",
    "README.mdown",
    "Rakefile",
    "init.rb"
  ]
  s.homepage = %q{http://github.com/kristianmandrup/ui_datepicker-rails3x}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Use jQuery UI's date picker with formtastic easily}
  s.test_files = Dir.glob("spec/**/*.rb")

  #s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
  s.add_dependency(%q<activesupport>, [">= 3.0.10"])
  s.add_dependency(%q<actionpack>, [">= 3.0.10"])
  s.add_dependency(%q<i18n>, [">= 0.4.0"])
  
  s.add_development_dependency(%q<rails>, [">= 3.0.10"])

  s.add_development_dependency(%q<rspec-rails>, [">= 2.5"])
  s.add_development_dependency(%q<rspec_tag_matchers>, [">= 1.0.0"])
  s.add_development_dependency(%q<hpricot>, [">= 0.8.3"])

  s.add_dependency(%q<formtastic>, [">= 2.0.0"])
end
