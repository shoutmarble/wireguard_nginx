import hmac
import hashlib
import base64
import time

ttl = 86400  # 1 day
timestamp = int(time.time()) + ttl
username = f"{timestamp}:test"
secret = "pa0ysMKGkzuAccz4wQHHxsAPNnMDgXpFeiQYmVn9bzQ="
secret_bytes = base64.b64decode(secret)
password = base64.b64encode(hmac.new(secret_bytes, username.encode(), hashlib.sha1).digest()).decode()

print(f"Username: {username}")
print(f"Password: {password}")
print(f"URI: turn:185.28.22.166:3478?transport=udp")
