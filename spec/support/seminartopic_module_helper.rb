module SeminartopicModuleHelper

  def new_topic(title, descripton, studname)
      p "======new"
    visit '/seminartopics/new'

    # sleep 2
    # # fill_in "user_login", with: username
    # # fill_in "user_password", with: password
    # # # find_element(:css, "button[type='submit']").click()
    # # click_login
  end
end
