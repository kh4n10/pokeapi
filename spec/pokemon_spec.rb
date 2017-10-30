require "httparty"
require "pokeapi"
require "rspec"


describe "Pokemon Api" do
  before(:all) do
    @id = 1
    @pokemon = Pokeapi.get_the("pokemon", @id)  
    @ability = Pokeapi.get_the("ability", 1)  
    @characteristic = Pokeapi.get_the("characteristic", @id)
    @egg_group = Pokeapi.get_the("egg-group", @id)    
    @gender = Pokeapi.get_the("gender", @id)    
    @growth_rate = Pokeapi.get_the("growth-rate", @id)   
    @nature = Pokeapi.get_the("nature", @id)
    @pokeathlon_stat = Pokeapi.get_the("pokeathlon-stat", @id)    
    @pokemon_color = Pokeapi.get_the("pokemon-color", @id)  
    @pokemon_form = Pokeapi.get_the("pokemon-form", @id)
    @pokemon_habitat = Pokeapi.get_the("pokemon-habitat", @id)    
    @pokemon_shape = Pokeapi.get_the("pokemon-shape", @id)
    @pokemon_species =Pokeapi.get_the("pokemon-species", @id)
    @stat = Pokeapi.get_the("stat", @id)
    @type = Pokeapi.get_the("type", @id)
    @stat_name = Pokeapi.get_the("stat", "hp")
    @type_name = Pokeapi.get_the("type", "normal")
    @pokemon_name = Pokeapi.get_the("pokemon", "bulbasaur")
    @ability_name = Pokeapi.get_the("ability", "stench")
    @egg_group_name = Pokeapi.get_the("egg-group", "monster")
    @gender_name = Pokeapi.get_the("gender", "female")
    @growth_rate_name = Pokeapi.get_the("growth-rate", "slow")
    @nature_name = Pokeapi.get_the("nature", "hardy")
    @pokeathlon_stat_name = Pokeapi.get_the("pokeathlon-stat", "speed")
    @pokemon_color_name = Pokeapi.get_the("pokemon-color", "black")
    @pokemon_form_name = Pokeapi.get_the("pokemon-form", "bulbasaur")
    @pokemon_habitat_name = Pokeapi.get_the("pokemon-habitat", "cave")
    @pokemon_shape_name = Pokeapi.get_the("pokemon-shape", "ball")
    @pokemon_species_name =Pokeapi.get_the("pokemon-species", "bulbasaur")

  end
  describe "Pokemon Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@pokemon.code).to eql(200)
      end
      it "returns the expected pokemon" do
        expect(@pokemon['id']).to eql(@id)
        expect(@pokemon).to have_key('name')
        expect(@pokemon).to have_key('weight')
        expect(@pokemon).to have_key('forms')
        expect(@pokemon).to have_key('moves')
        expect(@pokemon).to have_key('species')
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokemon").code).to eql(200)
      end
    end
    context "Given a name" do
      it "returns a HTML code of 200." do
        expect(@pokemon_name.code).to eql(200)
      end
      it "returns the expected pokemon" do
        expect(@pokemon_name['id']).to eql(@id)
        expect(@pokemon_name).to have_key('name')
        expect(@pokemon_name).to have_key('weight')
        expect(@pokemon_name).to have_key('forms')
        expect(@pokemon_name).to have_key('moves')
        expect(@pokemon_name).to have_key('species')
      end
    end
  end 

  describe "Ability Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@ability.code).to eql(200)
      end
      it "returns the expected ability" do
        expect(@ability['id']).to eql(@id)
        expect(@ability).to have_key('name')
        expect(@ability).to have_key('generation')
        expect(@ability).to have_key('effect_changes')
        expect(@ability).to have_key('pokemon')
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("ability").code).to eql(200)
      end
    end
    context "Given a name" do
      it "returns a HTML code of 200." do
        expect(@ability_name.code).to eql(200)
      end
      it "returns the expected ability_name" do
        expect(@ability_name['id']).to eql(@id)
        expect(@ability_name).to have_key('name')
        expect(@ability_name).to have_key('generation')
        expect(@ability_name).to have_key('effect_changes')
        expect(@ability_name).to have_key('pokemon')
      end
    end
  end 

  describe "characteristic Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@characteristic.code).to eql(200)
      end
      it "returns the expected characteristic" do
        expect(@characteristic['id']).to eql(@id)
        expect(@characteristic).to have_key('gene_modulo')
        expect(@characteristic).to have_key('possible_values')
        expect(@characteristic).to have_key('descriptions')
      end
    end

    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("characteristic").code).to eql(200)
      end
    end
  end 

  describe "egg-group Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@egg_group.code).to eql(200)
      end
      it "returns the expected egg-group" do
        expect(@egg_group['id']).to eql(@id)
        expect(@egg_group).to have_key('name')        
        expect(@egg_group).to have_key('names')        
        expect(@egg_group).to have_key('pokemon_species')        
      end
    end
      context "Given a name" do
      it "returns a HTML code of 200." do
        expect(@egg_group_name.code).to eql(200)
      end
      it "returns the expected egg-group" do
        expect(@egg_group_name['id']).to eql(@id)
        expect(@egg_group_name).to have_key('name')        
        expect(@egg_group_name).to have_key('names')        
        expect(@egg_group_name).to have_key('pokemon_species')        
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("egg-group").code).to eql(200)
      end
    end
  end 

  describe "gender Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@gender.code).to eql(200)
      end
      it "returns the expected gender" do
        expect(@gender['id']).to eql(@id)
        expect(@gender).to have_key('name')
        expect(@gender).to have_key('pokemon_species_details')
        expect(@gender).to have_key('required_for_evolution')
      end
    end
    context "Given a name" do
      it "returns a HTML code of 200." do
        expect(@gender_name.code).to eql(200)
      end
      it "returns the expected gender_name" do
        expect(@gender_name['id']).to eql(@id)
        expect(@gender_name).to have_key('name')
        expect(@gender_name).to have_key('pokemon_species_details')
        expect(@gender_name).to have_key('required_for_evolution')
      end
    end

    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("gender").code).to eql(200)
      end
    end
  end

  describe "growth-rate Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@growth_rate.code).to eql(200)
      end
      it "returns the expected growth_rate" do
        expect(@growth_rate['id']).to eql(@id)
        expect(@growth_rate).to have_key('name')
        expect(@growth_rate).to have_key('descriptions')
        expect(@growth_rate).to have_key('levels')

      end
    end

    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@growth_rate_name.code).to eql(200)
      end
      it "returns the expected growth_rate_name" do
        expect(@growth_rate_name['id']).to eql(@id)
        expect(@growth_rate_name).to have_key('name')
        expect(@growth_rate_name).to have_key('descriptions')
        expect(@growth_rate_name).to have_key('levels')

      end
    end

    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("growth-rate").code).to eql(200)
      end
    end
  end

  describe "nature Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@nature.code).to eql(200)
      end
      it "returns the expected nature" do
        expect(@nature['id']).to eql(@id)
        expect(@nature).to have_key('name')
        expect(@nature).to have_key('hates_flavor')
        expect(@nature).to have_key('move_battle_style_preferences')

      end
    end
    context "Given a name" do
      it "returns a HTML code of 200." do
        expect(@nature_name.code).to eql(200)
      end
      it "returns the expected nature_name" do
        expect(@nature_name['id']).to eql(@id)
        expect(@nature_name).to have_key('name')
        expect(@nature_name).to have_key('hates_flavor')
        expect(@nature_name).to have_key('move_battle_style_preferences')

      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("nature").code).to eql(200)
      end
    end
  end

  describe "pokeathlon-stat Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@pokeathlon_stat.code).to eql(200)
      end
      it "returns the expected stats" do
        expect(@pokeathlon_stat['id']).to eql(@id)
        expect(@pokeathlon_stat).to have_key('name')
        expect(@pokeathlon_stat).to have_key('affecting_natures')
        expect(@pokeathlon_stat).to have_key('names')
      end
    end
    context "Given a name" do
      it "returns a HTML code of 200." do
        expect(@pokeathlon_stat_name.code).to eql(200)
      end
      it "returns the expected stats" do
        expect(@pokeathlon_stat_name['id']).to eql(@id)
        expect(@pokeathlon_stat_name).to have_key('name')
        expect(@pokeathlon_stat_name).to have_key('affecting_natures')
        expect(@pokeathlon_stat_name).to have_key('names')
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokeathlon-stat").code).to eql(200)
      end
    end
  end

  describe "pokemon-color Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@pokemon_color.code).to eql(200)
      end
      it "returns the expected color" do
        expect(@pokemon_color['id']).to eql(@id)
        expect(@pokemon_color).to have_key('name')
        expect(@pokemon_color).to have_key('names')
        expect(@pokemon_color).to have_key('pokemon_species')

      end
    end
    context "Given a name" do
      it "returns a HTML code of 200." do
        expect(@pokemon_color_name.code).to eql(200)
      end
      it "returns the expected color" do
        expect(@pokemon_color_name['id']).to eql(@id)
        expect(@pokemon_color_name).to have_key('name')
        expect(@pokemon_color_name).to have_key('names')
        expect(@pokemon_color_name).to have_key('pokemon_species')

      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokemon-color").code).to eql(200)
      end
    end
  end

  describe "pokemon-form Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of form." do
        expect(@pokemon_form.code).to eql(200)
      end
      it "returns the expected form" do
        expect(@pokemon_form['id']).to eql(@id)
        expect(@pokemon_form).to have_key('name')
        expect(@pokemon_form).to have_key('order')
        expect(@pokemon_form).to have_key('pokemon')

      end
    end
    context "Given a name" do
      it "returns a HTML code of form." do
        expect(@pokemon_form_name.code).to eql(200)
      end
      it "returns the expected form" do
        expect(@pokemon_form_name['id']).to eql(@id)
        expect(@pokemon_form_name).to have_key('name')
        expect(@pokemon_form_name).to have_key('order')
        expect(@pokemon_form_name).to have_key('pokemon')

      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokemon-form").code).to eql(200)
      end
    end
  end

  describe "pokemon-habitat" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@pokemon_habitat.code).to eql(200)
      end
      it "returns the expected habitat" do
        expect(@pokemon_habitat['id']).to eql(@id)
        expect(@pokemon_habitat).to have_key('name')
        expect(@pokemon_habitat).to have_key('names')
      end
    end
    context "Given a name " do
      it "returns a HTML code of 200." do
        expect(@pokemon_habitat_name.code).to eql(200)
      end
      it "returns the expected habitat" do
        expect(@pokemon_habitat_name['id']).to eql(@id)
        expect(@pokemon_habitat_name).to have_key('name')
        expect(@pokemon_habitat_name).to have_key('names')
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokemon-habitat").code).to eql(200)
      end
    end
  end

  describe "pokemon-shape Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@pokemon_shape.code).to eql(200)
      end
      it "returns the expected egg-group" do
        expect(@pokemon_shape['id']).to eql(@id)
        expect(@pokemon_shape).to have_key('name')
        expect(@pokemon_shape).to have_key('awesome_names')
        expect(@pokemon_shape).to have_key('pokemon_species')
      end
    end
    context "Given a name" do
      it "returns a HTML code of 200." do
        expect(@pokemon_shape_name.code).to eql(200)
      end
      it "returns the expected egg-group" do
        expect(@pokemon_shape_name['id']).to eql(@id)
        expect(@pokemon_shape_name).to have_key('name')
        expect(@pokemon_shape_name).to have_key('awesome_names')
        expect(@pokemon_shape_name).to have_key('pokemon_species')
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokemon-shape").code).to eql(200)
      end
    end
  end

  describe "pokemon-species Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@pokemon_species.code).to eql(200)
      end
      it "returns the expected species" do
        expect(@pokemon_species['id']).to eql(@id)
        expect(@pokemon_species).to have_key('name')
        expect(@pokemon_species).to have_key('is_baby')
        expect(@pokemon_species).to have_key('forms_switchable')
      end
    end
    context "Given a name" do
      it "returns a HTML code of 200." do
        expect(@pokemon_species_name.code).to eql(200)
      end
      it "returns the expected species" do
        expect(@pokemon_species_name['id']).to eql(@id)
        expect(@pokemon_species_name).to have_key('name')
        expect(@pokemon_species_name).to have_key('is_baby')
        expect(@pokemon_species_name).to have_key('forms_switchable')
      end
    end
    context "Given on ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("pokemon-species").code).to eql(200)
      end
    end
  end

  describe "stat Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@stat.code).to eql(200)
      end
      it "returns the expected stat" do
        expect(@stat['id']).to eql(@id)
        expect(@stat).to have_key('name')
        expect(@stat).to have_key('game_index')
        expect(@stat).to have_key('affecting_natures')
        expect(@stat).to have_key('characteristics')
        expect(@stat).to have_key('move_damage_class')
      end
    end
    context "Given a name" do
      it "returns a HTML code of 200." do
        expect(@stat_name.code).to eql(200)
      end
      it "returns the expected stat_name" do
        expect(@stat_name['id']).to eql(@id)
        expect(@stat_name).to have_key('name')
        expect(@stat_name).to have_key('game_index')
        expect(@stat_name).to have_key('affecting_natures')
        expect(@stat_name).to have_key('characteristics')
        expect(@stat_name).to have_key('move_damage_class')
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("stat").code).to eql(200)
      end
    end
  end


  describe "type Endpoint" do
    context "Given an ID" do
      it "returns a HTML code of 200." do
        expect(@type.code).to eql(200)
      end
      it "returns the expected egg-group" do
        expect(@type['id']).to eql(@id)
        expect(@type).to have_key('name')
        expect(@type).to have_key('game_indices')
        expect(@type).to have_key('move_damage_class')
      end
    end
    context "Given a name" do
      it "returns a HTML code of 200." do
        expect(@type.code).to eql(200)
      end
      it "returns the expected egg-group" do
        expect(@type['id']).to eql(@id)
        expect(@type).to have_key('name')
        expect(@type).to have_key('game_indices')
        expect(@type).to have_key('move_damage_class')
      end
    end
    context "Given no ID" do
      it "returns a HTML code of 200." do
        expect(Pokeapi.get_the_resource("type").code).to eql(200)
      end
    end
  end

end