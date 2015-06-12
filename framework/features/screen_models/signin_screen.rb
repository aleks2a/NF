class SigninScreen < PageActions

  element :email_field,     id: "username"
  element :password_field,  id: "password"
  element :signin_btn,      id: "submit"


  def errors
    find_element(css: "span.help-inline")
  end

  # def email_field
  #   find_element(:id, "email")
  # end
  #
  # def password_field
  #   find_element(:id, "password")
  # end
  #
  # def signin_btn
  #   find_element(:id, "login-form-contBtn")
  # end
  #
  # def errors
  #   find_element(:id, "aerrors")
  # end

end