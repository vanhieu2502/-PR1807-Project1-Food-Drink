module ApplicationHelper

	# Returnn the full title on the per-page basics

  def full_title(page_title = '')
  	base_title = "Foods And Drinks"
  	if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
  	end
  	end	
end
