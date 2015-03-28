class CreateFaq < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.text :question
      t.text :answer
      t.text :image
      t.text :video
      t.boolean :visible
    end
  end
end
