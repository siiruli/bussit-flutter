import 'package:bussit/graphql/schema.graphql.dart';
import 'package:bussit/model/itinerary_form_data.dart';
import 'package:bussit/ui/widgets/components/app_icons.dart';
import 'package:bussit/ui/widgets/itineraries/form_components/date_field.dart';
import 'package:bussit/ui/widgets/itineraries/form_components/locations_form.dart';
import 'package:bussit/ui/widgets/itineraries/form_components/time_field.dart';
import 'package:bussit/ui/widgets/itineraries/itinerary_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ItineraryView extends StatelessWidget {
  const ItineraryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
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

class _ItineraryFormState extends State<ItineraryForm>  with AutomaticKeepAliveClientMixin {

  final _formKey = GlobalKey<FormState>();  
  Widget? _result;
  final List<bool> _allowBike = [false, false];
  final List<Widget> _bikeIcons = const [
    Icon(Icons.pedal_bike, color: Colors.amber,),
    TransitModeIcon(Enum$Mode.BICYCLE),
  ];
  @override
  bool get wantKeepAlive => true;

  void saveResult(ItineraryFormData formData){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(formData.locationFrom.toString() + ' -> ' + formData.locationTo.toString()),
        ),
      );
      DateTime now= DateTime.now();
      DateTime datetime = DateTime(
        (formData.date ?? now).year, 
        (formData.date ?? now).month, 
        (formData.date ?? now).day, 
        formData.time?.hour ?? now.hour,
        formData.time?.minute ?? now.minute,
      );
      setState(() {
        _result = ItineraryListWidget(
          from: formData.locationFrom!, 
          to: formData.locationTo!,
          nResults: 8,
          time: datetime,
          arriveBy: formData.arriveBy,
          allowBike: _allowBike,
        );
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Consumer<ItineraryFormData>(
      builder: (context, formData, child) {
        const places = LocationsForm();
        // time
        const dateChooser = DateField();
        const timeChooser = TimeField();
        
        final nowButton = TextButton(
          onPressed: () => setState(() {
            formData.date = null;
            formData.time = null;
          }), 
          child: const Text('Now'),
        );
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
          }
        );
        final bikeButton = ToggleButtons(
          children: _bikeIcons,
          isSelected: _allowBike,
          onPressed: (int index) {
            setState(() {
              _allowBike[index] = !_allowBike[index];
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
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    arrivalOrDeparture,
                    dateChooser,
                    timeChooser,
                    nowButton, 
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
        return ListView(children: [form, _result ?? const Text("No search")],);
      }
    );

  }

}

