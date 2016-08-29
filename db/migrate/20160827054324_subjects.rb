class Subjects < ActiveRecord::Migration[5.0]
   def self.up
      
      create_table :subjects do |t|
         t.column :name, :string
      end
   end

   def down
      drop_table :subjects
   end
end
