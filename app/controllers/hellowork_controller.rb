class HelloworkController < ApplicationController

    ## 単純な表示の復習
    def index 
        render plain: 'here is an index, plain-rendered by the controller.'
    end

    ## 同上
    def hellowork
        @msg = 'todesking'
    end

    ## scaffoldをいったん手動でつくるみたいなことをしないと値の受け渡しがよくわからない
    def new_message
        # doodad
    end

end
