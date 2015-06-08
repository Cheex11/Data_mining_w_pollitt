var googleSpreadsheetURL = "https://docs.google.com/a/centuryinteractive.com/spreadsheets/d/11cvAkIFLJ-e6z2v1IybLAlfZvosPbff3GgiHMgHwtPE/edit?usp=sharing";  /* URL OF THE GOOGLE SPREADSHEET */

var pageTitle_str = "Centruy Interactive Employees";	/* TITLE OF THE PAGE */
var overIndexThreshold_num = 125;  /* MINIMUM INDEX REQUIRED FOR OVERINDEXING */
var underIndexThreshold_num = 50;  /* MAXIMUM INDEX REQUIRED FOR UNDERINDEXING */
var sampleSizePercentageThreshold_num = 2; /* MINIMUM OVERALL PERCENTAGE FOR INCLUSION IN DATA COMPARISONS */
var strongCorrelationThreshold_num = 0.5; /* BASELINE FOR 'STRONG' AND 'STRONG INVERSE' CORRELATION */
var moderateCorrelationThreshold_num = 0.25; /* BASELINE FOR 'MODERATE' AND 'MODERATE INVERSE' CORRELATION */
var variableInterestingThreshold_num = 7; /* THRESHOLD FOR MEASURE OF 'INTERESTING'. HIGHER THRESHOLD = SMALLER LIST */
var variableInterestingMaxCount_num = 5; /* MAXIMUM NUMBER OF 'INTERESTING' ITEMS CALLED OUT */
var snapshotThreshold_num = 50; /* % OF POPULATION REQUIRED TO ASCRIBE A VARIABLE TO THE 'SNAPSHOT' SECTION */