module ApplicationHelper
	def formata_data(data)
      # formatando a data: Aug, 31 2007 - 9:55PM
      data.strftime("%m, %b %Y - %H:%M")
   end
end
