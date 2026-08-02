import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/bloc/payment_cubit/payment_states.dart';

class PaymentCubit extends Cubit<PaymentStates> {
  PaymentCubit() : super(PaymentInitialState());

  static PaymentCubit get(context) => BlocProvider.of(context);

  bool visa =true;
  bool masterCard=false;

  void switchVisa(){
    visa=true;
    masterCard=false;
    emit(PaymentVisaTrue());
  }
  void switchMasterCard(){
    visa=false;
    masterCard=true;
    emit(PaymentMasterCardTrue());
  }



}