import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepository;
  ProfileBloc({required this.profileRepository}) : super(const ProfileState()) {
    on<FetchUserDetailEvent>(_onFetchUserDetail);
    on<LogoutUserEvent>(_onLogout);
  }

  Future<void> _onFetchUserDetail(
    FetchUserDetailEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(profileStatus: ProfileStatus.fetching));
    try {
      final userProfile = await profileRepository.fetchUserDetails();

      if (userProfile.id != 0) {
        emit(
          state.copyWith(
            userEntity: userProfile,
            profileStatus: ProfileStatus.fetched,
          ),
        );
      } else {
        emit(state.copyWith(profileStatus: ProfileStatus.failed));
      }
    } catch (e) {
      emit(state.copyWith(profileStatus: ProfileStatus.failed));
    }
  }

  Future<void> _onLogout(
    LogoutUserEvent event,
    Emitter<ProfileState> emit,
  ) async {
    await profileRepository.logout();
    emit(state.copyWith(profileStatus: ProfileStatus.success));
  }
}
