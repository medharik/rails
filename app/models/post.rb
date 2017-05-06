class Post < ActiveRecord::Base
	validates :titre, presence: true
	validates :commentaire, presence: true
	validates :titre,uniqueness: {:message => "unique"}


end
