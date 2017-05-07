module CoreExtensions
  module Hash
    def only columns
			self_downcase = {}
			self.map{|key, value|
				self_downcase[key.downcase] = value
			}
			dix = {}
			columns.map{|c| 
				dix[c] = self_downcase[c] if self.keys.map(&:downcase).include?(c)
			}
			return dix
		end
  end
end