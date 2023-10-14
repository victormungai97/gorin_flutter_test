part of 'flavor_bloc.dart';

@freezed
class FlavorState with _$FlavorState {
  const factory FlavorState.initial() = FlavorInitial;
  const factory FlavorState.loadInProgress() = FlavorLoadInProgress;
  const factory FlavorState.loadSuccess(FlavorModel flavor) = FlavorLoadSuccess;
  const factory FlavorState.loadFailure({required String exception}) =
      FlavorLoadFailure;
}
