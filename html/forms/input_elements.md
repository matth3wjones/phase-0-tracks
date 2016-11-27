Input Elements:
type = text, name = fullname
  Allows user to input full name to the form
type = email, name = email address
  Allows user to input email
type = password
  Allows user to input password incognito using asterisks or
type = text, name = adv-name, placeholder = "name this adventure"
  Allows user to name adventure, places "name this adventure" in input space to prompt user
name = bike, select == $0 -
  Shows drop down menu for the user to select the type of bike they want to use
type = date, name = date == $0 -
  Drop down menu to enter the date
type = checkbox name = cb-agree value == $0 -
  this is a checkbox for the user to select if they agree to lead the adventure