import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  final bool? withCount;
  final String text;
  final Color color;
  final String? count;


  const StatusWidget({Key? key, required this.withCount, required this.text, required this.color, this.count})
      : super(key: key);
  @override
  Widget build(BuildContext context) {


    return Container(

      padding:
          const EdgeInsets.only(right: 16, left: 16, top: 6.5, bottom: 6.5),
      decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: color),
      child: Row(
        children: [
          if(withCount!)
          Container(
            height: 16,
            width: 16,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child:  Center(
              child: Text(
                count ?? "0",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: color),
              ),
            ),
          ),
          if(withCount!)
           const SizedBox(width: 8,),
           Text(
            text,
            style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}
