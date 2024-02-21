import 'package:flutter/material.dart';

import '../theme/theme.dart';

class QuantityChangeButtons extends StatelessWidget {
  const QuantityChangeButtons({
    Key? key,
    this.text,
    required this.quantityController,
    required this.increaseQuantiy,
    required this.decreaseQuantity,
  }) : super(key: key);
  final String? text;
  final TextEditingController quantityController;
  final VoidCallback increaseQuantiy;
  final VoidCallback decreaseQuantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (text != null)
          Text(
            text!,
            textScaleFactor: 1.0,
            style:
                Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18),
          ),
        // IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
        InkWell(
            //  onLongPress: setToOne,
            borderRadius: BorderRadius.circular(defaultPadding * 5),
            onTap: decreaseQuantity,
            child: const Icon(Icons.remove)),
        SizedBox(
          width: defaultPadding,
          child: TextFormField(
            readOnly: true,
            controller: quantityController,
            style:
                Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 19),
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            textAlignVertical: TextAlignVertical.center,
          ),
        ),
        InkWell(
            borderRadius: BorderRadius.circular(defaultPadding * 5),
            onTap: increaseQuantiy,
            child: const Icon(Icons.add))
        // IconButton(onPressed: () {}, icon: const Icon(Icons.add))
      ],
    );
  }
}
