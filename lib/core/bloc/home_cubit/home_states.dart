abstract class HomeStates {}

class HomeInitState extends HomeStates {}

class HomeChangeBottomNavBarIndex extends HomeStates {}

class GoToCategoryView extends HomeStates {}

class SliderValueChanged extends HomeStates {
  final double sliderValue;

  SliderValueChanged(this.sliderValue);
}
