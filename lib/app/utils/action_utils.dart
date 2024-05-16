
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> startLoading(BuildContext context) async {
  return await showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return  SimpleDialog(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        children: <Widget>[
          Center(
            child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: CupertinoActivityIndicator()),
          )
        ],
      );
    },
  );
}

Future<void> stopLoading(BuildContext context) async {
  Navigator.of(context).pop();
}

Future<void> showError(Object? error, BuildContext context) async {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      action: SnackBarAction(
        label: 'Dismiss',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
      backgroundColor: Colors.red,
      content: Text('${error}'),
    ),
  );
}


Future<void> showSuccessDialog(BuildContext context, double distance) async {
  return await showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return  SimpleDialog(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        children: <Widget>[
          Center(
            child: Column(
              children: [
                Container(
                    height: 80,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Text('Distance: $distance')),

                SizedBox(height: 8,),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text('Close'))
              ],
            ),
          )
        ],
      );
    },
  );
}