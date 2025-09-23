from livekit import api

token = (
    api.AccessToken(api_key="APIjzYc2uVaQpV7", api_secret="bCogvMuTNxKXAMpMDkIGdsCfoMa8NQTfplFBk6ieSXqA")
    .with_grants(api.VideoGrants(room_list=True, room_create=True))
    .to_jwt()
)

print("Authorization: Bearer", token)   
