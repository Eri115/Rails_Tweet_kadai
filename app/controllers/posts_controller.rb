class PostsController <   ActionController::Base
    
    #①データベースからすべてデータを取得するため、@posts = Post.allを記載
    #@postsでインスタンス変数に格納すると、viewでも使用することができる。
    def index
        @posts = Post.all
    end

    #newは新しいページのフォームを@postで作成している
    def new 
        @post = Post.new
    end
   

    def create
        @post = Post.new(post_params)
    
        if @post.save
            redirect_to posts_path
        else 
            render :new
        end
    end


    #editはどのツイートを編集するか調べるためにpost.findを使用
    #localhost3000/1/editでアクセス
    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to posts_path
        else
            render :edit
        end
    end 

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end


    private

    def post_params
        params.require(:post).permit(:content)

    end
end


