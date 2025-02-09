# frozen_string_literal: true

require_relative '../support/env'
require_relative '../support/api_helpers'

base_url = 'https://petstore.swagger.io/v2'

Given('user get headers') do
  @headers = {
    'Content-Type' => 'application/json',
    'Accept' => 'application/json'
  }
end

When 'visitor able to create user' do
  step 'user get headers'
  endpoint_user = '/user'
  url = "#{base_url}#{endpoint_user}"
  puts "URL = #{url}"
  puts 'Method = POST'
  user_data = generate_new_user
  request_body = {
    username: user_data[:username],
    email: user_data[:email],
    firstName: user_data[:firstName],
    lastName: user_data[:lastName],
    phone: user_data[:phone],
    password: user_data[:password],
    userStatus: 0
  }
  payload = request_body.to_json
  response = RestClient.post(url, payload, @headers)
  expect(response.code).to eq 200
  response_body = JSON.parse(response.body)
  request_data = JSON.parse(payload)
  @created_user = request_data
  puts "Payload = #{@created_user}"
  puts "Response = #{response_body}"
end

When 'visitor verify created user exist' do
  created_username = @created_user['username']
  endpoint_getuser = "/user/#{created_username}"
  step 'user get headers'
  url = "#{base_url}#{endpoint_getuser}"
  puts "URL = #{url}"
  puts 'Method = GET'
  response = RestClient.get(url, @headers)
  expect(response.code).to eq 200
  puts "Payload = #{@created_user}"
  @verifying_user_data = JSON.parse(response.body)
  puts "Response = #{@verifying_user_data}"

  # Verifying data
  expect(@created_user['username']).to eq(@verifying_user_data['username'])
  expect(@created_user['firstName']).to eq(@verifying_user_data['firstName'])
  expect(@created_user['lastName']).to eq(@verifying_user_data['lastName'])
  expect(@created_user['email']).to eq(@verifying_user_data['email'])
  expect(@created_user['password']).to eq(@verifying_user_data['password'])
  expect(@created_user['phone']).to eq(@verifying_user_data['phone'])
end
