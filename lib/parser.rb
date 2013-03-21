module SiteParser
	class IrrParser
		def parse(url)
			Nokogiri::HTML(open(url)).css("tr .h3 a").map(&:text)
		end
	end
end