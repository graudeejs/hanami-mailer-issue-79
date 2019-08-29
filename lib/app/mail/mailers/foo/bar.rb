class App::Mail::Mailers::Foo::Bar
  include Hanami::Mailer

  from 'noreply@exmaple.com'
  to 'tester@example.com'
  subject 'test'

  template 'foo/bar'
end
