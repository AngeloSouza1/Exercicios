class CalculatorController < ApplicationController
    def index
    end
  
    def calculate
      @result = case params[:operator]
        when "+" then params[:num1].to_f + params[:num2].to_f
        when "-" then params[:num1].to_f - params[:num2].to_f
        when "*" then params[:num1].to_f * params[:num2].to_f
        when "/" then params[:num1].to_f / params[:num2].to_f
        else "Operação inválida"
      end
      render 'index'
    end
  end
  