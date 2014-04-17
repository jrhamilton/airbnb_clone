==Airbnb clone
Authors: Elikem Adadevoh and Kelly Becker
Objective:  Create an AirBnB clone
Development:  Ruby, Rails, Devise, PSQL, AJAX, FactoryGirl, Capybara, Geocoder, Array#sample, Paperclip, ActionMailer/MailCatcher, Kaminari, Textacular

* [DONE] As a user, I want to securely login (Devise) and manage my profile.
* [DONE] Change sign up requirement from email to username.
* [DONE] Create a factory for user creation (Factory Girl).
* [DONE] As a user, I want to receive email for various event triggers.

* New table for addresses (boolean:validated).
* Textacular searches just this address table.
* Geocoder takes address form and adds more data (after save).

* As a user, I want to add listings for rent.
  -including Paperclip image
* Show all listings.
  -use Kaminari
* As a renter, I want to find listings to rent by location.
  -use Textacular
* As a renter, I want to see availability for a property.


Future considerations
* Username should not accept spaces
before_create :validate_username
  def validate_username
    if self.username.match(" ")
      flash[:alert] = "No spaces allowed."
      # DO NOT SAVE
    end
  end
