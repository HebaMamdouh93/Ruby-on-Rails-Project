class Course < ApplicationRecord
   
    #course has many lectures
    has_many :lectures, dependent: :destroy

    #course created by only user
    belongs_to :user 

    validates :title, presence: true
    validates :title, uniqueness: true
    validates :user_id, presence: false
    

end
