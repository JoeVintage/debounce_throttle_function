<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## About

CommonStreamUtils extends the capabilities of Dart Streams and RxDart.

Dart comes with decent and powerful Streams API out-of-the-box,but they are clumsy to implement some features like:debounce、throttle

Now you can use it easily and gracefully in just one line of code!

Please click the thumb up button, Let's Make Flutter Easy Again!

## Getting started

Easy To Use,Graceful To Use! 

## Features

|  Function   | Purpose  |
|  ----  | ----  |
| Throttle  | 	Wait for changes to stop before notifying. |
| Debounce  | 	Notifies once per Duration for a value that keeps changing. |

## Usage

For Example: throttle user button click down to 1000milliseconds(1 click per second)

```dart
                  onPressed: () {
CommonStreamUtils.throttleFunction(() {
InviteDialog().showInviteBottomSheet(
context,
memberMainPageLogic.memberShipLevel.value,
inviteDialogLogic);
},milliseconds: 1000);
},
```

For Example: debounce user button click down to 1000milliseconds(1 click per second)

```dart
                  onPressed: () {
CommonStreamUtils.debounceFunction(() {
InviteDialog().showInviteBottomSheet(
context,
memberMainPageLogic.memberShipLevel.value,
inviteDialogLogic);
},milliseconds: 1000);
},
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
