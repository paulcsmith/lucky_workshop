class CreatePosts::V20180817105943 < LuckyMigrator::Migration::V1
  def migrate
    create :posts do
      add title : String
      add body : String
      add summary : String?
      add_belongs_to author : User, on_delete: :cascade
    end
  end

  def rollback
    drop :posts
  end
end
