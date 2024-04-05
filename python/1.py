import datetime
import time

def test():
    while(True):
        time.sleep(1)
        print(f'now {datetime.datetime.now()}')

if __name__ == '__main__' :
    test()