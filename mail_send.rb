require 'sinatra'
require 'mail'
post '/' do
	Mail.defaults do
	  delivery_method :smtp, {
	    :port      => 587,
	    :address   => "smtp.mailgun.com",
	    :user_name => "postmaster@apart.mailgun.org",
	    :password  => "4813b0b2c30dcf1a097e94c5f18d45d7",
	openssl_verify_mode: 'none'
	  }
	end
	if params[:fix].to_i == 0
		my_subject = "[집고치기에 관심]" + params[:name]
	else
		my_subject = "[파트너쉽에 관심]" + params[:name]
	end

	content = params[:content]

	mail = Mail.deliver do
	  to      'apartmentary@naver.com'
	  from    'admin@apart.mailgun.org'
	  subject my_subject

	  text_part do
	    body content 
	  end
	end

	"success"
end
set :environment, :production
