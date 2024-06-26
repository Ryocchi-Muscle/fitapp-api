class CreateTrainingPrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :training_programs do |t|
      t.string :title
      t.string :image
      t.string :gender
      t.string :frequency
      t.integer :week
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
