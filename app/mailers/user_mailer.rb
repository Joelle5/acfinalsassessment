class UserMailer < ApplicationMailer
  def send_like(user, note)
    @user = user
    @note = note
    mail(to @user.email, subject: "Someone liked your note!")
  end

  def send_unlike(user,note)
    @user = user
    @note = note
    mail(to: @user.email, subject: "Someone unliked your note!")
  end
end
