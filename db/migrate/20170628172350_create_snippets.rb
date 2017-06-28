class CreateSnippets < ActiveRecord::Migration[5.1]
  def change
    create_table :snippets do |t|
      t.column :body, :string
      t.column :image, :string
      t.column :user_id, :integer
      t.column :story_id, :integer

      t.timestamps
    end
  end
end
