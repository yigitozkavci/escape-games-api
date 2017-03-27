namespace :game_data do
  desc "TODO"
  task generate: :environment do
    path = Rails.root.join('lib', 'tasks', 'data.yml')
    games = YAML.load_file path
    games.each do |game|
      g = Game.create(
        img: game[:img],
        url: game[:url],
        name: game[:name]
      )
      game[:scenarios].each do |scenario|
        g.scenarios.create scenario
      end
    end
  end
end
