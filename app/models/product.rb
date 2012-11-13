class Product < ActiveRecord::Base
  attr_accessible :name

  has_many :data_errors,  :as => :errorable, 
                          :dependent => :destroy
end
