require 'bundler'
Bundler.require


require 'sinatra/activerecord/rake'
require 'csv'
require_relative 'connection'
require_relative 'models/entry'
require_relative 'models/user'



namespace :db do
  desc "Create the blog_db database"
  task :create_db do
    conn = PG::Connection.open()
    conn.exec('CREATE DATABASE blog_db')
    conn.close
  end

  desc "Drop database" 
    task :drop_db do
    conn = PG::Connection.open()
    conn.exec('DROP DATABASE blog_db')
    conn.close
  end

  desc 'create junk data'
  task :junk_users do
    100.times do
      user = User.new({username: Faker::Internet.user_name, avatar: Faker::Avatar.image})
      user.password = Faker::Internet.password
      user.save
    end
  end


  desc "Import csv"
  task :load_data do

  filename = 'blog.csv'

  CSV.foreach(filename, headers: true) do |csv| # Part 1: load
    title = csv[0]
    body = csv[1]
    date = csv[2].to_date

    Entry.create!(
      title: title,
      body: body,
      date_entered: date
      ) # Part 3: store
    end
  end
end