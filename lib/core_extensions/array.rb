module CoreExtensions
  module Array          
	  def except(*values)
	    self - values
	  end    
	end
end