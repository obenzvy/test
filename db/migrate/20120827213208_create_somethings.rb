class CreateSomethings < ActiveRecord::Migration
  def change
    create_table :somethings do |t|
      t.string :with_something

      t.timestamps
    end
  end
end
