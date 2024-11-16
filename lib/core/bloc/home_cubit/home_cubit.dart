import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../features/home_layout/book_view/book_view.dart';
import '../../../features/home_layout/category_view/category_view.dart';
import '../../../features/home_layout/home_page/home_page_view.dart';
import '../../../features/home_layout/profile_view/profile_view.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitState());

  static HomeCubit get(context) => BlocProvider.of(context);


  List BottomNavBarscreens=[
    const HomePageView(),
    const CategoryView(),
    const BookView(),
    const ProfileView()
  ];

  double sliderValue = 20;
  void ChangeSliderValue(double value) {
    sliderValue = value;
    emit(SliderValueChanged(sliderValue));
  }

  int navBarIndex=0;
  void changeBottomNavBarIndex(int index){
    navBarIndex=index;
    emit(HomeChangeBottomNavBarIndex());
  }

  void GoToCategory(){
    navBarIndex=1;
    emit(GoToCategoryView());
  }

}