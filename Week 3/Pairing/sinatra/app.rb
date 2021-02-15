require 'sinatra'
# require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
	"I hate Ice Cream. Hello"
end

get '/cat' do
	"<div style='border: 3px dashed red'>
		<img src='https://scitechdaily.com/images/Cat-COVID-19-Mask.jpg'
	</div>"
end