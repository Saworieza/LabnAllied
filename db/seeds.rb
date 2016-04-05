20.times do |n|
	username = "User-#{n+1}"
	email = "example-#{n+1}@labnallied.org"
	password = "password"
	User.create!(
		username: username,
		email: email,
		password: password,
		password_confirmation: password)
end