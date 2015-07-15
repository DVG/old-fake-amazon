namespace :development do
  task :reset => ["db:drop", "db:migrate", "db:seed"]
end