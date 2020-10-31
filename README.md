# Flutter Redux Demo

Demo on how to implement the Redux pattern in a Flutter app.

<img src="https://github.com/finkmoritz/flutter-redux-demo/blob/master/preview.png" alt="Preview" width="200"/>

## Description
This demo app uses the [flutter_redux](https://pub.dev/packages/flutter_redux) plugin.
The application's state (`AppState`) containing the list of available items and the list
of items in the shopping cart are stored within a central `Store`. The respective widgets
access this state via `StoreConnector`. Adding/Removing an item to/from the shopping cart
sends an action to this `Store` which alters its state and in turn distributes the new `AppState`
to all consuming widgets.

## Build & Run
Install [Flutter](https://flutter.dev) and execute `flutter run` in the root directory of this project.
