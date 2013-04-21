# == Schema Information
#
# Table name: mangas
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  plot       :text
#  author_id  :integer
#  genre_id   :integer
#  release    :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  picture    :string(255)
#

class Manga < ActiveRecord::Base
  attr_accessible :author_id, :genre_id, :plot, :release, :title, :picture
  validates_presence_of :author_id, :plot, :title, :genre, :picture

  belongs_to  :author
  belongs_to  :genre
  has_many    :volumes

  def ecchi? ;  genre.name == "ecchi" end
  def hentai? ; genre.name == "hentai" end
  def yuri? ; genre.name == "yuri" end

  scope :ecchi_manga,   Manga.joins(:genre).where("genres.name = ?", "Ecchi")
  scope :hentai_manga,  Manga.joins(:genre).where("genres.name = ?", "Hentai")
  scope :yuri_manga,    Manga.joins(:genre).where("genres.name = ?", "Yuri")
end
