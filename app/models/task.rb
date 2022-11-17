class Task < ApplicationRecord
  belongs_to :user

  enum :status, [ :incomplete, :complete ]
  
end
