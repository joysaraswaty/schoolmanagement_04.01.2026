sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"schoolstudentmanagement/test/integration/pages/SchoolList",
	"schoolstudentmanagement/test/integration/pages/SchoolObjectPage"
], function (JourneyRunner, SchoolList, SchoolObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('schoolstudentmanagement') + '/test/flpSandbox.html#schoolstudentmanagement-tile',
        pages: {
			onTheSchoolList: SchoolList,
			onTheSchoolObjectPage: SchoolObjectPage
        },
        async: true
    });

    return runner;
});

