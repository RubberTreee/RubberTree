class Prospect < ApplicationRecord
  validates_presence_of :first_name, :last_name, :email, :mobile, :how_heard
  validates_inclusion_of :marketing,
                         in: [true, false],
                         message: 'You need to specify your preference.'
end
