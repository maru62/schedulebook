# coding: utf-8
class SearchController < ApplicationController

    def index # searchを描画する
        render 'search/search'
    end

    def search 

    end

    def find_sad_day
        @day = Day.find_by(event: 'sad')
        render 'days/show'
    end

    def find_by_ids
        @days = Day.find([1018352613, 1018352614, 1018352615])
        render 'days/list'
    end

end
