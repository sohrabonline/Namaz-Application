import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:namaz/model/user_location_model.dart';

import 'location_bloc_state.dart';

enum LocationEvent { fetchLocation }

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  @override
  LocationState get initialState => LocationStateInit();

  @override
  Stream<LocationState> mapEventToState(LocationEvent event) async* {
    switch (event) {
      case LocationEvent.fetchLocation:
        try {
          Position position = await Geolocator()
              .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
          List<Placemark> placeMarks = await Geolocator()
              .placemarkFromCoordinates(position.latitude, position.longitude);
          UserLocation userLocation = UserLocation(position, placeMarks);
          yield LocationStateDefined(userLocation: userLocation);
          break;
        } catch (e) {
          print('Location error: $e');
          yield LocationStateError(e);
          break;
        }
    }
  }
}