class Project < ActiveRecord::Base
	has_many :tasks

	validates :name, presence: true, length: {maxiumum: 50}
	validates :content, presence: true, length: {maxiumum: 500}
	validates :price, presence: true, numericality: {only_integer: true}

end
