module CoreExtensions
  module Fixnum
    def to_human
    	number = ActionController::Base.helpers.number_to_human(self) unless self.nil?
      number || self
    end
  end
end