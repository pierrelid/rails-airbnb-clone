class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  after_create :send_sms

  # validates :participants_number, presence: true
  # validates :start_at, presence: true
  # validates :end_at, presence: true

  def send_sms
    @user = self.user
    @user.phone.slice!(0)
    @user_phone = "+33685694571"
    @host = User.find(self.user_id)
    client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
    from = '+33644645152'
    to = @user_phone
    client.messages.create(
    from: from,
    to: to,
    body: "Votre réservation a bien été prise en compte. Vous serez informé dès que #{@host.first_name}aura accepté votre reservation."
    )
  end
end
