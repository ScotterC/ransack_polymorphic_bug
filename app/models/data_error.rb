class DataError < ActiveRecord::Base
  attr_accessible :errorable
  belongs_to :errorable, :polymorphic => true


end
