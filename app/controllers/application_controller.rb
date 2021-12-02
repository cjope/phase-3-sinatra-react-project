class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/tasks' do
    tasks = Task.all.order(:due_date)
    tasks.to_json
  end

  get '/tasks/:id' do
    task = Task.find(params[:id])
    task.to_json
  end

  get '/tasks/group_id/:group_id' do
    task = Task.find(params[:group_id])
    task.to_json
  end




  post '/tasks' do
    task = Task.create(body: params[:body], group: params[:group], due: params[:due], group_id: params[:group_id])
    task.to_json
  end

  patch '/tasks/:id' do
    task = Task.find(params[:id])
    task.update(body: params[:body], group: params[:group], due: params[:due], group_id: params[:group_id])
    task.to_json
  end

  delete '/tasks/:id' do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end



  get '/groups' do
    groups = Group.all.order(:id)
    groups.to_json(include: :tasks)
  end

  get '/groups/:id' do
    group = Group.find(params[:id])
    group.to_json(include: :tasks)
  end

  post '/groups' do
    group = Group.create(name: params[:name], bicon: params[:bicon])
    group.to_json
  end

  patch '/groups/:id' do
    group = Group.find(params[:id])
    group.update(name: params[:name], bicon: params[:bicon])
  end






end