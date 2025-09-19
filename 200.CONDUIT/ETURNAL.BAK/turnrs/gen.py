import hmac
import hashlib
import base64
import time

# Configuration
secret = b"test"  # Matches static_auth_secret
realm = "turn.landingdev.xyz"  # Matches realm
username = f"{int(time.time())}:user1"
hmac_result = hmac.new(secret, username.encode(), hashlib.sha1).digest()
b64_hmac = base64.b64encode(hmac_result).decode()
password = hashlib.md5(f"{username}:{b64_hmac}:{realm}".encode()).hexdigest()

print("Ephemeral Credentials:")
print(f"Username: {username}")
print(f"Password: {password}")
print("TTL: 86400")  # Default 24-hour TTL
print("URIs:")
print(f"  turn:185.28.22.166:3478?transport=udp")
print(f"  turn:185.28.22.166:3478?transport=tcp")
print("\nExample curl command to test a TURN URI:")
print(f"curl -v -X POST -u {username}:{password} -H \"Content-Length: 0\" turn:185.28.22.166:3478?transport=udp")
