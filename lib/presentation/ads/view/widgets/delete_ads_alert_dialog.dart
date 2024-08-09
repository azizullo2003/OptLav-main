import 'package:flutter/material.dart';

Widget deleteAdsAlertDialog(BuildContext context) {
  return AlertDialog(
    contentTextStyle: const TextStyle(
      color: Colors.black,
    ),
    surfaceTintColor: Colors.white,
    backgroundColor: Colors.white,
    title: const Text(
      'Подтвердите удаление',
    ),
    content: Text(
      'Вы уверены, что хотите удалить это объявление?',
      style: TextStyle(color: Colors.grey.shade700),
    ),
    actions: [
      Theme(
        data: Theme.of(context).copyWith(
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Colors.green,
            ),
          ),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: const Text('Отмена'),
        ),
      ),
      Theme(
        data: Theme.of(context).copyWith(
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Colors.green,
            ),
          ),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text('Удалить'),
        ),
      ),
    ],
  );
}
