import 'package:flutter/material.dart';

Future<String?> showSelectAdsTypeBottomSheet(
    BuildContext context, String? groupValue) {
  return showModalBottomSheet<String>(
    context: context,
    backgroundColor: Colors.white,
    builder: (context) {
      String? selectedOption;
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 8),
              ListTile(
                title: const Text("Спрос"),
                onTap: () {
                  selectedOption = "Спрос";
                  Navigator.pop(context, selectedOption);
                },
                trailing: Radio<String>(
                  value: "Спрос",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                    Navigator.pop(context, selectedOption);
                  },
                  fillColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.green;
                    }
                    return Colors.grey;
                  }),
                ),
              ),
              ListTile(
                title: const Text("Предложение"),
                onTap: () {
                  setState(() {
                    selectedOption = "Предложение";
                  });
                  Navigator.pop(context, selectedOption);
                },
                trailing: Radio<String>(
                  value: "Предложение",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                    Navigator.pop(context, selectedOption);
                  },
                  fillColor: WidgetStateProperty.resolveWith<Color>(
                      (Set<WidgetState> states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.green;
                    }
                    return Colors.grey;
                  }),
                ),
              ),
            ],
          );
        },
      );
    },
  );
}
