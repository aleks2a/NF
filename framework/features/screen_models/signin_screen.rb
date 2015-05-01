class SigninScreen < PageActions

  def email_field
    find_element(:id, "email")
  end

  def password_field
    find_element(:id, "password")
  end

  def signin_btn
    find_element(:id, "login-form-contBtn")
  end

  def errors
    find_element(:id, "aerrors")
  end

end