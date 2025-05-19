
# Required Libraries
#----------------------------------------------------------------------------------------------------------------
import folium as fo
import pandas as pd
import mysql.connector as mysql
import sqlalchemy
from sqlalchemy import create_engine
from folium import IFrame
#----------------------------------------------------------------------------------------------------------------


# The code below is used login to sql database and extract the name of company from the table company and converts it into a pandas dataframe.
#--------------------------------------------------------------------------------------------------------------------------------
con_string = 'mysql+pymysql://root:Super820@localhost/companies2'
engine = create_engine(con_string)

company_name_sql_query = """ SELECT name FROM company;"""
company_name = pd.read_sql(company_name_sql_query, engine)
#--------------------------------------------------------------------------------------------------------------------------------


# The code below will read the CSV file
#--------------------------------------------------------------------------------------------------------------------------------
locations = pd.read_csv(r"C:\Users\abelr\OneDrive\Desktop\School shit\DBMS - Project\Bedrijventerreinen CvV\coordinates\locations.csv")  
building_info = pd.read_csv(r"C:\Users\abelr\OneDrive\Desktop\School shit\DBMS - Project\Bedrijventerreinen CvV\buidling_info.csv")
#--------------------------------------------------------------------------------------------------------------------------------


# The code below stores the coordinates of Alkmaar in a variable and creates a map object with the coordinates of Alkmaar as the center.
#--------------------------------------------------------------------------------------------------------------------------------
alkmaar = [52.63167, 4.74861]
my_map = fo.Map(location= alkmaar, zoom_start=12)
#--------------------------------------------------------------------------------------------------------------------------------


# The code below will loop through the dataframe and extract the coordinates of the business park and add it to the map.
# The first for loop will iterate and store the name and coordinates of the business park seprately.
# The second for loop will iterate through the coordinates and convert it into a tuple of latitude and longitude.
#---------------------------------------------------------------------------------------------------------------------------------
for name, coordinates in zip(locations["name"], locations["coordinates"]):
    name = name
    coordinates = coordinates.split()  

    business_park_coordinates = [] # Just an empty list to store the coordinates of the business park.
    for coord in coordinates:
        lon, lat, *_ = map(float, coord.split(','))  
        business_park_coordinates.append((lat, lon))

    
    fo.Polygon(locations=business_park_coordinates, color= "black",tooltip=name).add_to(my_map)
#---------------------------------------------------------------------------------------------------------------------------------







# The code below will loop through the dataframe and extract the coordinates of the building and add it to the map.
#-------------------------------------------------------------------------------------------------------------------------------------
for lon, lat, name, (_, row) in zip(building_info["longitude"], building_info["latitude"], company_name["name"], building_info.iterrows()):

    row_html = row.to_frame().T.to_html(index=False, classes="table table-striped table-hover table-condensed table-responsive")

    popup_html = f"<b>{name}</b><br>{row_html}"

    iframe = IFrame(popup_html, width=400, height=180)

    popup = fo.Popup(iframe, max_width=400)

    fo.Marker(
        location=[lon, lat],
        popup=popup,
        icon=fo.Icon(color='blue', icon='info-sign')
        ).add_to(my_map)
#-------------------------------------------------------------------------------------------------------------------------------------


my_map.save("Map.html") # This will save the map as an HTML file.