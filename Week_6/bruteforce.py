#!/usr/bin/python3

# Found additional libraries:
# # https://pythonrepo.com/tag/brute-force 
import hashlib      # from example
import itertools    # additional for combos
import string       # string library

# Hidden password hash for blah.
passwordHash = "8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"   # Hash for blah 

# Space words and list characters and numbers
characterList = string.ascii_lowercase + string.ascii_uppercase + "0123456789"
wordSpace = ""

# To cut down processing time input range as 4. Can increase when password hash is not known.
for wordLength in range(4):

    # Itertools.product combines characters from "characterList", for the length
       for wordTuple in itertools.product(characterList,repeat=wordLength + 1):

        # Join wordTuple elements together using the .join
        word = wordSpace.join(wordTuple)

        # Display password against hash.
        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
        print("Trying password %s: %s" % (word,wordlistHash))   

        # Condition for cracking password. 
        if(wordlistHash == passwordHash):
            print(f"Password has been cracked! It was {word}")
            exit()
# Password has no tbeen cracked. Didn't do else condition as too much text in CLI.
print("Password has NOT been cracked. Entropy is strong!!!")
