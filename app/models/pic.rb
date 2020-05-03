class Pic
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :text, type: String
end
