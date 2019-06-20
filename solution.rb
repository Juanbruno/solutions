require "sinatra"

get "/" do
    @count = params[:item]
    
    if @count == nill
        @count = 0
    end

erb :index

end

get "/count " do
@count = params[:c].to_i + 1
redirect "/?item=@{@count}"
end