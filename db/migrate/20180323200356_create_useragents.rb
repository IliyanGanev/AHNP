class CreateUseragents < ActiveRecord::Migration[5.1]
  def change
    create_table :useragents do |t|
      t.string :agent
      t.integer :counter, default: 0, null: false

      t.timestamps
    end
  end
end
