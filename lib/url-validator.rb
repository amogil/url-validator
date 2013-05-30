require 'uri'

class UrlValidator
	def self.valid?(url)
		value = url.to_s
		clean_value = value.index('//') ? value : "http://#{value}"
		uri = URI.parse(clean_value) rescue nil
		if uri && ['https', 'http'].include?(uri.scheme)
			return true unless uri.host.index('.').nil? || uri.host[0] == '.' || uri.host.reverse[0] == '.' || uri.host.index('..')
		end
		false
	end
end