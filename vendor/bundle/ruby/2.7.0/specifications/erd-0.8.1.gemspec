# -*- encoding: utf-8 -*-
# stub: erd 0.8.1 ruby lib

Gem::Specification.new do |s|
  s.name = "erd".freeze
  s.version = "0.8.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Akira Matsuda".freeze]
  s.date = "2022-03-21"
  s.description = "erd engine on Rails".freeze
  s.email = ["ronnie@dio.jp".freeze]
  s.homepage = "https://github.com/amatsuda/erd".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.13".freeze
  s.summary = "erd engine on Rails".freeze

  s.installed_by_version = "3.3.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<ruby-graphviz>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_development_dependency(%q<rails>.freeze, [">= 3.2"])
    s.add_development_dependency(%q<sass-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<test-unit-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<capybara>.freeze, [">= 2"])
    s.add_development_dependency(%q<rr>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_development_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
  else
    s.add_dependency(%q<ruby-graphviz>.freeze, [">= 0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 3.2"])
    s.add_dependency(%q<sass-rails>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit-rails>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 2"])
    s.add_dependency(%q<rr>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
  end
end
