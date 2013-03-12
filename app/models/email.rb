class Email < ActiveRecord::Base
  attr_accessible :address, :body, :subject
end
