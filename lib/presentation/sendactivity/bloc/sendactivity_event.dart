part of 'sendactivity_bloc.dart';

@freezed
class SendActivityEvent with _$SendActivityEvent {

  const factory SendActivityEvent.sendActivity({
    required String screenName,
  }) = _SendActivity;


}
