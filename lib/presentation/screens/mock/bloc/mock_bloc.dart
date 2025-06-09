import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forecast/domain/repositories/mock_repository.dart';
import 'package:forecast/data/models/person.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mock_event.dart';
part 'mock_state.dart';
part 'mock_bloc.freezed.dart';

class MockBloc extends Bloc<MockEvent, MockState> {
  final MockRepository _mockRepository;

  MockBloc({required MockRepository mockRepository})
      : _mockRepository = mockRepository,
        super(const MockState()) {
    on<MockEvent>((event, emit) async {
      switch (event) {
        case _GetMock():
          await _onGetMock(event, emit);
        case _SaveUser():
          await _onSaveUser(event, emit);
      }
    });

    _initMock();
  }

  void _initMock() {
    add(const MockEvent.getMock());
  }

  Future<void> _onGetMock(_GetMock event, Emitter<MockState> emit) async {
    debugPrint('MockBloc: _onGetMock');
    emit(state.copyWith(status: MockStatus.loading));
    await Future.delayed(const Duration(seconds: 2));
    final person = await _mockRepository.getData();
    emit(state.copyWith(
      person: person,
      status: MockStatus.success,
      message: 'Lấy dữ liệu thành công',
    ));
  }

  Future<void> _onSaveUser(_SaveUser event, Emitter<MockState> emit) async {
    debugPrint('MockBloc: _onSaveUser');
    emit(state.copyWith(status: MockStatus.loading));
    // save user
    emit(state.copyWith(
      status: MockStatus.success,
      message: 'Lưu user thành công',
    ));
  }
}
