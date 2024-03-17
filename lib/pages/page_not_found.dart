
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class PageNotFound extends StatelessWidget {

  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              S.of(context).page_not_found,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
