part of 'splash_cubit.dart';

@immutable
sealed class SplashState {}

final class SplashInitial extends SplashState {}
class AnimationStarted extends SplashState {}

class SplashNavigatedToHome extends SplashState {}