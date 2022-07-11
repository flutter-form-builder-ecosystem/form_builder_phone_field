# Form Builder Phone Field

[![Pub Version](https://img.shields.io/pub/v/form_builder_phone_field?logo=flutter&style=for-the-badge)](https://pub.dev/packages/form_builder_phone_field)
[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/flutter-form-builder-ecosystem/form_builder_phone_field/Base?logo=github&style=for-the-badge)](https://github.com/flutter-form-builder-ecosystem/form_builder_phone_field/actions/workflows/base.yaml)
[![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/flutter-form-builder-ecosystem/form_builder_phone_field?logo=codefactor&style=for-the-badge)](https://www.codefactor.io/repository/github/flutter-form-builder-ecosystem/form_builder_phone_field)
[![Codecov](https://img.shields.io/codecov/c/github/flutter-form-builder-ecosystem/form_builder_phone_field?logo=codecov&style=for-the-badge)](https://codecov.io/gh/flutter-form-builder-ecosystem/form_builder_phone_field/)

International phone number field for [FlutterFormBuilder](https://pub.dev/packages/flutter_form_builder) package

# Usage

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

## Credits

**Contributors**

<a href="https://github.com/flutter-form-builder-ecosystem/form_builder_phone_field/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=flutter-form-builder-ecosystem/form_builder_phone_field" />
</a>

Made with [contrib.rocks](https://contrib.rocks).
