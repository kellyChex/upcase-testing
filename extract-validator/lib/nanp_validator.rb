class NanpValidator < ActiveModel::EachValidator

  PHONE_REGEX = /^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$/
 
  def validate_each(record, attribute, value)
   record_error(record, attribute, value) if value !~ PHONE_REGEX
  end

  private

  def record_error(record, attribute, value)
   record.errors[attribute] << (options[:message] || 'invalid phone number format')
  end
end