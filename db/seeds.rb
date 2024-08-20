# db/seeds.rb

forms = []
10.times do |i|
  forms << create(:form)
end

form_fields = []
10.times do |i|
  form_fields << create(:form_field, form: forms[i])
end

text_forms = []
10.times do |i|
  3.times do
    text_forms << create(:text_form, form_field: form_fields[i])
  end
end

text_form_fields = []
10.times do |i|
  2.times do
    text_form_fields << create(:text_form_field, text_form: text_forms[i])
  end
end

word_forms = []
10.times do |i|
  2.times do
    word_forms << create(:word_form, form_field: form_fields[i])
  end
end

word_fields = []
10.times do |i|
  word_fields << create(:word_field, word_form: word_forms[i])
end

number_choice_forms = []
10.times do |i|
  number_choice_forms << create(:number_choice_form, form_field: form_fields[i])
end

number_choice_fields = []
10.times do |i|
  number_choice_fields << create(:number_choice_field, number_choice_form: number_choice_forms[i])
end

people = []
10.times do
  people << create(:person)
end

people.each do |person|
  person.forms << forms.sample(rand(1..3))
end

puts 'Dados de exemplo inseridos com sucesso!'
