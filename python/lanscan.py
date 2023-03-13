import ping3

def getPing(ip:str):
    index = ip.rsplit('.')[-1]
    print(index)

IP_BASE='192.168.8.'

for i in range(1,255):
    ip = IP_BASE + str(i)
    getPing(ip)