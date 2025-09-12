import jwt
import time

# LiveKit API credentials
API_KEY = "Nm7MFqEdn7dEkLW"
API_SECRET = "cpCc17rcrz9TpfG7b0xD2ImsPAMF2P8GP3aqBqlsNLNG"

# Participant details
PARTICIPANT_IDENTITY = "test-user"
ROOM_NAME = "test-room"

# Token expiration (1 hour from now)
EXPIRY = int(time.time()) + 3600

# Generate JWT token
def generate_turn_credentials():
    payload = {
        "exp": EXPIRY,
        "iss": API_KEY,
        "sub": PARTICIPANT_IDENTITY,
        "name": PARTICIPANT_IDENTITY,
        "video": {
            "roomJoin": True,
            "room": ROOM_NAME,
            "canPublish": True,
            "canSubscribe": True,
        }
    }
    
    token = jwt.encode(payload, API_SECRET, algorithm="HS256")
    return {
        "username": PARTICIPANT_IDENTITY,
        "credential": token
    }

# Generate and print credentials
if __name__ == "__main__":
    credentials = generate_turn_credentials()
    print("TURN Server: turn:turn.landingdev.xyz:3478?transport=udp")
    print(f"Username: {credentials['username']}")
    print(f"Credential (JWT): {credentials['credential']}")
