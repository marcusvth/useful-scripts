import clipboard, re
phone = clipboard.paste()
filtered_chars = re.findall(r'[\d|+]', phone)
phone = ''.join(filtered_chars).lstrip('0')
clipboard.copy(phone)