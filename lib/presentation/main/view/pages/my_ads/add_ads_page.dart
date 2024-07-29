import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:optlove/app/theme/bloc/app_theme.dart';
import 'package:optlove/generated/assets.gen.dart';

class AddNewAdsPage extends StatefulWidget {
  const AddNewAdsPage({super.key});

  @override
  State<AddNewAdsPage> createState() => _AddNewAdsPageState();
}

class _AddNewAdsPageState extends State<AddNewAdsPage> {
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: _controller,
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Box(
                    color: Colors.white,
                    child: Assets.images.back.svg(
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Создать объявление",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: colorTheme.blackText),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Выберите категорию",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '*',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey.shade100,
                    ),
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    alignment: Alignment.centerLeft,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Спрос",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.down_arrow,
                          color: Colors.grey,
                        ),
                      ],
                    )),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Выберите подкатегорию",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '*',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey.shade100,
                    ),
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    alignment: Alignment.centerLeft,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Продажа товаров",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.down_arrow,
                          color: Colors.grey,
                        ),
                      ],
                    )),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Введите название объявления",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '*',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Название объявления",
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Добавьте описание",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '*',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Описание",
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width - 50,
                      child: Text(
                        "Выберите название продавца или организации",
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: colorTheme.blackText),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '*',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Название продавца или организации",
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Добавьте изображение",
                      maxLines: 3,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '*',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 56,
                        width: 200,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          color: const Color(0xFF5DB248),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Text(
                          "Загрузить файл",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "(до 10 файлов)",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Добавьте город",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '*',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey.shade100,
                    ),
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    alignment: Alignment.centerLeft,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Все города",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.down_arrow,
                          color: Colors.grey,
                        ),
                      ],
                    )),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Добавьте цену",
                      maxLines: 3,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '*',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Цена",
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Укажите контактные данные",
                      maxLines: 3,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '*',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Телефон",
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 34),
                TextField(
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5DB248),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      "Сохранить",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE9EAEA),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      "Отмена",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
