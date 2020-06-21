    require_relative 'config/environment'

    class App < Sinatra::Base

        # This is a sample static route.
        get '/hello' do
            "Hello World!"
        end

        # This is a sample dynamic route.
        get "/hello/:name" do
            @user_name = params[:name]
            "Hello #{@user_name}!"
        end

        # This is a sample dynamic route.
        get "/goodbye/:name" do
            @gbye_name = params[:name]
            "Goodbye, #{@gbye_name}."
        end

        # This is a sample dynamic route.
        get "/multiply/:num1/:num2" do
            # @num1 = params[:num1].to_i
            # @num2 = params[:num2].to_i
            # "#{@num1 * @num2}"

            ####  OR  ####

            @product = params[:num1].to_i * params[:num2].to_i
            "#{@product}"
            end
        end
