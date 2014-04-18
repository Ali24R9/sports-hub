class RenameSubscribers < ActiveRecord::Migration
  def change
    rename_table :subscribers, :subscriptions
    rename_column :subscriptions, :user_id, :subscribed_id
  end
end
