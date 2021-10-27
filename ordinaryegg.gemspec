# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "ordinaryegg"
  spec.version       = "1.0.0"
  spec.authors       = ["Ordinary Egg"]
  spec.email         = ["ordinaryegg@protonmail.com"]

  spec.summary       = "OE static site."
  spec.homepage      = "https://github.com/anordinaryegg/anordinaryegg"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 12.0"
end
