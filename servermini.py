import socket
import threading
import  message
database={"uri":3875}

def login(username,password):
    if not username in database:
        return "userinvalid"
    elif database[username]!=password:
        return "userinvalid"
    else:
        return "login success"
def signup(username,password):
    database[username]=password

def handleclient(cleint):
    var=cleint.recv(10000)
    text=message(var)
   # if text.method==b"signup":
     #   signup(text.username,text.password)
      #  cleint.send("signup succsess".encode())
   # else:
     #   cleint.send("nigger".encode())
    cleint.send("penis".encode())



def main():

    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.bind(('0.0.0.0', 1089))
        s.listen(5)
        global exit_all
        threads = []
        tid = 1
        while True:
            try:
                # print('\nbefore accept')
                client_socket, addr = s.accept()
                t = threading.Thread(target=handleclient, args=[client_socket])
                t.start()
                threads.append(t)
                tid += 1

            except socket.error as err:
                print('socket error', err)
                break
        exit_all = True
        for t in threads:
            t.join()

        print('server will die now')

if __name__ == '__main__':
    main()
