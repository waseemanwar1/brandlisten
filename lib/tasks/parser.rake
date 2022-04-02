namespace :parser do
  desc "Parse file data and return formatted football team data"
  task :parse_file, [:file_path] do |t, args|
    FootBallData.instance.list = ParseFileData.new(args[:file_path]).call
  end
end
