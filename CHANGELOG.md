## 3.0.1

### Bug fixes

* Corrected country detection when parsing phone numbers.
* Update constraints to Flutter 3.32
* Update constraints to Dart 3.8

## 3.0.0

### BREAKING CHANGES

* Using [`phone_numbers_parser`](https://pub.dev/packages/phone_numbers_parser) instead of `phone_number` package
  * Now isn't required setup dependency on iOS and Android

### Features

* Update constraints to Flutter 3.29
* Update constraints to Dart 3.7
* Update `flutter_form_builder` to 10.x.x. Take a look breaking changes on [there changelog](https://pub.dev/packages/flutter_form_builder/changelog)
* Expose `fullNumber` of field state. Thanks to [wheeOs](https://github.com/wheeOs)
* Setup example with all platforms

## [2.0.1]

* Update readme

## [2.0.0]

### BREAKING CHANGES

* Update constraints to Flutter 3.10
* Update constraints to Dart 3
* Compile with Android SDK 33
* Update `flutter_form_builder` to 9.x.x. Take a look breaking changes on [there changelog](https://pub.dev/packages/flutter_form_builder/changelog#900)

### Features

* Update to use phone_number 2.0.0

## [1.4.0]

### Bug fixes

* Reset field value when call form reset
* Update field value by formKey when call patchValue

### Features

* **NEW** Add property `countryPicker` that allow a custom  country picker widget
* **NEW** Add property `searchEmptyView`
* Parse international code by iso code instead
* Update `flutter_form_builder` to 8.0.0

## [1.3.0]

* Apply license BSD-3-clause
* Refactor readme

## [1.2.0]

* Move repository
* Update dependencies

## [1.1.0]

* Added property iconSelector

## [1.0.0]

* Added web support

## [1.0.0-beta.0]

* Compatibility with `flutter_form_builder` ^7.*

## [0.3.0]

* Compatibility with `flutter_form_builder` ^6.*
* **BREAKING CHANGES:** Upgrade to `phone_number` v0.12.0

## [0.2.0]

* Flutter 2 compatibility

## [0.1.0]

* Initial release.
