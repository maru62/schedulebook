class HelloworkController < ApplicationController

    ## 単純な表示の復習
    def index 
        render plain: 'here is an index, plain-rendered by the controller.'
    end

    def hellowork
        @msg = 'todesking'
    end
end
