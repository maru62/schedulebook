# coding: utf-8
class SearchController < ApplicationController

    def index # searchを描画する
        render 'search/search'
    end

    def search 
    end

    def show
    end

    def find_sad_day
        @day = Day.find_by(events: 'sad')
    end

end
