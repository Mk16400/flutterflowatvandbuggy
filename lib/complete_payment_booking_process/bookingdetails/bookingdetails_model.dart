import '/complete_payment_booking_process/add_review/add_review_widget.dart';
import '/complete_payment_booking_process/checkin/checkin_widget.dart';
import '/complete_payment_booking_process/checkout/checkout_widget.dart';
import '/complete_payment_booking_process/consult_with_representative/consult_with_representative_widget.dart';
import '/complete_payment_booking_process/get_direction/get_direction_widget.dart';
import '/complete_payment_booking_process/scan_your_vehicle/scan_your_vehicle_widget.dart';
import '/complete_payment_booking_process/trip_remainingtime/trip_remainingtime_widget.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bookingdetails_widget.dart' show BookingdetailsWidget;
import 'package:flutter/material.dart';

class BookingdetailsModel extends FlutterFlowModel<BookingdetailsWidget> {
  ///  Local state fields for this page.

  bool isExpandedDirection = false;

  bool isExpandedConsult = false;

  bool isExpandedVehicle = false;

  bool isExpandedCheckin = false;

  bool isExpandedReTime = false;

  bool isExpandedCheckout = false;

  bool isExpandedReview = false;

  ///  State fields for stateful widgets in this page.

  // Model for get_direction component.
  late GetDirectionModel getDirectionModel;
  // Model for consult_with_representative component.
  late ConsultWithRepresentativeModel consultWithRepresentativeModel;
  // Model for scan_your_vehicle component.
  late ScanYourVehicleModel scanYourVehicleModel;
  // Model for checkin component.
  late CheckinModel checkinModel;
  // Model for trip_remainingtime component.
  late TripRemainingtimeModel tripRemainingtimeModel;
  // Model for checkout component.
  late CheckoutModel checkoutModel;
  // Model for add_review component.
  late AddReviewModel addReviewModel;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    getDirectionModel = createModel(context, () => GetDirectionModel());
    consultWithRepresentativeModel =
        createModel(context, () => ConsultWithRepresentativeModel());
    scanYourVehicleModel = createModel(context, () => ScanYourVehicleModel());
    checkinModel = createModel(context, () => CheckinModel());
    tripRemainingtimeModel =
        createModel(context, () => TripRemainingtimeModel());
    checkoutModel = createModel(context, () => CheckoutModel());
    addReviewModel = createModel(context, () => AddReviewModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    getDirectionModel.dispose();
    consultWithRepresentativeModel.dispose();
    scanYourVehicleModel.dispose();
    checkinModel.dispose();
    tripRemainingtimeModel.dispose();
    checkoutModel.dispose();
    addReviewModel.dispose();
    navbarModel.dispose();
  }
}
