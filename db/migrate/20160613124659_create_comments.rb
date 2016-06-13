class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, :user

      t.text :body
    end
  end
end
