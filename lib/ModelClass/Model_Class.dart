import 'dart:ui';

class ModelClass{
  final String? orderId;
  final String? created;
  final String? price;
  final void Function()? onButtonPressed;
  final Color buttonColor;
  final String buttonText;
  ModelClass({required this.orderId, required this.created, required this.price, this.onButtonPressed,
  required this.buttonColor , required this.buttonText,
  });
}