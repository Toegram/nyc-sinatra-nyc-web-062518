class CreateFigureTitles < ActiveRecord::Migration

  belongs_to :title
  belongs_to :figure


  def change
    create_table :figure_titles do |t|
      t.integer :title_id
      t.integer :figure_id
    end
  end

end
