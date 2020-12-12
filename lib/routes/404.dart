import 'package:flutter/material.dart';
import '../base_appbar.dart';

class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAppBar(context, '页面不存在'),
    );
  }
}
