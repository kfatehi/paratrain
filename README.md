Paratrain
---

0. Purchase Paratrain from the Apple App Store
1. Make sure you're connected to wifi and have a lot of battery
0. Open the app and create a profile for the learner
0. Setup some options in the the profile and enable the algorithm
0. Ensure the iphone and the learner are within earshot of each other.
1. Optionally set up a 2nd screen to provide visual data for the learner (See the API by version 1)
2. Optionally place wireless nodes around for the learner to activate. Custom-configuration possible. (See the API by version 2)
2. Optionally enable camera and the "Paratrainer" for strategies of increased awareness between learner and AI (See the API by version 3)
    * The paratrainer avatar can be invoked remotely by you (See facially emotive API by version 4)

I don't expect anything like Version 4 for at least another 3 years.

I intend to complete Version 1 by the end of June. The rest is futurestory, or as I like to call them, user stories...

## Paratrain AI Subsystems

# System 1 Listening Mode

System 1 can be toggled on or off. It's Paratrain's "Listening Mode". This is how it affects Paratrain's behavior:

    It collect words the that it "hears".
    When it hears a new word, it will verify that it's a word by converting the audio to text.
      consider the confidence of the conversion
      unconfident? then forget it
      confident? then do this:
        consider whether we've heard this word before
        we have?
          take note that we just heard this word again.
          store this unique utterance (Word has_many Utterances)
        we haven't?
          fetch media for the word (definitions, thesaurus, audio, images, video)
          store all this in the database
        Check if System 2 is enabled, if so, notify it that we've just now heard this word [id] for the [count] time
      not sure?
        store it in the app, let the user choose to:
          * listen to the sample
          * convert it to text manually and save with that audio
          * adjust the confidence threshold

System 1 will start to be implemented once [#6](https://github.com/keyvanfatehi/paratrain/issues/6) is complete.

## System 2 Learning Mode
Responsible for matters related to the exposure of the iphone's existence to the learner.

### Engagement
Engagement controls if and how the iphone speaks to nearby listeners
There are several aspects of engagement exposed by System 2
 * persistence 0-100
 * aggression 0-100
 * boredom 0-100
 * rewards
 * content


## Second Screen

If a second screen is available (Apple TV), the **Visual Association Toggle** becomes available. It works like this:

#### VAT:System 1

    As someone learning a language
    When my artificial intelligence hears a word
    In order that I be more likely to learn the word
    I prefer an associative visual element appear onscreen
    
#### VAT:System 2 
   
    As someone learning a language
    When I am engaged by my artificial intelligence
    In order that I be more likely to learn the word
    I prefer an associative visual element appear onscreen
