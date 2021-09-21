import requests, json, clipboard
userInput = input('Digite o hostname ou o serial do dispositivo Lenovo: ')
requestUrl = 'https://pcsupport.lenovo.com/us/en/api/v4/mse/getproducts?productId='
response = requests.get(f'https://pcsupport.lenovo.com/us/en/api/v4/mse/getproducts?productId={userInput[-8:]}')
deviceInfo = json.loads(response.text)
hostname = userInput if len(userInput) > 8 else ''
deviceName = f"Lenovo {deviceInfo[0]['Name']}"
serial = deviceInfo[0]['Serial']
ticketData = f'Device Information:\n\n● Hostname: {hostname}\n● S/N: {serial}\n● Device: {deviceName}'
clipboard.copy(ticketData)
print(ticketData)
input('Pressione qualquer tecla para continuar...')