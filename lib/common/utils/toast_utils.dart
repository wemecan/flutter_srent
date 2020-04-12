import 'package:flutter/material.dart';
import 'package:flutter_srent/common/utils/sq_color.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtils {
	static void showToast(String msg) {
		Fluttertoast.showToast(
			msg: msg,
			toastLength: Toast.LENGTH_SHORT,
			gravity: ToastGravity.BOTTOM,
			timeInSecForIosWeb: 1,
			backgroundColor: SQColor.blackA99,
			textColor: Colors.white,
			fontSize: 16.0
		);
	}
}