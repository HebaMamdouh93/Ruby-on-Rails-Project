class Lecture < ApplicationRecord
    acts_as_votable
    #lecture created by only user
    belongs_to :user 

    #lecture belongs_to one course
    belongs_to :course

    #lecture has many comments
    has_many :comments
    has_many :users, through: :comments

    #upload image
    mount_uploader :attachment , AttachmentUploader

    #many to many relation [flag as spam]
    has_and_belongs_to_many :users

    validates :content, presence: true
end
