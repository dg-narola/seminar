module UserModuleHelper

  def login_user(username, password)
    visit '/users/sign_in'
    sleep 2
    fill_in "user_login", with: username
    fill_in "user_password", with: password
    # find_element(:css, "button[type='submit']").click()
    click_login
  end

  def sign_up_user(email, username, password)
    p "=========visit"
    visit '/users/sign_up'
    sleep 2
    fill_in "user_email", with: email
    fill_in "user_username", with: username
    fill_in "user_password", with: password
    fill_in "user_password_confirmation", with: password
    click_signup
  end

  def edit_profile
    find("a", text: "Profile").click()
  end

  def update_profile_attributes(user, username ,password = nil, confirm_password = nil)
    fill_in "user_email", with: user.email
    fill_in "user_username", with: user.username
    if !password.nil?
      fill_in "user_password", with: password
    end
    if !confirm_password.nil?
      fill_in "user_password_confirmation", with: confirm_password
    end
    click_button 'Update'
  end

  def click_login
    click_button 'Log in'
  end

  def click_signup
    click_button 'Sign up'
  end

end
