import jwt
import time

api_key = "APIjzYc2uVaQpV7"
api_secret = "bCogvMuTNxKXAMpMDkIGdsCfoMa8NQTfplFBk6ieSXqA"
payload = {
    "iss": api_key,
    "sub": "api_user",
    "aud": "livekit",
    "exp": int(time.time()) + 3600,  # 1 hour from now
    "nbf": int(time.time()),
    "video": {"roomList": True}
}
token = jwt.encode(payload, api_secret, algorithm="HS256")
print(f"Bearer {token}")
