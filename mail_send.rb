require 'sinatra'
require 'rest-client'
get '/' do
  RestClient.post "https://api:key-5go59arglz5e8yvw32ai9ycmwvr557t0"\
    "@api.mailgun.net/v3/apart.mailgun.org/messages",
    :from => "Excited User <mailgun@apart.mailgun.org>",
    :to => "bar@example.com, minyoung9353@snu.ac.kr",
    :subject => "Hello",
    :text => "Testing some Mailgun awesomness!"

end
