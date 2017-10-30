# POKEAPI
##Task

We were tasked with testing an online api: <https://pokeapi.co/> and had to plan how to test the api.

As a group, we discussed how our Kanban board should be set out. The board consited of the following columns:

* Prioritise; 1 being high and 3 being low
* Execute
* Review
* Definition of done; has the code been peer reviewed and has it been indented properly, implementing DRY.

We then derived user stories which would assist us in creating our test cases/conditions, which were priortised from 1-3; 1 being the test which tests the most functional aspect of the API. Each member of the group took responsibilty on which user story they wanted to complete.

##Tasks undertaken by each member

####Chris 
I tested each endpoint in the pokemon resource to return the code 200 when given a valid ID.


####Martha
I tested each endpoint in Encounters, Evolution and Games to return the code 200 when given no ID or a valid ID

####Liam

####Luke
Luke created the get resource method which allowed tests on each spec checking that the request would work with only the resource name and doesn't need an ID.

####James
made tests for checking that list requests return code 200 and made tests to check each attribute also returns 200; okay. checked all end points to contain valid id data.

####Abass

* I tested each endpoint in the location/utility resources. Ensuring that its in JSON format and that it returns the 200 code when given a valid ID.

* I tested that given an id for the evolution, games and items resources it returns the correct data e.g. a name returns the correct name in a string etc.
>>>>>>> bb946a0f3022a717c78d92baaebe77ec3e051dd4
