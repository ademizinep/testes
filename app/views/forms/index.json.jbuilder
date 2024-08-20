json.forms @forms do |form|
  json.id form.id
  json.name form.name

  json.form_fields form.form_fields do |form_field|
    json.id form_field.id
    json.name form_field.name

    json.text_forms form_field.text_forms do |text_form|
      json.id text_form.id
      json.description text_form.description

      json.text_form_fields text_form.text_form_fields do |text_form_field|
        json.id text_form_field.id
        json.appointment_time text_form_field.appointment_time
      end
    end

    json.word_forms form_field.word_forms do |word_form|
      json.id word_form.id
      json.name word_form.name

      json.word_fields word_form.word_fields do |word_field|
        json.id word_field.id
        json.name word_field.name
      end
    end

    json.number_choice_forms form_field.number_choice_forms do |number_choice_form|
      json.id number_choice_form.id
      json.name number_choice_form.name

      json.number_choice_fields number_choice_form.number_choice_fields do |number_choice_field|
        json.id number_choice_field.id
        json.choice_number number_choice_field.choice_number
        json.mask number_choice_field.mask
      end
    end
  end
end
