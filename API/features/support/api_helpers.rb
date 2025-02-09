# frozen_string_literal: true

def generate_new_user
  new_name = "Test-#{rand(1..999)}"
  new_email = "test_#{rand(1..1000)}@mailtrap.com"
  new_first_name = 'Test'
  new_last_name = "super#{rand(1..999)}"
  new_password = "random-#{rand(1..10_000)}"
  new_phone = "08#{rand(1_000_000_000..9_999_999_999)}"
  {
    username: new_name,
    email: new_email,
    firstName: new_first_name,
    lastName: new_last_name,
    password: new_password,
    phone: new_phone
  }
end
