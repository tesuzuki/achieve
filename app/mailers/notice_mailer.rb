class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_blog(blog)
    @blog = blog

    mail to: "tesuzuki401@gmail.com",
         subject: '【Achieve】ブログが投稿されました'
  end
  
  def sendmail_contact(contact)
    @contact=contact
    @name=contact.name
    @content=contact.content
    mail to: contact.email,
         subject: 'お問い合わせ完了'
  end
end
