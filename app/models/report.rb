class Report < ApplicationRecord
  belongs_to :user
  belongs_to :contamination_level
  belongs_to :report_type
end
