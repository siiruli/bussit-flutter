import 'package:bussit/model/itinerary_form_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bussit/ui/widgets/itinerary/itinerary_form.dart';

class ItineraryView extends StatelessWidget {
  const ItineraryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItineraryFormData(),
      child: const ItineraryForm(),
    );
  }
}
