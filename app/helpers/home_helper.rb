module HomeHelper
	def FullTitle(baseTitle, pageTitle)
		if pageTitle.empty?
			baseTitle
		else
			"#{baseTitle} | #{pageTitle}"
		end
	end
end
