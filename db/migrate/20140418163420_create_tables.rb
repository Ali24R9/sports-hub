class CreateTables < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.integer :user_id
      t.integer :subscriber_id
    end
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :user_id
    end
    create_table :tweets do |t|
      t.integer :tweet_id
      t.string :screen_name
      t.text :content
    end
  end
end
