import hmac
import hashlib
import time
import base64

secret = "bCogvMuTNxKXAMpMDkIGdsCfoMa8NQTfplFBk6ieSXqA"
username = "example_user"
ttl = 86400  # 24 hours
timestamp = int(time.time()) + ttl
turn_username = f"{timestamp}:{username}"
credential = base64.b64encode(hmac.new(secret.encode(), turn_username.encode(), hashlib.sha1).digest()).decode()

print("TURN Username:", turn_username)
print("TURN Credential:", credential)
