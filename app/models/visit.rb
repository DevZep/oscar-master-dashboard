class Visit < ApplicationRecord
  has_paper_trail

  scope :excludes_non_devs, -> { where(user_id: User.non_devs.ids) }
  scope :total_logins, -> (start_date, end_date) { where(created_at: start_date..end_date) }
end
