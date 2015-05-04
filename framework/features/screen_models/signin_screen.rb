class SigninScreen < PageActions

  element :email_field,     id: "email"
  element :password_field,  id: "password"
  element :signin_btn,      id: "login-form-contBtn"
  element :errors,          id: "aerrors"



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