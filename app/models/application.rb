# == Schema Information
#
# Table name: applications
#
#  id                     :integer          not null, primary key
#  user_id                :integer
#  track                  :string
#  over_18                :boolean
#  previous_attendance    :string
#  programming_experience :text
#  reason                 :text
#  tshirt_size            :string
#  admin_status           :string
#  user_status            :string
#  gender                 :string
#  dietary_requirements   :json
#  extra_info             :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  event_id               :integer
#

class Application < ActiveRecord::Base
  validates :previous_attendance, :programming_experience,
            :reason, :gender, presence: true
  validates_inclusion_of :over_18, in: [true, false]


  # relations
  belongs_to :user
  belongs_to :event
  has_many :votes

  # acts_as_commentable
  # accepts_nested_attributes_for :comments

  # scopes
  scope :needs_admin_response, -> { where('admin_status=? OR admin_status=?', 'applied', 'deferred') }
  scope :has_admin_response, -> { where('admin_status!=? AND admin_status!=?', 'applied', 'deferred') }
  scope :beginner_track, -> { where(track: 'beginner') }
  scope :next_track, -> { where(track: 'next') }
  scope :attending, -> { where(user_status: 'accepted') }

  def self.allowed_params
    [ :track, :over_18, :previous_attendance, :programming_experience, :reason,
      :tshirt_size, :admin_status, :user_status, :gender, {dietary_requirements: []}, :extra_info,
      :event_id]
  end

  def count_up_votes
    @votes = Vote.all
    @votes.select{|vote| vote.application_id == self.id && vote.vote_type == 'up'}.count
  end

  def count_down_votes
    @votes = Vote.all
    @votes.select{|vote| vote.application_id == self.id && vote.vote_type == 'down'}.count
  end

  def age
    if over_18
      'Over 18'
    else
      'Under 18'
    end
  end

  def important_attributes
    attributes = []
    attributes << track if track == 'next'
    attributes << gender if gender == 'Male'
    attributes << age unless over_18
    attributes
  end

  def send_application_thanks
    ApplicationsMailer.application_received(self).deliver
  end

  def needs_admin_response?
    admin_status == 'applied' || admin_status == 'deferred'
  end

  def send_admin_status_email
    case admin_status
    when 'approved'
      ApplicationsMailer.application_success(self).deliver
    when 'deferred'
      ApplicationsMailer.application_deferred(self).deliver
    when 'rejected'
      ApplicationsMailer.application_rejected(self).deliver
    end
  end

  # TODO: move to helpers - it's only relevant for the views
  def admin_status_icon
    case admin_status
    when 'approved'
      'fa-check'
    when 'deferred'
      'fa-clock-o'
    when 'rejected'
      'fa-times'
    end
  end

  # TODO: move to helpers - it's only relevant for the views
  def user_status_icon
    case user_status
    when 'accepted'
      'fa-check'
    when 'declined'
      'fa-times'
    end
  end

  def previous_applications?
    user.applications.count > 1
  end
end
