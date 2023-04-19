EMAIL_PATTERN = /^([^@]+)@([^@]+)\.(\w+)$/

def valid?(email)
  # TODO: return true if the email is valid, false otherwis
  if email.match(EMAIL_PATTERN) != nil
    true
  else
    false
  end
end

def clean_database(emails)
  emails.filter { |email| valid?(email) }
  # TODO: return an array with the valid emails only
end

def group_by_tld(emails)
  # TODO: return a Hash with emails grouped by TLD

  emails.group_by { |email| email.match(/.(\w+)$/)[1] }
end

def compose_mail(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  email_data = email.match(/^(?<name>\w+)@(?<domain>\w+).(?<tld>\w+)$/)
  return {
    username: email_data[:name],
    domain: email_data[:domain],
    tld: email_data[:tld]
  }
end

def compose_translated_email(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  # TODO: translate subject, body, closing and signature, according to TLD
end
