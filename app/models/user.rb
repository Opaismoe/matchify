class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile, dependent: :destroy
  has_many :matches, dependent: :destroy

  validates :email, presence: true
  validates_uniqueness_of :email

  def full_name
    return profile.full_name if profile?
    email
  end

  def profile?
    profile.present? && profile.persisted?
  end



end
