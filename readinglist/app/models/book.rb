class Book < ActiveRecord::Base
	def initialize(url_string)
		@page = MetaInspector.new(url_string)
		@title = @page.title
		# @author = attributes[:author]
		@amazon_url = @page.url
	end

	def add_to_currently_reading
	end

	def add_to_future_reading
	end
end
