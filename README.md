# Form Builder Phone Field

[![Pub Version](https://img.shields.io/pub/v/form_builder_phone_field?logo=flutter&style=for-the-badge)](https://pub.dev/packages/form_builder_phone_field)
[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/flutter-form-builder-ecosystem/form_builder_phone_field/Base?logo=github&style=for-the-badge)](https://github.com/flutter-form-builder-ecosystem/form_builder_phone_field/actions/workflows/base.yaml)
[![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/flutter-form-builder-ecosystem/form_builder_phone_field?logo=codefactor&style=for-the-badge)](https://www.codefactor.io/repository/github/flutter-form-builder-ecosystem/form_builder_phone_field)
[![Codecov](https://img.shields.io/codecov/c/github/flutter-form-builder-ecosystem/form_builder_phone_field?logo=codecov&style=for-the-badge)](https://codecov.io/gh/flutter-form-builder-ecosystem/form_builder_phone_field/)

International phone number field for [flutter_form_builder](https://pub.dev/packages/flutter_form_builder) package.
___

- [Features](#features)
- [Use](#use)
    - [Setup](#setup)
    - [Basic use](#basic-use)
- [Support](#support)
    - [Contribute](#contribute)
    - [Questions and answers](#questions-and-answers)
    - [Donations](#donations)
- [Roadmap](#roadmap)
- [Ecosystem](#ecosystem)
- [Thanks to](#thanks-to)
    - [Contributors](#contributors)

## Features

- Country selector
- Automatic parsing international number 

## Usage

### Setup

No especific setup required: only install the dependency and use :)

### Basic use

```dart
FormBuilderPhoneField(
  name: 'phone_number',
  decoration: const InputDecoration(
    labelText: 'Phone Number',
    hintText: 'Hint',
  ),
  priorityListByIsoCode: ['KE'],
  validator: FormBuilderValidators.compose([
    FormBuilderValidators.required(context),
  ]),
),
```
See [pud.dev example tab](https://pub.dev/packages/form_builder_phone_field/example) or [github code](example/lib/main.dart) for more details

## Support

### Contribute

You have some ways to contribute to this packages

 - Beginner: Reporting bugs or request new features
 - Intermediate: Implement new features (from issues or not) and created pull requests
 - Advanced: Join the [organization](#ecosystem) like a member and help coding, manage issues, dicuss new features and other things

 See [contribution guide](https://github.com/flutter-form-builder-ecosystem/.github/blob/main/CONTRIBUTING.md) for more details

### Questions and answers

You can question or search answers on [Github discussion](https://github.com/flutter-form-builder-ecosystem/form_builder_phone_field/discussions) or on [StackOverflow](https://stackoverflow.com/questions/tagged/flutter-form-builder)

### Donations

Donate or become a sponsor of Flutter Form Builder Ecosystem

[![Become a Sponsor](https://opencollective.com/flutter-form-builder-ecosystem/tiers/sponsor.svg?avatarHeight=56)](https://opencollective.com/flutter-form-builder-ecosystem)

## Roadmap

- [Add complete web support](https://github.com/flutter-form-builder-ecosystem/form_builder_phone_field/issues/11)
- [Add visual examples](https://github.com/flutter-form-builder-ecosystem/form_builder_phone_field/issues/12) (images, gifs, videos, sample application)
- [Solve open issues](https://github.com/flutter-form-builder-ecosystem/form_builder_phone_field/issues), [prioritizing bugs](https://github.com/flutter-form-builder-ecosystem/form_builder_phone_field/labels/bug)

## Ecosystem

Take a look to [our awesome ecosystem](https://github.com/flutter-form-builder-ecosystem) and all packages in there

## Thanks to

### Contributors

**Contributors**

<a href="https://github.com/flutter-form-builder-ecosystem/form_builder_phone_field/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=flutter-form-builder-ecosystem/form_builder_phone_field" />
</a>

Made with [contrib.rocks](https://contrib.rocks).
