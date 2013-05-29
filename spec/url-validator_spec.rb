#coding: utf-8

require 'rspec'
require 'url-validator'

describe UrlValidator do

	it 'should validate valid urls' do
		valid_urls = [
				'http://example.com',
				'https://example.com',
				'http://1.1.1.1',
				'example.com',
				'www.example.com',
				'http://www.example.com/index?param=1&another_param[1]=%20'
		]

		valid_urls.each do |url|
			UrlValidator.valid?(url).should be_true
		end


	end

	it 'should not validate invalid urls' do
		invalid_urls = [
				'ftp://example.com',
				'AB3q4jdsjsapj',
				'http://example .com',
				'example|com',
				'mailto://at@example.com',
				'http://',
				'http://a',
				'.example.com',
				'example.com.',
				'пример.com',
				'example..com'
		]

		invalid_urls.each do |url|
			UrlValidator.valid?(url).should be_false
		end
	end
end