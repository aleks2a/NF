class SearchResult < PageActions

  def search_results?
    find_element(:id, "resInfo-0").text
  end




end