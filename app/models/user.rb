class User < ApplicationRecord
  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


        #gender [Male & Female] 
        enum gender: { male: 0,female: 1 } # make setter && getter

         #gender [Male & Female] 
         enum instructor: { instructor: 1,normal_user: 0 } # make setter && getter

        #upload image
        mount_uploader :avatar, AvatarUploader

        #date validation
      validates_format_of :dob, :with => /([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/


      #user create many courses
      has_many :courses

      #user create many lectures
      has_many :lectures

      #user has many comments
      has_many :comments
      has_many :lectures, through: :comments

      #many to many relation [flag as spam]
      has_and_belongs_to_many :lectures
     
end
