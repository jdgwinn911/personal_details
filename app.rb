require 'sinatra'


get '/' do
  erb :perdetail
end

post '/name' do
  puts params
  first_name = params[:first_name]
  last_name = params[:last_name]
  redirect '/perdetail2?first_name=' + first_name + '&last_name=' + last_name
end

get '/perdetail2' do
  first_name = params[:first_name]
  last_name = params[:last_name]
  puts "in perdetail2 params is #{params}"
  erb :perdetail2, locals: {first_name: first_name, last_name: last_name}
end

post '/address' do
  puts "#{params} is params in post adress"
  first_name = params[:first_name]
  last_name = params[:last_name]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  redirect '/favenums?first_name=' + first_name + '&last_name=' + last_name + '&street=' + street + '&city=' + city + '&state=' + state + '&zip=' + zip
end

get '/favenums' do
  first_name = params[:first_name]
  last_name = params[:last_name]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  puts "#{params} fav nums is"
  erb :favenums, locals: {first_name: first_name, last_name: last_name, street: street, city: city, state: state, zip: zip}
end

post '/favenums' do
  puts "#{params} is params in favenums"
  first_name = params[:first_name]
  last_name = params[:last_name]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  num1 = params[:num1.to_s]
  num2 = params[:num2.to_s]
  num3 = params[:num3.to_s]
  redirect '/last_page?first_name=' + first_name + '&last_name=' + last_name + '&street=' + street + '&city=' + city + '&state=' + state + '&zip=' + zip + '&num1=' + num1 + '&num2=' + num2 + '&num3='+ num3
end

get '/last_page' do
  first_name = params[:first_name]
  last_name = params[:last_name]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  num1 = params[:num1]
  num2 = params[:num2]
  num3 = params[:num3]
  puts "#{params} results is "
  erb :last_page, locals: {first_name: first_name, last_name: last_name, street: street, city: city, state: state, zip: zip, num1: num1, num2: num2, num3: num3}
end

