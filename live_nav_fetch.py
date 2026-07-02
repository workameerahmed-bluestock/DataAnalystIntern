import requests

url = "https://api.mfapi.in/mf/125497"

response = requests.get(url)

print("Status Code:", response.status_code)

if response.status_code == 200:
    data = response.json()
    print("Scheme Name:", data["meta"]["scheme_name"])