class AddIndexToUseragentsAgent < ActiveRecord::Migration[5.1]
  def change
    add_index :useragents, :agent, unique: true
  end
end
