json.person do
  json.id @person.id
  json.first_name @person.first_name
  json.last_name @person.last_name
  json.email @person.email
  json.phone_number @person.phone_number
  json.address @person.address
  json.picture_url @person.picture_url
  json.date_of_birth @person.date_of_birth
  json.created_at @person.created_at
  json.updated_at @person.updated_at
end
