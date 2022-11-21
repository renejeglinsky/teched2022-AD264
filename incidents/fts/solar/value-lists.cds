
using { IncidentsService, EnumsCodeList, sap.capire.incmgt.Incidents } from './fiori';


//
// Value Lists
//

define entity sap.capire.incmgt.Incidents_component : EnumsCodeList {};
extend entity Incidents with {
  component_: Association to sap.capire.incmgt.Incidents_component on component_.value = component;
  extend component with @Common : {
    Text: component_.label, TextArrangement : #TextOnly,
    ValueListWithFixedValues,
    ValueList: {
      CollectionPath:'Incidents_component',
      Parameters:[
        { $Type: 'Common.ValueListParameterInOut', LocalDataProperty: component, ValueListProperty: 'value' },
      ],
    },
  };
}

define entity sap.capire.incmgt.Incidents_orientation : EnumsCodeList {};
extend entity Incidents with {
  orientation_: Association to sap.capire.incmgt.Incidents_orientation on orientation_.value = orientation;
  extend orientation with @Common : {
    Text: orientation_.label, TextArrangement : #TextOnly,
    ValueListWithFixedValues,
    ValueList: {
      CollectionPath:'Incidents_orientation',
      Parameters:[
        { $Type: 'Common.ValueListParameterInOut', LocalDataProperty: orientation, ValueListProperty: 'value' },
      ],
    },
  };
}

define entity sap.capire.incmgt.Incidents_weather : EnumsCodeList {};
extend entity Incidents with {
  weather_: Association to sap.capire.incmgt.Incidents_weather on weather_.value = weather;
  extend weather with @Common : {
    Text: weather_.label, TextArrangement : #TextOnly,
    ValueListWithFixedValues,
    ValueList: {
      CollectionPath:'Incidents_weather',
      Parameters:[
        { $Type: 'Common.ValueListParameterInOut', LocalDataProperty: weather, ValueListProperty: 'value' },
      ],
    },
  };
}
