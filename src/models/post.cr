require "./user"

class Post < BaseModel
  table :posts do
    column title : String
    column body : String
    column summary : String?
    belongs_to author : User
  end
end
