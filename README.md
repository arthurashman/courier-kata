# Courier Kata

## Description
This is a kata that implements a courier service, pricing parcels for shipping. 

[Getting started](#getting-started) | [Usage](#usage) | [Running tests](#running-tests) | [Criteria](#criteria) | [Approach](#approach) | [Next steps](#next-steps)

## Getting started

Fork or clone this repo:      
`git clone git@github.com:arthurashman/courier-kata.git`    
`gem install bundle`     
`bundle`     

## Usage
```
irb
load './lib/courier.rb'
load './lib/parcel.rb'
```

## Running tests

`rspec`

## Criteria
1) The initial implementation just needs to take into account a parcel's size. For each size
type there is a fixed delivery cost
- Small parcel: all dimensions < 10cm. Cost $3
- Medium parcel: all dimensions < 50cm. Cost $8
- Large parcel: all dimensions < 100cm. Cost $15
- XL parcel: any dimension >= 100cm. Cost $25
2) Thanks to logistics improvements we can deliver parcels faster. This means we can
charge more money. Speedy shipping can be selected by the user to take advantage of our
improvements.
- This doubles the cost of the entire order
- Speedy shipping should be listed as a separate item in the output, with its associated
cost
- Speedy shipping should not impact the price of individual parcels, i.e. their individual
cost should remain the same as it was before
3) There have been complaints from delivery drivers that people are taking advantage of our
dimension only shipping costs. A new weight limit has been added for each parcel type, over
which a charge per kg of weight applies
+$2/kg over weight limit for parcel size:
- Small parcel: 1kg
- Medium parcel: 3kg
- Large parcel: 6kg
- XL parcel: 10kg
4) Some of the extra weight charges for certain goods were excessive. A new parcel type
has been added to try and address overweight parcels
- Heavy parcel (limit 50kg), $50. +$1/kg over
5) In order to award those who send multiple parcels, special discounts have been
introduced.
- Small parcel mania! Every 4th small parcel in an order is free!
- Medium parcel mania! Every 3rd medium parcel in an order is free!
- Mixed parcel mania! Every 5th parcel in an order is free!
- Each parcel can only be used in a discount once
- Within each discount, the cheapest parcel is the free one
- The combination of discounts which saves the most money should be selected every
time

Example:
6x medium parcel. 3 x $8, 3x $10. 1st discount should include all 3 $8 parcels and save $8.
2nd discount should include all 3 $10 parcels and save $10.
- Just like speedy shipping, discounts should be listed as a separate item in the output,
with associated saving, e.g. "-2"
- Discounts should not impact the price of individual parcels, i.e. their individual cost
should remain the same as it was before
- Speedy shipping applies after discounts are taken into account

## Approach
I approached this challenge test first, using ruby and RSpec. 
1. I started by considering what objects I would anticipate for the initial implememntation, deciding on a Parcel class that would know about its own dimensions and know its size. There would be a Courier class that when passed a Parcel would be able to calculate the price dependent on the size.
2. For speedy shipping, I extended the Courier class to have a know if the customer had selected speedy. Because the reciept was to be itemised, I also created a print price method to format the shipping costs as subtotal, speedy shipping cost and total cost. 
3. For weight restrictions, I extended the parcel info constant to include weight maximums for each parcel size. An overweight method calculated by how many kilos(rounded up) the parcel was over the weight restriction by - a variable that would be held by the parcel object.

## Next steps
As I was having some trouble implementing the calculating of the overweight fees by the courier class, I would consider moving the calculating of how many kilos overweight the package was to the courier. 
I would add the itemised overweight fees to the reciept.
I would add the item type to the reciept (having re-read the instructions)

4. I had some questions around this 'heavy' category, which given the chance I would have spoken to a product owner about, however, I would work on the assumption that heavy parcels would be categorised as heavy on the reciept, and charged as overweight up to a cap of £50. I would have the parcel categorise itself as 'heavy' if over its size category weight limit, with the courier class capping cost at $50 if under 50kg, and adding additional weight charges when over 50kg. All of this would be represented in the reciept

5. To consider this new multibuy feature, I would look at passing an array of parcel objects to the courier class rather than to the calculate price method, modifying the calculate price method appropriately to iterate through the array, and construct a hash to represent each parcel with its details and fees and discounts.
