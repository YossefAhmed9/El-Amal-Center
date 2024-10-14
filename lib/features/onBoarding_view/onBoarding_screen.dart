import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/utils/constant.dart';
import 'package:markaz_elamal/features/authentication_view/authincation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/bloc/onBoarding/onBoarding_cubit.dart';
import '../../core/bloc/onBoarding/onBoarding_states.dart';
import '../../core/utils/styles.dart';
import 'onBoarding_model.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {

    List<OnBoardingModel> onboardingList = [

      OnBoardingModel(
          title: '',
          body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height *0.35,
            decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                  'Application provide you with alot of experienced doctors you can see these profile and choose one you want to appointment with him.',
                  style: Styles.textStyle25(context)
                      .copyWith(fontFamily: 'Poppins'),
                ),
            ),
          ),

          image: 'assets/images/select doctor 1.png'),

      OnBoardingModel(
          title: '',
          body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height *0.35,
            decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'The application can help you choose the appropriate date and time for you and the selected doctor.',
                style: Styles.textStyle25(context)
                    .copyWith(fontFamily: 'Poppins'),
              ),
            ),
          ),
          image: 'assets/images/date 1.png'),

      OnBoardingModel(
          title: '',
          body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height *0.35,
            decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,top:15 ),
                  child: Text(
                    ' Once you access the profile of doctor you selected you can communicate with him and send any message',
                    style: Styles.textStyle25(context)
                        .copyWith(fontFamily: 'Poppins'),

                  ),
                ),
                TextButton(
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return const Authentication();
                  }));
                },
                  child: Text(
                  textAlign: TextAlign.start,
                  'Let\'s start with Sign up',
                  style: Styles.textStyle25(context).copyWith(
                      color: AppConstant.defaultColor),
                ),
                ),
              ],
            ),
          ),
          image: 'assets/images/select doc 1.png'),

    ];

    return BlocConsumer<onBoardingCubit, onBoardingStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        onBoardingCubit cubit = onBoardingCubit.get(context);
        return Scaffold(
            backgroundColor: AppConstant.defaultColor,
            body: Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: pageViewController,
                      itemBuilder: (context, index) =>
                          onBoardBuildingItem(onboardingList[index]),
                      itemCount: onboardingList.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      onPageChanged: (int index) {
                        if (onboardingList.length == index + 1) {
                          cubit.pageLast(index);
                        } else {
                          cubit.pageNOTLast(index);
                        }
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0,bottom: 15),
                          child: SmoothPageIndicator(
                            controller: pageViewController,
                            count: onboardingList.length,
                            effect: ExpandingDotsEffect (
                              dotColor: Colors.blue.shade100,
                              activeDotColor: AppConstant.defaultColor,
                              dotHeight: 20,
                              dotWidth: 20,
                              spacing: 5,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),

                ],
              ),
            ));
      },
    );
  }
}
