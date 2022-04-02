class ParseFileData
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def call
    list = []

    if File.exist?(path)
      file = File.open(path, 'r')
      file_data = file.readlines.map(&:chomp)

      process_data(file_data)
    else
      list
    end
  end

  private

  def process_data(file_data)
    file_data.slice!(0)
    teams_data_list = []

    file_data.each do |row|
      team_details = row.split(' ')
      team_details.slice!(0) # skipping indexing of data i.e (1,2,3....)
      team_details[6] = team_details[5].to_i - team_details[7].to_i # for calculating raw of team

      attrs = {}

      team_details.each_with_index do |detail, index|
        detail = detail.to_i if index != 0
        attrs[team_attrs[index]] = detail
      end

      team = Team.new(attrs)
      teams_data_list << team if team.valid?
    end

    teams_data_list
  end

  def team_attrs
    %i[name p w l d f a raw pts]
  end
end