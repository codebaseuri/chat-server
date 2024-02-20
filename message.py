import socket
class user:
    def __init__(self):
        pass
class message:
    def __init__(self,reply):
        reply=reply.split(b",")
        self.length=reply[0]
        self.method=reply[1]
        self.username=reply[2]
        self.pasword=reply[3]
        self.friend=reply[4]
        self.text=reply[5]

