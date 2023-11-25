class SearchController < ApplicationController 

    before_action :use_cart

    def redirect
        final_url = uri_parser.escape "/busca?termo=#{params[:term]}"
        redirect_to final_url
    end

    def index
        term = params[:termo]
        wildcard = "%#{term}%"
        @candies = Candy.where("name LIKE ? OR description LIKE ?", wildcard, wildcard)
    end

    def uri_parser 
        @uri_parser ||= URI::Parser.new
    end
end