import csv

# function that reads in air quality data
# and returns a dictionary of average air quality 
def make_avg_pm2_dictionary():
  avg_pm2 = {}

  with open('air_data.tsv') as airData:
    air = csv.reader(airData, delimiter="\t")
    next(air)                   # Skip table header
    for line in air:            # loop through each line of the air data

      if line[0] in avg_pm2:
        avg_pm2[line[0]].append(line[6])
        
      else:
        avg_pm2[line[0]] = [line[6]]

    for country in avg_pm2:
      accumulator = 0
      for value in avg_pm2[country]:
        accumulator += float(value)  
      avg_pm2[country] = (accumulator / len(avg_pm2[country]))

  return avg_pm2

# function that takes a dictionary of air quality for each country (aqd)
# and returns a dictionary with the population and air quality for each country
# if that country has air quality data
def add_cia_population_data(aqd):
  combinedData = {}  
  populationData = {}

  with open('cia_population.tsv') as popData:
    pop = csv.reader(popData, delimiter="\t")
    # loop through aqd and check for a corresponding key in the 
    # population file
    for line in pop:
      populationData[line[1]] = line[2]

  for country in aqd:
    if(populationData.get(country)):
      combinedData[country] = [
         aqd[country],
         populationData[country]  
      ] 

  return combinedData

# print out country name, population, and  pm2 values
# that exceed the WHO's threshold (in ug/m3) for 1 year 
# pm2 levels that increase long-term mortality risk by 15% from figure 1

def print_exceed_threshold(data,threshold):
  ordered = sorted(data)

  for country in ordered:
    if(data[country][0]>threshold):
      print(
        country+" "*(27-len(country))+
        (str(data[country][1]))+" "*(15-len(str(data[country][1])))+
        (str(data[country][0]))
        
      )

#
# call all the functions
#
def main():
    # Build dictionary from air quality file
    avg_pm2 = make_avg_pm2_dictionary()

    # Read in cia population and create a dictionary
    # with population and average pm2 data for each country
    country_data = add_cia_population_data(avg_pm2)

    # print countries with air quality
    # exceeding WHO's guidelines
    print_exceed_threshold(country_data,35)

#
#run the analysis
#
main()
