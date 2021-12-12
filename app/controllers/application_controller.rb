class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  #GET

  #all users
  get '/users' do
    users = User.all.order(:id)
    users.to_json
  end

  #all groups
    get '/groups' do
      groups = Group.all.order(name: :asc)
      groups.to_json
    end

  #all tasks
  get '/tasks' do
    tasks = Task.all.order(:due_date)
    tasks.to_json
  end


  #one user
  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end 

  #one group
  get '/groups/:id' do
    group = Group.find(params[:id])
    group.to_json
  end

  #one task
  get '/tasks/:id' do
    task = Task.find(params[:id])
    task.to_json
  end


  #all tasks through one group through one user
  get '/users/:id/:group_id' do
    tasks = User.get_tasks(params[:id], params[:group_id])
    tasks.to_json
  end


  #create user
  post '/users/:id' do
    users = User.create(name: params[:name])
    users.to_json
  end

  #create group
  post '/groups' do
    group = Group.create(name: params[:name], emoji: params[:emoji])
    group.to_json
  end

  #create task
  post '/tasks' do
    task = Task.create(body: params[:body], due: params[:due], group_id: params[:group_id], user_id: params[:user_id])
    task.to_json
  end

  #edit group
  patch '/groups/:id' do
    group = Group.find(params[:id])
    group.update(name: params[:name])
    group.to_json
  end




  #edit task
  patch '/tasks/:id' do
    task = Task.find(params[:id])
    task.update(body: params[:body])
    task.to_json
  end

  #delete task
  delete '/tasks/:id' do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end








end