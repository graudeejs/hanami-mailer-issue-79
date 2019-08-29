Hanami::Mailer.configure do
  default_charset 'utf-8'
  # namespace 'App::Mail::Mailers'
  root File.expand_path('../lib/app/mail/templates', __dir__)
  delivery_method :test
end.load!
