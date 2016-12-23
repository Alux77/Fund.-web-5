get '/' do
  @abuelita = params[:abuelita]
  erb :index
  # Visita app/views/index.erb
end 

post '/abuelita' do
  puts "*" * 50
  p user_input = params[:user_input]
  final_input = deaf_grandma(user_input)
  redirect to "/?abuelita=#{final_input}"
end

def deaf_grandma(input)
  if input == "BYE TQM"
    "¡¡D'OH, ADIOS MIJITO!!"
  elsif input != input.upcase
    "NO, NO DESDE 1983"
  else
    "HUH?! NO TE ESCUCHO, HIJO!"
  end
end