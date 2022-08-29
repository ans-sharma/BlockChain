import hashlib
import random
import base64

val = "Anshuman"
difficulty = int(input("Enter Difficulty: "))   

while True:
    nonce = str(random.randint(0,10**100))
    new = nonce + val
    hsh = hashlib.sha256(base64.b64encode(new.encode('utf-8'))).hexdigest()
    print(hsh)

    if hsh[:difficulty] == '0'*difficulty:
        print('nonce value : ',nonce)
        exit()