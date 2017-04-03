# DO NOT EDIT - This file is automatically generated
# Make changes to Manifest.txt and/or Rakefile and regenerate
# -*- encoding: utf-8 -*-
# stub: launchy 2.4.3 ruby lib

Gem::Specification.new do |s|
  s.name = "launchy"
  s.version = "2.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeremy Hinegardner"]
  s.date = "2015-02-18"
  s.description = "Launchy is helper class for launching cross-platform applications in a fire and forget manner. There are application concepts (browser, email client, etc) that are common across all platforms, and they may be launched differently on each platform. Launchy is here to make a common approach to launching external application from within ruby programs."
  s.email = "jeremy@copiousfreetime.org"
  s.executables = ["launchy"]
  s.extra_rdoc_files = ["CONTRIBUTING.md", "HISTORY.md", "Manifest.txt", "README.md"]
  s.files = ["CONTRIBUTING.md", "HISTORY.md", "LICENSE", "Manifest.txt", "README.md", "Rakefile", "bin/launchy", "lib/launchy.rb", "lib/launchy/application.rb", "lib/launchy/applications/browser.rb", "lib/launchy/argv.rb", "lib/launchy/cli.rb", "lib/launchy/deprecated.rb", "lib/launchy/descendant_tracker.rb", "lib/launchy/detect.rb", "lib/launchy/detect/host_os.rb", "lib/launchy/detect/host_os_family.rb", "lib/launchy/detect/nix_desktop_environment.rb", "lib/launchy/detect/ruby_engine.rb", "lib/launchy/detect/runner.rb", "lib/launchy/error.rb", "lib/launchy/os_family.rb", "lib/launchy/version.rb", "spec/application_spec.rb", "spec/applications/browser_spec.rb", "spec/cli_spec.rb", "spec/detect/host_os_family_spec.rb", "spec/detect/host_os_spec.rb", "spec/detect/nix_desktop_environment_spec.rb", "spec/detect/ruby_engine_spec.rb", "spec/detect/runner_spec.rb", "spec/launchy_spec.rb", "spec/mock_application.rb", "spec/spec_helper.rb", "spec/tattle-host-os.yaml", "spec/version_spec.rb", "tasks/default.rake", "tasks/this.rb"]
  s.homepage = "http://github.com/copiousfreetime/launchy"
  s.licenses = ["ISC"]
  s.rdoc_options = ["--main", "README.md", "--markup", "tomdoc"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.4.6"
  s.summary = "Launchy is helper class for launching cross-platform applications in a fire and forget manner."
  s.test_files = ["spec/application_spec.rb", "spec/applications/browser_spec.rb", "spec/cli_spec.rb", "spec/detect/host_os_family_spec.rb", "spec/detect/host_os_spec.rb", "spec/detect/nix_desktop_environment_spec.rb", "spec/detect/ruby_engine_spec.rb", "spec/detect/runner_spec.rb", "spec/launchy_spec.rb", "spec/mock_application.rb", "spec/spec_helper.rb", "spec/tattle-host-os.yaml", "spec/version_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>, ["~> 2.3"])
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
      s.add_development_dependency(%q<minitest>, ["~> 5.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.1"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.9"])
    else
      s.add_dependency(%q<addressable>, ["~> 2.3"])
      s.add_dependency(%q<rake>, ["~> 10.1"])
      s.add_dependency(%q<minitest>, ["~> 5.0"])
      s.add_dependency(%q<rdoc>, ["~> 4.1"])
      s.add_dependency(%q<simplecov>, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<addressable>, ["~> 2.3"])
    s.add_dependency(%q<rake>, ["~> 10.1"])
    s.add_dependency(%q<minitest>, ["~> 5.0"])
    s.add_dependency(%q<rdoc>, ["~> 4.1"])
    s.add_dependency(%q<simplecov>, ["~> 0.9"])
  end
end
