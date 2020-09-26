require_relative 'config/environment'

class App < Sinatra::Base
 
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @result = params[:number].to_i*params[:number].to_i
    "#{@result}"
  end
  
   get '/say/:number/:phrase' do
    str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times { str += "#{@phrase}\n" }
    str
  end
end