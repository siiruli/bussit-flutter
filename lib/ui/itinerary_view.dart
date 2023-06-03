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

  /// allowed transport modes
  late Set<Input$TransportMode> _allowedModes;

  @override
  void initState() {
    super.initState();
    _allowedModes = transit.toSet();
  }

  @override
  bool get wantKeepAlive => true;

  void saveResult(ItineraryFormData formData) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: const Duration(seconds: 2),
          content: Text(formData.locationFrom.toString() +
              ' -> ' +
              formData.locationTo.toString()),
        ),
      );
      setState(() {
        _result = ItineraryVariables(
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

      final modeButtons = SegmentedButton<Input$TransportMode>(
        segments: modeList.map<ButtonSegment<Input$TransportMode>>((e) {
          return ButtonSegment(
            value: e,
            icon: TransitModeIcon(
              e.mode,
              rentedBike: e.qualifier == Enum$Qualifier.RENT,
            ),
          );
        }).toList(),
        style: const ButtonStyle(
          // backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          //   (Set<MaterialState> states) {
          //     if (states.contains(MaterialState.selected)) {
          //       return Colors.grey[300];
          //     }
          //     return null;
          //   },
          // ),
          visualDensity: VisualDensity.compact,
        ),
        showSelectedIcon: false,
        emptySelectionAllowed: true,
        multiSelectionEnabled: true,
        selected: _allowedModes,
        onSelectionChanged: (Set<Input$TransportMode> modes) {
          // bicycle added, remove transit where bicycle not allowed
          if (modes.contains(bike) && !_allowedModes.contains(bike)) {
            modes.removeAll(transitWithoutBike);
          }
          // bicycle disabled, add all transit modes
          if (!modes.contains(bike) && _allowedModes.contains(bike)) {
            modes.addAll(transit);
          }
          setState(() {
            _allowedModes = modes.toSet();
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
                  modeButtons,
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

  /// Transport modes that can be selected or unselected from modeButtons
  ///
  /// Other modes (like ferry and walking) may be added in itinerary search
  final List<Input$TransportMode> modeList = [
    Input$TransportMode(
      mode: Enum$Mode.BICYCLE,
      qualifier: Enum$Qualifier.RENT,
    ),
    Input$TransportMode(mode: Enum$Mode.BICYCLE),
    Input$TransportMode(mode: Enum$Mode.BUS),
    Input$TransportMode(mode: Enum$Mode.TRAM),
    Input$TransportMode(mode: Enum$Mode.RAIL),
    Input$TransportMode(mode: Enum$Mode.SUBWAY),
  ];
  Input$TransportMode get rentedBike => modeList[0];
  Input$TransportMode get bike => modeList[1];
  List<Input$TransportMode> get transit => modeList.sublist(2);
  List<Input$TransportMode> get transitWithoutBike =>
      [modeList[2], modeList[3]];
}
