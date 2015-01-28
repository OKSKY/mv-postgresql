# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: mv-postgresql 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mv-postgresql"
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Valeriy Prokopchuk"]
  s.date = "2015-01-28"
  s.description = "Postgresql constraints in migrations similiar to ActiveRecord validations"
  s.email = "vprokopchuk@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "lib/mv-postgresql.rb",
    "lib/mv/postgresql/active_record/connection_adapters/postgresql_adapter_decorator.rb",
    "lib/mv/postgresql/constraint/builder/check.rb",
    "lib/mv/postgresql/constraint/builder/trigger.rb",
    "lib/mv/postgresql/constraint/check.rb",
    "lib/mv/postgresql/railtie.rb",
    "lib/mv/postgresql/route/check.rb",
    "lib/mv/postgresql/validation/absence.rb",
    "lib/mv/postgresql/validation/active_model_presenter/format.rb",
    "lib/mv/postgresql/validation/builder/exclusion.rb",
    "lib/mv/postgresql/validation/builder/format.rb",
    "lib/mv/postgresql/validation/builder/inclusion.rb",
    "lib/mv/postgresql/validation/builder/trigger/absence.rb",
    "lib/mv/postgresql/validation/builder/trigger/custom.rb",
    "lib/mv/postgresql/validation/builder/trigger/exclusion.rb",
    "lib/mv/postgresql/validation/builder/trigger/format.rb",
    "lib/mv/postgresql/validation/builder/trigger/inclusion.rb",
    "lib/mv/postgresql/validation/builder/trigger/length.rb",
    "lib/mv/postgresql/validation/builder/trigger/presence.rb",
    "lib/mv/postgresql/validation/builder/trigger/trigger_column.rb",
    "lib/mv/postgresql/validation/builder/trigger/uniqueness.rb",
    "lib/mv/postgresql/validation/check_support.rb",
    "lib/mv/postgresql/validation/custom.rb",
    "lib/mv/postgresql/validation/exclusion.rb",
    "lib/mv/postgresql/validation/format.rb",
    "lib/mv/postgresql/validation/inclusion.rb",
    "lib/mv/postgresql/validation/length.rb",
    "lib/mv/postgresql/validation/presence.rb"
  ]
  s.homepage = "http://github.com/vprokopchuk256/mv-postgresql"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0")
  s.rubygems_version = "2.4.4"
  s.summary = "Postgresql constraints in migrations similiar to ActiveRecord validations"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["~> 4.1"])
      s.add_runtime_dependency(%q<pg>, ["~> 0.17"])
      s.add_runtime_dependency(%q<mv-core>, ["~> 2.2"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.1"])
      s.add_development_dependency(%q<rspec-its>, ["~> 1.1"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 4.5"])
      s.add_development_dependency(%q<shoulda>, ["~> 3.5"])
    else
      s.add_dependency(%q<railties>, ["~> 4.1"])
      s.add_dependency(%q<pg>, ["~> 0.17"])
      s.add_dependency(%q<mv-core>, ["~> 2.2"])
      s.add_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_dependency(%q<rspec>, ["~> 3.1"])
      s.add_dependency(%q<rspec-its>, ["~> 1.1"])
      s.add_dependency(%q<guard-rspec>, ["~> 4.5"])
      s.add_dependency(%q<shoulda>, ["~> 3.5"])
    end
  else
    s.add_dependency(%q<railties>, ["~> 4.1"])
    s.add_dependency(%q<pg>, ["~> 0.17"])
    s.add_dependency(%q<mv-core>, ["~> 2.2"])
    s.add_dependency(%q<jeweler>, ["~> 2.0"])
    s.add_dependency(%q<rspec>, ["~> 3.1"])
    s.add_dependency(%q<rspec-its>, ["~> 1.1"])
    s.add_dependency(%q<guard-rspec>, ["~> 4.5"])
    s.add_dependency(%q<shoulda>, ["~> 3.5"])
  end
end

