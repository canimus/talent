class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :candidate
      t.text :content
      t.string :role
      t.string :tools
      t.string :words
      t.string :verbs
      t.datetime :received_ate
      t.datetime :evaluated_at

      t.timestamps
    end
  end
end
