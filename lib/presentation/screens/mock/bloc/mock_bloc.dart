import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forecast/domain/repositories/mock_repository.dart';
import 'mock_event.dart';
import 'mock_state.dart';

class MockBloc extends Bloc<MockEvent, MockState> {
  final MockRepository _mockRepository;

  MockBloc({required MockRepository mockRepository})
      : _mockRepository = mockRepository,
        super(MockInitial()) {
    on<GetMockData>(_onGetMockData);
    on<GetLocalPerson>(_onGetLocalPerson);
  }

  Future<void> _onGetMockData(
      GetMockData event, Emitter<MockState> emit) async {
    emit(MockLoading());
    final person = await _mockRepository.getData();
    emit(MockLoaded(person));
  }

  void _onGetLocalPerson(GetLocalPerson event, Emitter<MockState> emit) {
    emit(MockLoading());
    final person = _mockRepository.getPersonFromStorage();
    emit(MockLoaded(person));
  }
}
