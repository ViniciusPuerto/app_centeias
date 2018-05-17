class FreqController < ApplicationController
    
    
  
    def freq
      #Definindo a hora e dia dos check_inS
        
        @check_in_hash = Hash.new
        @check_in_hash["#{@check_in_day}"] = @check_in_hour
    #end

    #def check_out
      #Defindo a hora e dia dos check_outS
      
      @check_out_hash = Hash.new
      @check_out_hash["#{@check_out_day}"] = @check_out_hour
    end
    
    def hora_dia  
      #Armazenando no hash o dia e qtd de horas para o gráfico
      @hora_dia_t = Hash.new
      hora_dia = TimeDifference.between(@user.check_out_time, @user.check_in_time).in_hours
      @check_in_hash["#{check_in_time.day}"] = hora_dia
    end
     

    
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:nome, :registro, :cargo, :email, :pin, :check_in_time, :check_out_time)
      @check_in_day = @user.check_in_time.day
      @check_in_hour =  @user.check_in_time.hour
      @check_out_day = @user.check_out_time.day
      @check_out_hour = @user.check_out_time.hour
    end
end
