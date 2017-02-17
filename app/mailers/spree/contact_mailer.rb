class ContactMailer < ActionMailer::Base
  default to: "contact@milor.io"


  def contact_email(name, email, body, prenom)
    @name = name
    @email = email
    @body = body
    @prenom = prenom
    #@adresse = adresse
    #@pays = pays
    #@telephone = telephone
    #@societe = societe
    mail(from: email, subject: 'Formulaire de contact de le part de ' + @name + ' ' + @email)
  end

end