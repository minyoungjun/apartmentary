require 'sinatra'
require 'mail'

get '/' do
=begin
	Mail.defaults do
	  delivery_method :smtp, {
	    :port      => 587,
	    :address   => "smtp.mailgun.com",
	    :user_name => "postmaster@apart.mailgun.org",
	    :password  => "4813b0b2c30dcf1a097e94c5f18d45d7",
	  }
	end

	mail = Mail.deliver do
	  to      'minyoung9353@gmail.com'
	  from    'admin@apart.mailgun.org'
	  subject 'Hello'

	  text_part do
	    body 'Testing some Mailgun awesomness'
	  end
	end
=end
	"success"
end
