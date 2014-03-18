class Visitor < ActiveRecord::Base
  validates_presence_of :favorite
  
  IMAGE_LABELS = ['San Francisco', 'Sydney', 'Paris', 'New York']
end
