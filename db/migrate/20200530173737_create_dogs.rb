class CreateDogs < ActiveRecord::Migration[5.2]
  def up
    create_table :dogs do |t|
      t.string :name
      t.string :breed
    end
  end

  def down
    drop_table :dogs
  end
end

#Now, run the migration from the terminal with rake db:migrate
#rake db:migrate SINATRA_ENV=development

#Why add SINATRA_ENV=development, you might ask? Well, remember the top line of config/environment.rb?
#It's telling Sinatra that it should use the "development" environment for both shotgun and the testing suite.
#Therefore, we want to make sure our migrations run on the same environment as well,
#and specifying SINATRA_ENV=development allows us to do that.
