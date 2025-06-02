import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forecast/presentation/screens/mock/bloc/mock_bloc.dart';
import 'package:go_router/go_router.dart';

class MockScreen extends StatelessWidget {
  const MockScreen({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mock Screen'),
      ),
      body: BlocBuilder<MockBloc, MockState>(
        builder: (context, state) {
          if (state.isLoading == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.error != null) {
            return Center(
              child: Text(
                state.error!,
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          if (state.person == null) {
            return const Center(
              child: Text('Không có dữ liệu'),
            );
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ID: ${state.person!.id}'),
                const SizedBox(height: 8),
                Text('First Name: ${state.person!.firstName ?? "N/A"}'),
                const SizedBox(height: 8),
                Text('Last Name: ${state.person!.lastName ?? "N/A"}'),
                const SizedBox(height: 8),
                Text('Age: ${state.person!.age ?? "N/A"}'),
                if (state.message != null) ...[
                  const SizedBox(height: 16),
                  Text(
                    state.message!,
                    style: const TextStyle(color: Colors.green),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
