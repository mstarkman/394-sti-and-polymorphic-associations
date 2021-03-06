namespace :guests do
  desc "Remove guest accounts more than a week old."
  task :cleanup => :environment do
    Guest.where("created_at < ?", 1.week.ago).destroy_all
  end
end
