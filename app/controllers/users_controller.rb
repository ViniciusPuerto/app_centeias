class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

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
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  def check_in
    #Definindo a hora e dia dos check_inS
      check_in_day = @user.check_in_time.day
      check_in_hour =  @user.check_in_time.hour
      @check_in_hash = Hash.new
      @check_in_hash["#{check_in_day}"] = check_in_hour
  end

  def check_out
    #Defindo a hora e dia dos check_outS
    check_out_day = @user.check_out_time.day
    check_out_hour = @user.check_out_time.hour
    @check_out_hash = Hash.new
    @check_out_hash["#{check_out_day}"] = check_out_hour
  end
  
  def hora_dia
    #Armazenando no hash o dia e qtd de horas para o gráfico
    @hora_dia_t = Hash.new
    hora_dia = TimeDifference.between(check_out_time, check_in_time).in_hours
    @check_in_hash["#{check_in_time.day}"] = hora_dia
  end
  
  
  # PATCH/PUT /users/1
  # PAT CH/PUT /users/1.json
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
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:nome, :registro, :cargo, :email, :pin)
    end

    
end
