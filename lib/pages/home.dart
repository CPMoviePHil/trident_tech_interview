import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trident_tech_interview/utils/router.dart';

import '../generated/l10n.dart';

class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      actions: <Widget>[
        IconButton(
          onPressed: () => context.push(rLanguageSetting),
          icon: const Icon(Icons.settings),
        ),
      ],
    ),
    body: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _HomePageButton(
          key: const Key("#student_list"),
          onTap: () {

          },
          buttonText: S.of(context).student_list,
        ),
        const SizedBox(height: 10),
        _HomePageButton(
          key: const Key("#lecturer_list"),
          onTap: () => context.push(rLecturerList),
          buttonText: S.of(context).lecturer_list,
        ),
        const SizedBox(height: 10),
        _HomePageButton(
          key: const Key("#class_list"),
          onTap: () {

          },
          buttonText: S.of(context).class_list,
        ),
      ],
    ),
  );
}

class _HomePageButton extends StatelessWidget {

  const _HomePageButton({
    super.key,
    required VoidCallback? onTap,
    required String buttonText,
  }) :  _onTap = onTap,
        _buttonText = buttonText;

  final VoidCallback? _onTap;
  final String _buttonText;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      GestureDetector(
        onTap: _onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          decoration: const BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.all(Radius.circular(35)),
          ),
          child: Text(
            _buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    ],
  );
}