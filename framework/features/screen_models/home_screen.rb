class HomeScreen < PageActions

  # element :sign_in, css: "span.text"

  def get_home
    driver.get "http://www.coupa.com/"
  end

  def expand_menu
    find_element(:css,"a.left-off-canvas-toggle.menu-icon")
  end

  def search_button
    # require"pry"
    # binding.pry
    find_element(:css, "i.fa.fa-search")
  end

  def search_field
    find_element(:id, "search").find_element(:tag_name, "input")
  end

  def go_search
    find_element(:id, "searchSubmit")
  end

end