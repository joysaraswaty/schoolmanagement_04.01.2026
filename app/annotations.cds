using { schoolmanagementSrv } from '../srv/service.cds';

annotate schoolmanagementSrv.School with @UI.HeaderInfo: { TypeName: 'School', TypeNamePlural: 'Schools', Title: { Value: schoolid } };
annotate schoolmanagementSrv.School with {
  ID @UI.Hidden @Common.Text: { $value: schoolid, ![@UI.TextArrangement]: #TextOnly }
};
annotate schoolmanagementSrv.School with @UI.Identification: [{ Value: schoolid }];
annotate schoolmanagementSrv.School with @UI.DataPoint #SchoolName: {
  Value: SchoolName,
  Title: 'School Name',
};
annotate schoolmanagementSrv.School with @UI.DataPoint #Principal: {
  Value: Principal,
  Title: 'Principal',
};
annotate schoolmanagementSrv.School with @UI.DataPoint #Curriculum: {
  Value: Curriculum,
  Title: 'Curriculum',
};
annotate schoolmanagementSrv.School with {
  schoolid @title: 'School ID';
  SchoolName @title: 'School Name';
  Principal @title: 'Principal';
  SchoolStrength @title: 'School Strength';
  Curriculum @title: 'Curriculum';
  rating @title: 'Rating';
  createdAt @title: 'Created At';
  createdBy @title: 'Created By';
  modifiedAt @title: 'Modified At';
  modifiedBy @title: 'Modified By'
};

annotate schoolmanagementSrv.School with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: schoolid },
 { $Type: 'UI.DataField', Value: SchoolName },
 { $Type: 'UI.DataField', Value: Principal },
 { $Type: 'UI.DataField', Value: SchoolStrength },
 { $Type: 'UI.DataField', Value: Curriculum },
 { $Type: 'UI.DataField', Value: rating }
];

annotate schoolmanagementSrv.School with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: schoolid },
 { $Type: 'UI.DataField', Value: SchoolName },
 { $Type: 'UI.DataField', Value: Principal },
 { $Type: 'UI.DataField', Value: SchoolStrength },
 { $Type: 'UI.DataField', Value: Curriculum },
 { $Type: 'UI.DataField', Value: rating },
 { $Type: 'UI.DataField', Value: createdAt },
 { $Type: 'UI.DataField', Value: createdBy },
 { $Type: 'UI.DataField', Value: modifiedAt },
 { $Type: 'UI.DataField', Value: modifiedBy }
  ]
};

annotate schoolmanagementSrv.School with {
  students @Common.Label: 'Students'
};

annotate schoolmanagementSrv.School with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#SchoolName' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#Principal' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#Curriculum' }
];

annotate schoolmanagementSrv.School with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' },
  { $Type : 'UI.ReferenceFacet', ID : 'Student', Target : 'students/@UI.LineItem' }
];

annotate schoolmanagementSrv.School with @UI.SelectionFields: [
  schoolid
];

annotate schoolmanagementSrv.Student with @UI.HeaderInfo: { TypeName: 'Student', TypeNamePlural: 'Students', Title: { Value: studentid } };
annotate schoolmanagementSrv.Student with {
  ID @UI.Hidden @Common.Text: { $value: studentid, ![@UI.TextArrangement]: #TextOnly }
};
annotate schoolmanagementSrv.Student with @UI.Identification: [{ Value: studentid }];
annotate schoolmanagementSrv.Student with {
  school @Common.ValueList: {
    CollectionPath: 'School',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: school_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'schoolid'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'SchoolName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'Principal'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'SchoolStrength'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'Curriculum'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'rating'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedBy'
      },
    ],
  }
};
annotate schoolmanagementSrv.Student with @UI.DataPoint #firstName: {
  Value: firstName,
  Title: 'First Name',
};
annotate schoolmanagementSrv.Student with @UI.DataPoint #phoneNumber: {
  Value: phoneNumber,
  Title: 'Phone Number',
};
annotate schoolmanagementSrv.Student with {
  studentid @title: 'Student ID';
  firstName @title: 'First Name';
  lastName @title: 'Last Name';
  dateOfBirth @title: 'Date of Birth';
  dateOfJoining @title: 'Date of Joining';
  email @title: 'Email';
  phoneNumber @title: 'Phone Number';
  createdAt @title: 'Created At';
  createdBy @title: 'Created By';
  modifiedAt @title: 'Modified At';
  modifiedBy @title: 'Modified By'
};

annotate schoolmanagementSrv.Student with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: studentid },
 { $Type: 'UI.DataField', Value: firstName },
 { $Type: 'UI.DataField', Value: lastName },
 { $Type: 'UI.DataField', Value: dateOfBirth },
 { $Type: 'UI.DataField', Value: dateOfJoining },
 { $Type: 'UI.DataField', Value: email },
 { $Type: 'UI.DataField', Value: phoneNumber }
];

annotate schoolmanagementSrv.Student with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: studentid },
 { $Type: 'UI.DataField', Value: firstName },
 { $Type: 'UI.DataField', Value: lastName },
 { $Type: 'UI.DataField', Value: dateOfBirth },
 { $Type: 'UI.DataField', Value: dateOfJoining },
 { $Type: 'UI.DataField', Value: email },
 { $Type: 'UI.DataField', Value: phoneNumber },
 { $Type: 'UI.DataField', Value: createdAt },
 { $Type: 'UI.DataField', Value: createdBy },
 { $Type: 'UI.DataField', Value: modifiedAt },
 { $Type: 'UI.DataField', Value: modifiedBy }
  ]
};

annotate schoolmanagementSrv.Student with {
  school @Common.Text: { $value: school.schoolid, ![@UI.TextArrangement]: #TextOnly }
};

annotate schoolmanagementSrv.Student with {
  school @Common.Label: 'School'
};

annotate schoolmanagementSrv.Student with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#firstName' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#phoneNumber' }
];

annotate schoolmanagementSrv.Student with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate schoolmanagementSrv.Student with @UI.SelectionFields: [
  school_ID
];

