class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless EmailAddress.valid?(value, host_validation: :syntax)
      record.errors.messages[attribute] << "'#{value}' - is not a valid email"
    end
  end
end
