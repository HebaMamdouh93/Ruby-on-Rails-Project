class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


        #gender [Male & Female] 
        enum gender: { male: 0,female: 1 } # make setter && getter

        #upload image
        mount_uploader :avatar, AvatarUploader

       # validate :validate_birth_date
        #def validate_birth_date
         # valid_date_format = /([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/
          #if !dob.blank? && !dob.match(valid_date_format)
         #   errors.add(:base, "Birth date is invalid")
          #end
      #end
      validates_format_of :dob, :with => /([12]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01]))/

     
end
