class CreateAnalysis < ActiveRecord::Migration
  def change
    create_table :analyses do |t|
      t.references :video_games, index: true, foreign_key: true
      t.string :title
      t.text :content
    end
  end
end
