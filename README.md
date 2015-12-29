# Pre-work - *Tip Calculator*

**Tips** is a tip calculator application for iOS.

Submitted by: **Josh Gebbeken**

Time spent: **17** hours spent in total

## User Stories

The following **required** functionality is complete:
* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [x] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Added AppIcons to application instead of using default no icon ones
- [x] Loading splash screen that says loading with tip calculator logo instead of user seeing a white screen on loading.
- [x] The animation transitions between view controllers uses a custom animation and navigation delegate classes.


---
## Video Walkthrough 

Here's a walkthrough of implemented user stories:


Updated view:

![alt tag](https://cloud.githubusercontent.com/assets/14221032/12031838/9ea658e0-adce-11e5-9ca0-5fe94c146fa0.gif)



---

Old view:

![alt tag](https://cloud.githubusercontent.com/assets/14221032/11711196/e8bc4a4e-9ee1-11e5-94c0-5c56a0114f27.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

Any issues I had was learning how to save things using NSUserDefaults and custom animations. I was trying to do my own segue class, but loading the view controllers multiple times would prevent the user from clicking on the button again to the next view controller. With this custom animation class, I don't have to worry about any custom segue nor creating an unwind one.

## License

    Copyright [2015] Josh Gebbeken]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
