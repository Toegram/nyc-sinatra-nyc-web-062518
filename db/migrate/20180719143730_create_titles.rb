class CreateTitles < ActiveRecord::Migration

  has_many :figure_titles
  has_many :figures, through: :figure_titles

  def change
    create_table :titles do |t|
      t.string :name
    end
  end

end
