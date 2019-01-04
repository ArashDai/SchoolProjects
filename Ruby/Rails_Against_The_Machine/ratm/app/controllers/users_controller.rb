class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  #before_action :require_user, only: [:dashboard]
  before_action :correct_user,   only: [:edit, :update, :dashboard]
  GOOGLE_API_KEY = "AIzaSyAWbWKanbVfCBJpdAUV70iGx-mXWbuZ7NQ"

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
      respond_to do |format|
        if @user.save
          session[:userid] = @user.id
          format.html { redirect_to @user, notice: 'User was successfully created.' }#change redirect to dashboard once created
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new } # change to redirect to homepage index
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def dashboard
    @user = User.find(params[:id])
    @address = @user.address.gsub(/\s/,"+")
    geolocation = HTTParty.post("https://maps.googleapis.com/maps/api/geocode/json?address=#{@address}&key=#{GOOGLE_API_KEY}", verify:false)
    @lat = geolocation['results'][0]['geometry']['location']['lat']
    @lng = geolocation['results'][0]['geometry']['location']['lng']
  
    #BASE_URL = "https://congress.api.sunlightfoundation.com/"
    @legislators = HTTParty.get("https://congress.api.sunlightfoundation.com/legislators/locate?latitude=#{@lat}&longitude=#{@lng}", verify:false)
    @upcoming_bills_house = HTTParty.get("https://congress.api.sunlightfoundation.com/upcoming_bills?chamber=house&order=scheduled_at", verify:false)
    @upcoming_bills_senate = HTTParty.get("https://congress.api.sunlightfoundation.com/upcoming_bills?chamber=senate&order=scheduled_at", verify:false)

    #puts response.body, response.code, response.message, response.headers.inspect
       
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :address)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == current_user
    end
end
