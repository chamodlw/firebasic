import 'package:auto_route/auto_route.dart';
import 'package:fire2/routes/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ShowAlert extends StatelessWidget {
  showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed:  () {
      AutoRouter.of(context).push(const LoginRoute());
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Do You Want To Logout?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}