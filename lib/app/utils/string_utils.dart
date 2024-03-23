import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class StringUtils {

   static String maskForPhone(String phone){
     final phoneMask = MaskTextInputFormatter(
         mask: '+7 (###) ###-##-##',
         filter: {"#": RegExp(r'[0-9]')},
         type: MaskAutoCompletionType.lazy);
     var subMask = phone.substring(phone.length - 10);
     var mask = phoneMask.maskText(subMask);
     return mask;
  }

}