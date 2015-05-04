class HomeScreen < PageActions

  def get_home
    driver.get "http://www.netflix.com"
  end

  def sign_in
    find_element(:css, "span.text")
  end

end 