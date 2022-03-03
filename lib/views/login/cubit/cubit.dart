import 'package:basit/views/login/cubit/states.dart';
import 'package:basit/views/network/dio_helper.dart';
import 'package:basit/views/network/end_points.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingUpCubit extends Cubit<SingInState>{
  SingUpCubit() : super(SingInInitialState());
  static SingUpCubit get(context) => BlocProvider.of(context);
  void userLogin( {required String email,required String password} ) {
    emit(SingInLoadingState());
    DioHelper.postData( url: LOGIN, data: {'email':email,'password':password}, )
      .then( (value) {print(value.data);emit(SingInSuccessState());} )
      .catchError( (error) {print(error.toString());
      /*emit(SingInErrorState(error.toString()));*/} ) ;
  }
}