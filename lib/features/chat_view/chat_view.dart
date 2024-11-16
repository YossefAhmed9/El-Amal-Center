import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/utils/constant.dart';

import '../../core/bloc/chat_cubit/chat_cubit.dart';
import '../../core/bloc/chat_cubit/chat_states.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    List messages=['Hi Doctor','I am a patient i want to ask you about somthing ! '];
    return BlocConsumer<ChatCubit, ChatStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppConstant.defaultColor,
            actions: [
              Container(
                child: Image.asset('assets/images/sara 1.png'),
              )
            ],
            title: const Text(
              'Doctor\'s name',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
          ),
          body: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                      itemCount: 2,

                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 8.0, left: 8.0, right: 55.0, top: 8.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: AppConstant.defaultColor,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    '${messages[index]}',
                                    style: const TextStyle(fontSize: 20, color: Colors.white),
                                    softWrap: true,
                                    maxLines: 5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                  }
                  ),
                ),
              ),
            ],
          )),
        );
      },
    );
  }
}
