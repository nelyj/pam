module ApplicationHelper
	def is_active?(link_path)
		if url_for(link_path).include? params[:controller] or current_page?(link_path)
			"active"
		else
			""
		end
	end

end
