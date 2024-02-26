class BooksController < ApplicationController
  def new
    @book = Book.new
  end

def index
    @books = Book.all
    @book = Book.new
end

  def show
   @books = Book.find(params[:id])
  end

def edit
    @books = Book.find(params[:id])
end

def update
 
  @books = Book.find(params[:id])
  if @books.update(book_params)
    flash[:notice] = "Book was successfully updated."
    redirect_to book_path(@books.id)
  else
    # flash[:notice] = "Failed to update book."
    
    render :edit
  end
end

def destroy
  book = Book.find(params[:id])  # データ（レコード）を1件取得
  book.destroy  # データ（レコード）を削除
  redirect_to '/books'  # 投稿一覧画面へリダイレクト
end


def create
  @books = Book.all
  @book = Book.new(book_params)

  if @book.save
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(@book.id)
  else
    # flash[:alert] = "投稿に失敗しました。"
    render :index
  end
end




  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end