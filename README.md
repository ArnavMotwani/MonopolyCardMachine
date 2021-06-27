# MonopolyCardMachine
This app replaces the cards and card machine used in newer games of Monopoly. Works for upto 4 players.

## Installation
The app is a regular SwiftUI app. It uses no external packages. 
  1. First, clone the repository to your machine. 
  2. Open the Xcode project
  3. Change the Signing Team in the project settings under Signing & Capabilities
  4. Change the Bundle Identifier
  5. Build the project to your phone
  
## Usage
This app is designed for the UK version of the game (properties include Mayfair, Pall mall, Coventry, Kings Cross station, etc) but should also work with other versions. 

Note the amount each player starts with. In the game each user starts with 15 million, however the app only shows 15000. 
This was a small change that removes the unnecessary zeros at the end of the number.
Here are some example conversions:
* 15M -> 15000
* 8.5M -> 8500
* 100K -> 100

If you would like the app to show the values as in the game (for example 15M -> 15000000) just replace 15000 with 15000000 everywhere in the sourcecode

### Transactions

#### Payments (taxes, property purchases, etc)
1. Tap on the player who needs to pay, the calculator will be on subtract mode (button with person and minus symbol) by default. 
2. Enter the amount to be subtracted in the Amount field.
3. Then press "Update"

#### Adding money (getting money from chance for example)
1. Tap on the player who will be recieving the cash.
2. Switch the calculator to add mode (button with person and plus symbol)
3. Enter the amount to be added in the Amount field.
4. Then press "Update"

#### Direct transfers (rent payments)
1. Tap on the player who needs to pay another player.
2. Switch to direct transfer mode (button with two people)
3. Choose a color to transfer to.
4. Enter the amount
5. Then press "Update"

#### Community transfers (collecting money from multiple players at the same time)
1. Tap on the first player who needs to pay
2. Switch to community mode (button with three people)
3. Enter the amount
4. Press update
5. Repeat for each player who is paying
6. When everyone who needs to pay the community, has the done so, go back to the player list
7. Tap the community button
8. Choose who the cash goes to

#### Passing go
1. Tap on the player who passed or landed on GO
2. Then press "Pass Go"

### Checking past transactions
Open the History tab to see all past transactions in order. Note this history will get cleared if the app gets closed.

### Customization
Open the settings tab to change the players names and card numbers on the mode screen

### Reseting the app
Scroll down on the Home tab and press "Reset game" to reset the current savings of all players and to clear the history.
