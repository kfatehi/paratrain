PARROT ASSISTED TRAINING
---

0. Purchase Paratrain from the Apple App Store
0. Open the app and create a profile for your parrot
0. Put your iphone in a durable case and put it near the bird
0. Place activator buttons around for your bird. (e.g. on toys, or embedded in iphone case)
 
Buttons are optional and are mostly an experimental enhancement to the default algorithm.

## Functionality Summary:

    The app will collect words it "hears".
    When it hears a new word, it will verify that it's a word by checking siri.
      if siri is gave a low confidence match
        forget word
      else
        if new word (no match in db for this word string)
          insert new word
        else
          repeat word