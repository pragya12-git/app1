import 'package:app1/models/user_data_model.dart';
import 'package:flutter/material.dart';

class DetailBuilder extends StatefulWidget {
  DetailBuilder({
    required this.label,
    super.key,
    required this.value,
    this.isImage = false,
  });

  final String label;
  final String value;
  final bool isImage;
  //final UserData user;

  @override
  State<DetailBuilder> createState() => _DetailBuilderState();
}

class _DetailBuilderState extends State<DetailBuilder> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Text(widget.label)),
        Expanded(
            flex: 3,
            child: widget.isImage
                ? Image.network(widget.value)
                : Text(widget.value)),
      ],
    );
  }
}
