class AddMeetingToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :meeting, :string
  end
end
