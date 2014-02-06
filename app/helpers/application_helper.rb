module ApplicationHelper
	def formata_data(data)
    # formatando a data: Aug, 31 2007 - 9:55PM
    data.strftime("%m, %b %Y - %H:%M")
  end

  def bootstrap_class_for flash_type
    case flash_type
      when :success
        "alert-success" # Green
      when :error
        "alert-danger" # Red
      when :alert
        "alert-warning" # Yellow
      when :notice
        "alert-info" # Blue
      else
        flash_type.to_s
    end
  end
  
end
