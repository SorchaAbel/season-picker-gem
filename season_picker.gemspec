# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "season_picker/version"

Gem::Specification.new do |spec|
  spec.name          = "season_picker"
  spec.version       = SeasonPicker::VERSION
  spec.authors       = ["Sorcha Abel"]
  spec.email         = ["sorchajkeane@gmail.com"]

  spec.summary       = "Takes input of month and hemisphere and returns the season"
  spec.description   = "This gem is a single class and needs to be instantiated i.e. @season_picker = SeasonPicker.new. The process method
                        takes 2 params, a date and a hemisphere (Northern or Southern). The date param can be in string format i.e. 'dd/mm/yyyy'
                        or Date format i.e Date.today "
  spec.homepage      = "https://github.com/SorchaAbel/season-picker.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
