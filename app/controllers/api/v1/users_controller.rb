class Api::V1::UsersController < ApplicationController
    before_action :set_beer, only: [:show, :edit, :update, :destroy]

    # GET /users
    # GET /users.json
    def index
      @users = User.all
      render json: @users
    end
  
    # GET /users/1
    # GET /users/1.json
    def show
      if @user
        render json: @user
      else
        render json: @user.errors
      end
    end
  
    # GET /user/new
    def new
      @user = User.new
    end
  
    # GET /user/1/edit
    def edit
    end
  
    # POST /users
    # POST /users.json
    def create
      @user = User.new(user_params)
  
  
      if @user.save
        render json: @user
      else
        render json: @user.errors
      end
    end
  
    # PATCH/PUT /users/1
    # PATCH/PUT /users/1.json
    def update
    end
  
    # DELETE /users/1
    # DELETE /users/1.json
    def destroy
      @user.destroy
  
      render json: { notice: 'User has successfully been removed' }
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def user_params
        params.permit()
      end
  end
end