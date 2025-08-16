import hmac
import hashlib
import base64
import time

# Username is a UNIX timestamp (valid for a short period, e.g., 24 hours)
username = str(int(time.time() + 86400))  # Valid for 24 hours
secret = "WK9z8fqsUXYcdNVtcvIHIIk4LPxexk0EVDz27cAhS4hTWVcYarpzHSaMUzqu8CA2"
# Generate HMAC-SHA1 password
password = base64.b64encode(
    hmac.new(secret.encode(), username.encode(), hashlib.sha1).digest()
).decode()
print(f"Username: {username}")
print(f"Password: {password}")
