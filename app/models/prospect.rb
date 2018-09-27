class Prospect < ApplicationRecord
  validates_presence_of :first_name, :last_name, :mobile, :how_heard
  validates :email, email: true
  validates_inclusion_of :marketing,
                         in: [true, false],
                         message: 'You need to specify your preference.'
end
