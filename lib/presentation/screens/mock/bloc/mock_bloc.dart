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
      await event.map(
        getMock: (event) => _onGetMock(event, emit),
        saveUser: (event) => _onSaveUser(event, emit),
      );
    });

    _initMock();
  }

  void _initMock() {
    add(const MockEvent.getMock());
  }

  Future<void> _onGetMock(_GetMock event, Emitter<MockState> emit) async {
    debugPrint('MockBloc: _onGetMock');
    emit(state.copyWith(isLoading: true));
    final person = await _mockRepository.getData();
    emit(state.copyWith(
      person: person,
      isLoading: false,
      message: 'Lấy dữ liệu thành công',
    ));
  }

  Future<void> _onSaveUser(_SaveUser event, Emitter<MockState> emit) async {
    debugPrint('MockBloc: _onSaveUser');
    emit(state.copyWith(isLoading: true));
    // save user
    emit(state.copyWith(
      isLoading: false,
      message: 'Lưu user thành công',
    ));
  }
}
