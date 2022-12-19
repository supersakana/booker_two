class Flight < ApplicationRecord
  belongs_to :from, class_name: 'Airport'
  belongs_to :to, class_name: 'Airport'
  has_many :bookings
  has_many :passengers, through: :bookings

  def self.search(params)
    where(['date = ? and from_id = ? and to_id = ?',
           params[:date], params[:from_id], params[:to_id]])
  end
end
