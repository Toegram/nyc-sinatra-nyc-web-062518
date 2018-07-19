class CreateFigures < ActiveRecord::Migration

  has_many :figure_titles
  has_many :landmarks
  has_many :titles, through: :figure_titles

  def change
    create_table :figures do |t|
      t.string :name
    end
  end

end
