# class ApplicationController < Sinatra::Base
#   set :default_content_type, 'application/json'

#   get '/tasks' do
#     tasks = Task.all.order(:due_date)
#     tasks.to_json
#   end

#   get '/tasks/:id' do
#     task = Task.find(params[:id])
#     task.to_json
#   end




#   post '/tasks' do
#     task = Task.create(body: params[:body], group: params[:group], due: params[:due], group_id: params[:group_id])
#     task.to_json
#   end

#   patch '/tasks/:id' do
#     task = Task.find(params[:id])
#     task.update(body: params[:body], group: params[:group], due: params[:due], group_id: params[:group_id])
#     task.to_json
#   end

#   delete '/tasks/:id' do
#     task = Task.find(params[:id])
#     task.destroy
#     task.to_json
#   end



#   get '/groups' do
#     groups = Group.all.order(:id)
#     groups.to_json(include: :tasks)
#   end

#   get '/groups/:id' do
#     group = Group.find(params[:id])
#     group.to_json(include: :tasks)
#   end

#   post '/groups' do
#     group = Group.create(name: params[:name], emoji: params[:emoji])
#     group.to_json
#   end

#   patch '/groups/:id' do
#     group = Group.find(params[:id])
#     group.update(name: params[:name], emoji: params[:emoji])
#   end






# end


class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/users' do
    users = User.all.order(:id)
    users.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end


  post '/users/:id' do
    users = User.create(name: params[:name])
    users.to_json
  end

  
  get '/groups' do
    groups = Group.all.order(:id)
    groups.to_json
  end

  get '/groups/:id' do
    group = Group.find(params[:id])
    group.to_json
  end

  post '/groups' do
    group = Group.create(name: params[:name], emoji: params[:emoji])
    group.to_json
  end

  patch '/groups/:id' do
    group = Group.find(params[:id])
    group.update(name: params[:name])
    group.to_json
  end


  get '/tasks' do
    tasks = Task.all.order(:due_date)
    tasks.to_json
  end

  get '/tasks/:id' do
    task = Task.find(params[:id])
    task.to_json
  end

  post '/tasks' do
    task = Task.create(body: params[:body], due: params[:due], group_id: params[:group_id], user_id: params[:user_id])
    task.to_json
  end

  patch '/tasks/:id' do
    task = Task.find(params[:id])
    task.update(body: params[:body])
    task.to_json
  end
  #this doesnt work and I don't know why.

  delete '/tasks/:id' do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end








end