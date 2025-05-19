# Required modules
#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#cryptography command in terminal is:
# pip install cryptography
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# Required Libraries
#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
import requests
import pandas as pd
import mysql.connector as mysql
import sqlalchemy
from sqlalchemy import create_engine
from pyproj import Transformer
#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# The code below is used login to sql database and extract the data from the table company and store it in a pandas dataframe.
#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
con_string = 'mysql+pymysql://root:Super820@localhost/companies2'

engine = create_engine(con_string)

postcode = """
SELECT zip_code FROM company;
"""

house_number = """
SELECT house_number FROM company;
"""

read_sql_postcode = pd.read_sql(postcode, engine).head(5)

read_sql_house_number = pd.read_sql(house_number, engine).head(5)
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# The code below will convert the dutch coordinates system (RD) to WGS84 coordinates (latitude and longitude).
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
transformer = Transformer.from_crs("epsg:28992", "epsg:4326")
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------




buidling_info_list = [] # Just an empty list to store the data retrieved from the API.

# The code below will loop through the list of postcodes and house numbers and make a request to the API for each postcode and house number combination.
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
for postcode, house_number in zip(read_sql_postcode["zip_code"], read_sql_house_number["house_number"]):
    
    
    bag_url = f"https://api.bag.kadaster.nl/lvbag/individuelebevragingen/v2/adressenuitgebreid?postcode={postcode}&huisnummer={house_number}"
    api_key = "l792034ac713a54d6d9a669ff7aa83671d"
    headers = {"X-Api-Key": api_key,
               "Accept-Crs": "epsg:28992"}

    response = requests.get(bag_url, headers=headers)

    
    if response.status_code == 200:

        response = response.json()
        surface_area = response['_embedded']['adressen'][0].get("oppervlakte", "Unknown")
        coordinates_rd = response['_embedded']['adressen'][0]["adresseerbaarObjectGeometrie"]["punt"].get("coordinates", "Unknown")
        longitude, latitude = transformer.transform(coordinates_rd[0], coordinates_rd[1])
        buidling_info_list.append({"postcode": postcode, "house_number": house_number, "surface_area": surface_area, "longitude": longitude, "latitude": latitude})

    else :

        print(response, "Bad request")
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



# The code below will create a pandas dataframe from the list of dictionaries and save it to a csv file.
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
buidling_info_pd = pd.DataFrame(buidling_info_list)
buidling_info_pd.to_csv("buidling_info.csv", index=False)
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------