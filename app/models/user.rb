class User < ActiveRecord::Base
  attr_accessible :blurb, :email, :name
end
