class HomeScreen < PageActions

  # element :sign_in, css: "span.text"

  def get_home
    driver.get "http://www.jut.io//"
  end

  def expand_menu
    find_element(:css,"a.expand")
  end

  def sign_in
    find_element(:css, "nav.in").find_elements(:tag_name, "li").find{|el| el.text=="LOGIN"}.find_element(:tag_name, "a")
  end

end