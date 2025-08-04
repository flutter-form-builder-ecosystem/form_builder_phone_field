import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:form_builder_phone_field/form_builder_phone_field.dart';

void main() {
  group('by FormFieldKey -', () {
    testWidgets('should reset value when call reset', (tester) async {
      final formFieldKey = GlobalKey<FormBuilderFieldState>();
      const fieldName = 'phone';
      final testWidget = FormBuilderPhoneField(
        name: fieldName,
        key: formFieldKey,
      );
      const validPhone = '642337488';
      const validCodePhone = '+34';
      await tester.pumpWidget(buildTestableFieldWidget(testWidget));

      formFieldKey.currentState?.setValue('$validCodePhone$validPhone');
      await tester.pumpAndSettle();
      formFieldKey.currentState?.reset();

      expect(formFieldKey.currentState?.value, null);
    });
    testWidgets('should reset value to initial value when call reset', (
      tester,
    ) async {
      final formFieldKey = GlobalKey<FormBuilderFieldState>();
      const fieldName = 'phone';
      const initialValue = '12345';
      final testWidget = FormBuilderPhoneField(
        name: fieldName,
        key: formFieldKey,
        initialValue: initialValue,
      );
      const validPhone = '642337488';
      const validCodePhone = '+34';
      await tester.pumpWidget(buildTestableFieldWidget(testWidget));

      formFieldKey.currentState?.setValue('$validCodePhone$validPhone');
      await tester.pumpAndSettle();
      formFieldKey.currentState?.reset();

      expect(formFieldKey.currentState?.value, initialValue);
    });
    testWidgets('should update value when call set value', (tester) async {
      final formFieldKey = GlobalKey<FormBuilderFieldState>();
      const fieldName = 'phone';
      const validPhone = '691375833';
      const validCodePhone = '+34';
      final testWidget = FormBuilderPhoneField(
        name: fieldName,
        key: formFieldKey,
      );
      await tester.pumpWidget(buildTestableFieldWidget(testWidget));

      formFieldKey.currentState?.didChange('$validCodePhone$validPhone');
      await tester.pumpAndSettle();

      expect(formFieldKey.currentState?.value, '$validCodePhone$validPhone');
    });
    testWidgets('should found the correct country', (tester) async {
      final formFieldKey = GlobalKey<FormBuilderFieldState>();
      const fieldName = 'phone';
      const validPhone = '8599999999';
      const validCodePhone = '+55';
      final testWidget = FormBuilderPhoneField(
        name: fieldName,
        key: formFieldKey,
      );
      await tester.pumpWidget(buildTestableFieldWidget(testWidget));

      formFieldKey.currentState?.didChange('$validCodePhone$validPhone');
      await tester.pumpAndSettle();

      expect(formFieldKey.currentState?.value, '$validCodePhone$validPhone');
    });
  });
  group('by FormKey -', () {
    testWidgets('should reset value when call reset', (tester) async {
      final formKey = GlobalKey<FormBuilderState>();
      const fieldName = 'phone';
      final testWidget = FormBuilderPhoneField(name: fieldName);
      await tester.pumpWidget(
        buildTestableFieldWidget(testWidget, formKey: formKey),
      );

      formKey.currentState?.patchValue({fieldName: '+34649294281'});
      await tester.pumpAndSettle();
      formKey.currentState?.reset();

      expect(formKey.currentState?.instantValue, {fieldName: null});
    });
    testWidgets('should reset to initial value value when call reset', (
      tester,
    ) async {
      final formKey = GlobalKey<FormBuilderState>();
      const fieldName = 'phone';
      const initialValue = '1235';
      final testWidget = FormBuilderPhoneField(name: fieldName);
      await tester.pumpWidget(
        buildTestableFieldWidget(
          testWidget,
          formKey: formKey,
          initialValue: {fieldName: initialValue},
        ),
      );

      formKey.currentState?.patchValue({fieldName: '+34649294281'});
      await tester.pumpAndSettle();
      formKey.currentState?.reset();

      expect(formKey.currentState?.instantValue, {fieldName: initialValue});
    });
    testWidgets('should update valid phone when call patch value', (
      tester,
    ) async {
      final formKey = GlobalKey<FormBuilderState>();
      const fieldName = 'phone';
      const validPhone = '602299271';
      const validCodePhone = '+34';
      final testWidget = FormBuilderPhoneField(name: fieldName);
      await tester.pumpWidget(
        buildTestableFieldWidget(testWidget, formKey: formKey),
      );

      formKey.currentState?.patchValue({
        fieldName: '$validCodePhone$validPhone',
      });
      await tester.pumpAndSettle();

      expect(formKey.currentState?.instantValue, {
        fieldName: '$validCodePhone$validPhone',
      });
    });
  });
}

Widget buildTestableFieldWidget(
  Widget widget, {
  GlobalKey<FormBuilderState>? formKey,
  Map<String, dynamic> initialValue = const {},
}) {
  return MaterialApp(
    home: Scaffold(
      body: FormBuilder(
        key: formKey ?? GlobalKey<FormBuilderFieldState>(),
        initialValue: initialValue,
        child: widget,
      ),
    ),
  );
}
