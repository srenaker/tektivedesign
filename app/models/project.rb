class Project
  include Mongoid::Document

  field :title, type: String
  field :description, type: String
  
end
