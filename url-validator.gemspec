Gem::Specification.new do |gem|
	gem.name = 'url-validator'
	gem.version = '0.0.1'
	gem.summary = "UrlValidator"
	gem.description = %q{This gem provides URL validator.}
	gem.homepage = 'https://github.com/amogil/url-validator'
	gem.authors = ["Alexey Mogilnikov"]
	gem.email = ["alexey@mogilnikov.name"]
	gem.files = `git ls-files`.split($/)
	gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
	gem.require_paths = ["lib"]

	gem.add_development_dependency 'uri'
	gem.add_development_dependency 'rspec', '~> 2.6'
end