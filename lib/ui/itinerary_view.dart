import 'package:bussit/graphql/schema.graphql.dart';
import 'package:bussit/model/itinerary_form_data.dart';
import 'package:bussit/ui/widgets/components/app_icons.dart';
import 'package:bussit/ui/widgets/itineraries/form_components/date_time_fields.dart';
import 'package:bussit/ui/widgets/itineraries/form_components/locations_form.dart';
import 'package:bussit/ui/widgets/itineraries/itinerary_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

class ItineraryForm extends StatefulWidget {
  const ItineraryForm({super.key});

  @override
  State<ItineraryForm> createState() => _ItineraryFormState();
}

class _ItineraryFormState extends State<ItineraryForm>
    with AutomaticKeepAliveClientMixin {
  final _formKey = GlobalKey<FormState>();
  Widget? _result;
  bool _allowBikeRental = false;

  Set<dynamic> _allowedModes = {
    Enum$Mode.BUS,
    Enum$Mode.TRAM,
    Enum$Mode.RAIL,
    Enum$Mode.SUBWAY
  };

  @override
  bool get wantKeepAlive => true;

  void saveResult(ItineraryFormData formData) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(formData.locationFrom.toString() +
              ' -> ' +
              formData.locationTo.toString()),
        ),
      );
      setState(() {
        _result = ItineraryListWidget(
          from: formData.locationFrom!,
          to: formData.locationTo!,
          nResults: 12,
          time: formData.datetime,
          arriveBy: formData.arriveBy,
          allowBikeRental: _allowBikeRental,
          transportModes: _allowedModes.toList(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Consumer<ItineraryFormData>(builder: (context, formData, child) {
      const places = LocationsForm();

      final arrivalOrDeparture = DropdownButton<bool>(
          value: formData.arriveBy,
          items: const [
            DropdownMenuItem(value: false, child: Text("Departure")),
            DropdownMenuItem(value: true, child: Text("Arrival")),
          ],
          onChanged: (bool? value) {
            setState(() {
              formData.arriveBy = value ?? formData.arriveBy;
            });
          });
      const rentedBike = [Enum$Mode.BICYCLE, Enum$Qualifier.RENT];
      final bikeButton = SegmentedButton(
        segments: const [
          ButtonSegment(
            value: rentedBike,
            label: Icon(
              Icons.pedal_bike,
              color: Colors.amber,
            ),
          ),
          ButtonSegment(
            value: Enum$Mode.BICYCLE,
            label: TransitModeIcon(Enum$Mode.BICYCLE),
          ),
          ButtonSegment(
            value: Enum$Mode.BUS,
            label: TransitModeIcon(Enum$Mode.BUS),
          ),
          ButtonSegment(
            value: Enum$Mode.TRAM,
            label: TransitModeIcon(Enum$Mode.TRAM),
          ),
          ButtonSegment(
            value: Enum$Mode.RAIL,
            label: TransitModeIcon(Enum$Mode.RAIL),
          ),
          ButtonSegment(
            value: Enum$Mode.SUBWAY,
            label: TransitModeIcon(Enum$Mode.SUBWAY),
          ),
        ],
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Colors.grey[300];
              }
              return null;
            },
          ),
          visualDensity: VisualDensity.compact,
        ),
        showSelectedIcon: true,
        emptySelectionAllowed: true,
        multiSelectionEnabled: true,
        selected: _allowedModes,
        onSelectionChanged: (Set<dynamic> modes) {
          if (modes.contains(Enum$Mode.BICYCLE) &&
              !_allowedModes.contains(Enum$Mode.BICYCLE)) {
            modes.removeAll([Enum$Mode.BUS, Enum$Mode.TRAM]);
          }
          if (!modes.contains(Enum$Mode.BICYCLE) &&
              _allowedModes.contains(Enum$Mode.BICYCLE)) {
            modes.addAll([
              Enum$Mode.BUS,
              Enum$Mode.TRAM,
              Enum$Mode.RAIL,
              Enum$Mode.SUBWAY
            ]);
          }
          setState(() {
            _allowedModes = modes;
            _allowBikeRental = modes.contains(rentedBike);
          });
        },
      );

      final form = Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              places,
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  arrivalOrDeparture,
                  const DateField(),
                  const TimeField(),
                  TimeControls(formData),
                  bikeButton,
                  TextButton(
                    onPressed: () => saveResult(formData),
                    child: const Text("Search routes"),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

      // return form;
      return ListView(
        children: [form, _result ?? const Text("No search")],
      );
    });
  }
}
