class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  scope :exclude_current_user, lambda { |id| where('id != ?', id) }

  def votes
    CountVote.where(id_candidate: id).count
  end
end
