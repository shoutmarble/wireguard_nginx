import jwt
import time

api_key = "APIjzYc2uVaQpV7"
api_secret = "bCogvMuTNxKXAMpMDkIGdsCfoMa8NQTfplFBk6ieSXqA"
payload = {
    "iss": api_key,
    "sub": "@terry:landingdev.xyz",
    "aud": "token-provider",
    "exp": int(time.time()) + 3600,
    "nbf": int(time.time()),
    "video": {
        "room": "test-room",
        "roomJoin": True,
        "canPublish": True,
        "canSubscribe": True
    }
}
token = jwt.encode(payload, api_secret, algorithm="HS256")
print(f"export jwt_token={token}")
