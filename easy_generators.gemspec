# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{easy_generators}
  s.version = "1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ivan Torres"]
  s.date = %q{2009-05-02}
  s.description = %q{Easy Generators for Rails}
  s.email = %q{mexpolk@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/easy_generators.rb"]
  s.files = ["Manifest", "generators/easy_layout/templates/stylesheets/sass/application.sass", "generators/easy_layout/templates/helpers/shadowbox_helper.rb", "generators/easy_layout/templates/images/body_bg.svg", "generators/easy_layout/templates/images/body_bg.png", "generators/easy_layout/templates/layouts/application.haml", "generators/easy_layout/easy_layout_generator.rb", "README.rdoc", "Rakefile", "lib/easy_generators.rb", "easy_generators.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/innetra/haml_layout}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Easy_generators", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{easy_generators}
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Easy Generators for Rails}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
