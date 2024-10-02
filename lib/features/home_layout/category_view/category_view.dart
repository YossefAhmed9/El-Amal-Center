import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/constant.dart';
import 'package:markaz_elamal/core/utils/styles.dart';
class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 30,left: 15,right: 15),
        child: SizedBox(
          width: double.infinity,
          child: GridView.builder(
              itemCount: 6,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 230,
                  crossAxisSpacing: 0),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppConstant.defaultColor,
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/ai.png'),
                        ),
                         Text(
                           'Artificial Intelligence',textAlign: TextAlign.center,
                           style: Styles.textStyle20(context).copyWith(color: AppConstant.primaryColor,),
                         ),
                        Row(
                          children: [
                            const Spacer(),
                            IconButton(onPressed: (){

                            }, icon:const Icon(Icons.arrow_forward_ios,color: AppConstant.primaryColor,))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              })
        ),
      );
  }
}
