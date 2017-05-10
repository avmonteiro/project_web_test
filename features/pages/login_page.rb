class Login < SitePrism::Page
  
  element :username, "#username"
  element :password, "#password"
  element :bt_login, "button.radius"
  element :bt_logout, "div a i" 

  def set_login(_user, _pass)
    username.set(_user)
    password.set(_pass)
    bt_login.click
  end
  
  def logout
    bt_logout.click
  end
end



