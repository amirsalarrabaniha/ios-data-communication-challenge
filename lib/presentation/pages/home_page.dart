import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/ios_data_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('iOS Data Communication')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<IOSDataCubit, String>(
              builder: (context, state) {
                return Text(state, style: TextStyle(fontSize: 20));
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.read<IOSDataCubit>().start(),
              child: Text("Start"),
            ),
            ElevatedButton(
              onPressed: () => context.read<IOSDataCubit>().stop(),
              child: Text("Stop"),
            ),
          ],
        ),
      ),
    );
  }
}
