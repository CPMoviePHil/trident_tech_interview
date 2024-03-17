import 'package:flutter/material.dart';
import 'package:trident_tech_interview/utils/extension.dart';

import '../generated/l10n.dart';
import '../models/class_info.dart';
import '../models/user_info.dart';
import '../utils/image_util.dart';

class ClassDetail extends StatelessWidget {

  const ClassDetail({
    super.key,
    required UserInfo userInfo,
    required ClassInfo classInfo,
  }) :  _classInfo = classInfo,
        _userInfo = userInfo;

  final ClassInfo _classInfo;
  final UserInfo _userInfo;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        S.of(context).class_detail_title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                if (_userInfo.userAvatar != null)
                  ImageUtil.circleUrlImg(_userInfo.userAvatar!, width: 80, height: 80),
                if (_userInfo.userName != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      _userInfo.userName!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff434545),
                      ),
                    ),
                  ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (_userInfo.getUserType.userTypeMsg != null)
              Row(
                children: <Widget>[
                  const SizedBox(width: 20),
                  Text(
                    _userInfo.getUserType.userTypeMsg! + S.of(context).desc,
                  ),
                ],
              ),
            const SizedBox(width: 20),
            if (_userInfo.userDesc != null)
              Row(
                children: <Widget>[
                  const SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      _userInfo.userDesc!,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
          ],
        ),
        const SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children:  <Widget>[
                const SizedBox(width: 20),
                Text(S.of(context).class_time),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(width: 20),
                const Icon(Icons.calendar_month_outlined, color: Colors.grey),
                const SizedBox(width: 5),
                Text(
                  _classInfo.classTime,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children:  <Widget>[
                const SizedBox(width: 20),
                Text(S.of(context).class_name),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(width: 20),
                Text(
                  _classInfo.className,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children:  <Widget>[
                  const SizedBox(width: 20),
                  Text(S.of(context).class_desc),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  _classInfo.desc,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
