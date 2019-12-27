lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mfnazir_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "mfnazir_view_tool"
  spec.version       = MfnazirViewTool::VERSION
  spec.authors       = ["Muhammed Nazir"]
  spec.email         = ["mnazir9876@gmail.com"]

  spec.summary       = %q{A Gem created for the purpose of applying a copyright method to all pages in a rails project}
  spec.description   = %q{Gives a rails application HTML data.}
  spec.homepage      = "https://github.com/MFNazir"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
