home = Home.new
login = Login.new

Dado(/^que eu acesse o site herokuapp$/) do
  home.load
end

Dado(/^efetue o login inserindo usuário "([^"]*)" e senha "([^"]*)"$/) do |user,pass|
  login.set_login(user,pass)
  sleep 3
end

Quando(/^validar mensagem de acesso You logged into a secure area!$/) do
	expect(page).to have_content 'You logged into a secure area!'
end

Entao(/^realizar logout no site$/) do
  login.logout
end

Entao(/^validar mensagem de logout You logged out of the secure area!$/) do
  expect(page).to have_content 'You logged out of the secure area!'
end


