https://public.tableau.com/profile/lauma2585#!/vizhome/TableauProject_Hotels/Story1?publish=yes


Steps & thought process to built the visualizations and Story in Tableau:

1. I first looked at the number of Preferred vs Non-preferred hotels per region:
    - I was able to indetify that the biggest number of hotels booked is in Europe, but the highest proportion of Preferred hotels is in Latin America; 
    - I included this data in the Story as it's quite representative for the company to analyse where their employees are travelling and what types of hotels they are booking
    
2. I added a map with points for cities with hotel bookings and number of hotels booked in each city visible with the tooltip:
    - I also added a calculated field to see if the city is Preferred or not, meaning that it's Preferred if at least one of the hotels booked in the city is preferred
    - I also added the size of the points relative to the spend received in each city
    
3. I looked of the total amount of hotel spend and nights per region:
    - This allowed to identify that Latin America has the highest spend, and Europe is 2nd
    
4. As Latin America has the highest spend, I decided to dig deeper to see where most of the spend is going.
    - I created further graph for top cities in Latin America and identified Sao Paulo as top 1 city
    - This information allows the client to see which cities they have to concentrate on when negotiating their preferred hotel rates
    
5. Then I looked at how the Average Booked rate by hotels booked in Sao Paulo:
    - I saw that most of the hotels booked have very few nights booked (less than 20) and really the top 1 hotel per nights is dominant in this city as by himself it accounts for more than 4500 nights
    - The Averaged Booked rate however has no correation to the number of nights booked (one could think that the more nights are booked, the lower the rate is); this is because the number of nights is not the only factor, we also have to look at the category of the hotel which this data set doesn't provide (it could be further exploration if this information could be added)
    - The dominant hotel in this city has Average Booked Rate at the high end of the rates in the city as the hotel tier is a upscale hotel

6. I also added a story point for top hotels in Sao Paulo and comparison between Average Booked Rates and Negotiated client rates:
    - This allows to see the difference between those rates and identify if the client has negotiated good rates with Preferred hotels
    - Also if Non-preferred hotel rates are lower, this allows question the current Preferred hotels and either negotiate lower rates, or replace them by Non-Preferred hotels offering lower rates
     
7. Then I also looked at the data from Chain perspective: 
    - I looked at top hotel chains by spend & night
    - And I looked at comparison between Average Booked Rates and Negotiated client rates same as for Sao Paulo top hotels
    - This can be used to reevaluate the partnership with preferred chains and those that don't have preferred contracts.
   