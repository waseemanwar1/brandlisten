require 'rake'

class HomeController < ApplicationController

  def index
    Rails.application.load_tasks
    Rake::Task['parser:parse_file'].reenable
    Rake::Task['parser:parse_file'].invoke("#{Rails.public_path}/football.dat")
  end

  def raw_data
    file = File.open("#{Rails.public_path}/football.dat", 'r')

    @file_data = file.readlines.map(&:chomp)
  end
end
