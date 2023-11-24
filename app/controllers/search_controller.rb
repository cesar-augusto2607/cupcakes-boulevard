class SearchController < ApplicationController 
    def redirect
        redirect_to CGI.escape("/busca?termo=#{params[:term]}")
    end

    def index
        term = params[:termo]
        wildcard = "%#{term}%"
        @candies = Candy.where("name LIKE ? OR description LIKE ?", wildcard, wildcard)
    end
end