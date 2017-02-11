## Mission#2
Hi **001**,

During intercepting the messages between the targets we have identified a CSV file which we assume is one of the most valuable data intercepted since the start of the program; It lists the name, nationality and current_location of the spies hired by the targets. 

The csv file has three columns `name` ,  `nationality` , ` current_location`

You need to parse this CSV file and then map the spies to the following lists: 

* **defence_intelligence**: Has all spies that their current location is Egypt
* **military_intelligence**: Has all spies that their nationality is Egyptian
* **airport_security**: Has all spies that are neither Egyptian nor their current_location is Egypt


### Prerequisites

* You know the following skills:
  * How to create a Ruby script. 
  * How to read a CSV file in Ruby.
  * How to use conditionals in Ruby.
  * How to initiate an Array and add objects to it.

 
### Task

Download the CSV from this link [github] and then create a ruby script to read the CSV and map the data of the spies to three arrays as mentioned in the mission.

Sample Output: 

`defence_intelligence count: 33`

`military_intelligence count: 33`

`airport_security count: 34`