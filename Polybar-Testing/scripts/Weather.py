
import requests


CITY = "5308655"
API_KEY = "1772961a1406307e819497a0a4a8f5d0"
UNITS = "Metric"
UNIT_KEY = "C"



#REQ = requests.get("http://api.openweathermap.org/data/2.5/weather?id={}&appid={}&units={}".format(CITY, API_KEY))

# url = ('http://api.openweathermap.org/data/2.5/weather?q={}&units={}&appid={}').format(city, units, api_key)


REQ = requests.get("http://api.openweathermap.org/data/2.5/weather?id={}&appid={}&units={}".format(CITY, API_KEY, UNITS))


try:
    if REQ.status_code == 200:
        CURRENT = REQ.json()["weather"][0]["description"].capitalize()
        TEMP = int(float(REQ.json()["main"]["temp"]))
        print("{}, °{} {}".format(CURRENT, TEMP, UNIT_KEY))
    else:
        print("Error: BAD HTTP STATUS CODE " + str(REQ.status_code))
except (ValueError, IOError):
    print("Error: Unable print the data")


