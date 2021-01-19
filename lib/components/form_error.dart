import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormError extends StatelessWidget {
  FormError({
    Key key,
    // ignore: always_put_required_named_parameters_first
    @required this.errors,
  }) : super(key: key);

  List<String> errors = [];

  @override
  Widget build(BuildContext context) => Column(
        children: List.generate(
            errors.length, (index) => formErrorText(error: errors[index])),
      );

  Row formErrorText({String error}) => Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          Text(
            error,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      );
}
