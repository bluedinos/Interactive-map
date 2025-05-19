
# Required Libraries
#----------------------------------------------------------------------------------------------------------------
from pykml import parser
from lxml import etree
import pandas as pd
#----------------------------------------------------------------------------------------------------------------

# The code below will read the KML file and structure it into python object.
#----------------------------------------------------------------------------------------------------------------
with open(r'C:\Users\abelr\OneDrive\Desktop\School shit\DBMS - Project\Bedrijventerreinen CvV\coordinates\business_park.kml', 'rb') as file:
    business_park_coord = parser.fromstring(file.read())
#----------------------------------------------------------------------------------------------------------------


extracted_business_park_data = [] # Just an empty list to store the data retrieved from the KML file.


# The code below will extract and store the coordinates and name of the business park from the KML file.
#----------------------------------------------------------------------------------------------------------------
for x in business_park_coord.Document.Folder.Placemark:
    coordinates = x.Polygon.outerBoundaryIs.LinearRing.coordinates.text.strip()
    name = x.name.text.strip()
    extracted_business_park_data.append({'name': name, 'coordinates': coordinates})
#----------------------------------------------------------------------------------------------------------------


# The code below will convert the extracted data into a pandas dataframe and save it as a CSV file.
#----------------------------------------------------------------------------------------------------------------
business_park = pd.DataFrame(extracted_business_park_data)
business_park.to_csv('business_park.csv', index=False)
#----------------------------------------------------------------------------------------------------------------
