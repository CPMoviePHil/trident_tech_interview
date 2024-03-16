import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/value_notifier_cubit.dart';
import '../models/class_info.dart';
import '../models/user_info.dart';
import '../utils/image_util.dart';
import '../utils/extension.dart';
import '../utils/log_util.dart';

class UserInfoCard extends StatelessWidget {

  const UserInfoCard({
    super.key,
    required UserInfo userInfo
  }) : _userInfo = userInfo;

  final UserInfo _userInfo;

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      border: Border.all(width: 1),
      borderRadius: const BorderRadius.all(Radius.circular(5)),
    ),
    margin: const EdgeInsets.only(right: 20, left: 20, bottom: 15),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  if (_userInfo.userAvatar != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: ImageUtil.circleUrlImg(
                        _userInfo.userAvatar!,
                      ),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      if (_userInfo.getUserType.userTypeMsg != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            _userInfo.getUserType.userTypeMsg!,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      if (_userInfo.userName != null)
                        Text(
                          _userInfo.userName!,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              BlocBuilder<ShowClassDetailCubit, bool>(
                builder: (context, state) => GestureDetector(
                  onTap: () => context.read<ShowClassDetailCubit>().change(!state),
                  child: Icon(!state ? Icons.add : Icons.remove),
                ),
              ),
            ],
          ),
          BlocBuilder<ShowClassDetailCubit, bool>(
            builder: (context, state) {
              if (state) {
                return ClassDetailView(classes: _userInfo.classes);
              } else {
                return const SizedBox();
              }
            },
          ),
        ],
      ),
    ),
  );
}

class ClassDetailView extends StatelessWidget {

  const ClassDetailView({super.key, required List<ClassInfo> classes}) : _classes = classes;
  final List<ClassInfo> _classes;

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      const SizedBox(height: 15),
      const Divider(height: 1, color: Colors.grey),
      for (final value in _classes)
        ClassDetailDescRow(
          text: value.className,
          desc: value.classTime,
          onTap: () => logMsg("className: ${value.className}"),
        ),
    ],
  );
}

class ClassDetailDescRow extends StatelessWidget {

  const ClassDetailDescRow({
    super.key,
    required String text,
    required String desc,
    required VoidCallback onTap,
  }) : _text = text, _desc = desc, _onTap = onTap;

  final String _text;
  final String _desc;
  final VoidCallback? _onTap;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            const Icon(Icons.calendar_month_outlined, color: Colors.grey),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(_text),
                Text(_desc),
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: _onTap,
          child: const Icon(Icons.arrow_forward_ios_sharp, size: 18),
        ),
      ],
    ),
  );
}