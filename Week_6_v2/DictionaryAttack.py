#!/usr/bin/python3 
      
import hashlib
      
#hidden password hash 
      
passwordHash = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855  -" 
      
#open the wordlist 
      
with open("wordlist.txt", "r") as wordlist: 
      
#repeat for each word 
      
    for word in wordlist.readlines(): 
        word = word.rstrip() 
      
        #hash the word 
      
        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest() 
      
        print(f"Trying password {word}:{wordlistHash}") 
      
        #if the hash is the same as the correct password's hash then we have cracked the password! 
      
        if(wordlistHash == passwordHash): 
      
            print(f"Password has been cracked! It was {word}")  
            break 
     