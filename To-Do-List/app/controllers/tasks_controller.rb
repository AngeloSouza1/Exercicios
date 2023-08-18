class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]
  
    # Ação para listar todas as tarefas
    def index
      @tasks = Task.all
    end
  
    # Ação para mostrar os detalhes de uma tarefa específica
    def show
    end
  
    # Ação para criar uma nova tarefa (exibe o formulário)
    def new
      @task = Task.new
    end
  
    # Ação para salvar uma nova tarefa no banco de dados
    def create
      @task = Task.new(task_params)
      
      if @task.save
        redirect_to tasks_path, notice: 'Tarefa criada com sucesso.'
      else
        render :new
      end
    end
  
    # Ação para editar uma tarefa existente (exibe o formulário)
    def edit
    end
  
    # Ação para atualizar uma tarefa no banco de dados
    def update
      if @task.update(task_params)
        redirect_to tasks_path, notice: 'Tarefa atualizada com sucesso.'
      else
        render :edit
      end
    end
  
    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      redirect_to tasks_path, notice: 'Tarefa excluída com sucesso.'
    end
        
       
    private
  
    # Método auxiliar para buscar a tarefa pelo ID
    def set_task
      @task = Task.find(params[:id])
    end
  
    # Método auxiliar para definir os parâmetros permitidos para a criação/atualização de tarefas
    def task_params
      params.require(:task).permit(:name, :description, :completed)
    end
  end
  