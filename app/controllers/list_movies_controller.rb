class ListMoviesController < ApplicationController
	before_action :logged_in_user, only: [:create, :create_watched, :create_want, :create_recommend, :destroy]
	before_action :correct_user, only: :destroy
	# in order to show all three buttons on
	def create
	end

	# add watched movie to the database
	def create_watched
		@user = current_user
		if @user.movielists.find_by(listname: "watched").nil?
			@list = @user.movielists.create(listname: "watched")
		else
			@list = @user.movielists.find_by(listname: "watched")
		end
		@add_movie = ListMovie.new(movielist_id: @list.id, movie_id: params[:movie_id])
		if @add_movie.save
			flash[:success] = "リストに追加しました"
			redirect_to :controller => "users", :action => "watched", :id => @user.id
		else
			flash[:danger] = "リストへの追加失敗しました"
			redirect_to :back
		end
	end

	# add the movie that user wants to watch to the database
	def create_want
		@user = current_user
		if @user.movielists.find_by(listname: "want").nil?
			@list = @user.movielists.create(listname: "want")
		else
			@list = @user.movielists.find_by(listname: "want")
		end
		@add_movie = ListMovie.new(movielist_id: @list.id, movie_id: params[:movie_id])
		if @add_movie.save
			flash[:success] = "リストに追加しました"
			redirect_to :controller => "users", :action => "want", :id => @user.id
		else
			flash[:danger] = "リストへの追加失敗しました"
			redirect_to :back
		end
	end

	# add recommended movie to the database
	def create_recommend
		@user = current_user
		if @user.movielists.find_by(listname: "recommend").nil?
			@list = @user.movielists.create(listname: "recommend")
		else
			@list = @user.movielists.find_by(listname: "recommend")
		end
		@add_movie = ListMovie.new(movielist_id: @list.id, movie_id: params[:movie_id])
		if @add_movie.save
			flash[:success] = "リストに追加しました"
			redirect_to :controller => "users", :action => "recommend", :id => @user.id
		else
			flash[:danger] = "リストへの追加失敗しました"
			redirect_to :back
		end
	end

	# add recommended movie from other list and without redirect
	def create_recommend_from_other
		@user = current_user
		if @user.movielists.find_by(listname: "recommend").nil?
			@list = @user.movielists.create(listname: "recommend")
		else
			@list = @user.movielists.find_by(listname: "recommend")
		end
		@add_movie = ListMovie.new(movielist_id: @list.id, movie_id: params[:movie_id])
		if @add_movie.save
			flash[:success] = "おすすめ映画リストに追加しました"
		else
			flash[:danger] = "おすすめ映画リストへの追加失敗しました"
		end
		redirect_to :back
	end

	# add watched movie from other list and without redirect
	def create_watched_from_other
		@user = current_user
		if @user.movielists.find_by(listname: "watched").nil?
			@list = @user.movielists.create(listname: "watched")
		else
			@list = @user.movielists.find_by(listname: "watched")
		end
		@add_movie = ListMovie.new(movielist_id: @list.id, movie_id: params[:movie_id])
		if @add_movie.save
			flash[:success] = "観た映画リストに追加しました"
		else
			flash[:danger] = "観た映画リストへの追加失敗しました"
		end
		redirect_to :back
	end

	# add want-to-watch movie from other list and without redirect
	def create_want_from_other
		@user = current_user
		if @user.movielists.find_by(listname: "want").nil?
			@list = @user.movielists.create(listname: "want")
		else
			@list = @user.movielists.find_by(listname: "want")
		end
		@add_movie = ListMovie.new(movielist_id: @list.id, movie_id: params[:movie_id])
		if @add_movie.save
			flash[:success] = "リストに追加しました"
		else
			flash[:danger] = "リストへの追加失敗しました"
		end
		redirect_to :back
	end

	# def destroy
	# 	User.find(params[:id]).destroy
	# 	flash[:success] = "ユーザを削除しました！"
	# 	redirect_to users_url
	# end

	def destroy
		# ListMovie.find_by(params[:movielist_id], params[:movie_id]).destroy
		@list_movie.destroy
		flash[:success] = "削除しました"
		# byebug
		# redirect_to root_path
		redirect_to :back
	end


	private
		# confirm a logged-in user
		def logged_in_user
			unless logged_in?
				store_location
				flash[:danger] = "ログインしてください。"
				redirect_to login_path
			end
		end

		# confirm the correct user
		def correct_user
			@movielist = current_user.movielists.find_by(id: params[:movielist_id])
			@list_movie = ListMovie.find_by(movielist_id: params[:movielist_id], movie_id: params[:movie_id])
			redirect_to(root_path) if @movielist.nil?
		end

		# def movie_params
		# 	params.permit(:movielist_id, :movie_id)
		# end
end