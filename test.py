import requests
student = requests.get('https://reg.serveo.net/notpay')
# print(student.json())
for i in student.json():
    print(i['ID'] == 58020200)
#     if i['ID'] == "58020200":
#         print(i['ID'])