import '../model/formula.dart';

List<Formula> formulas = [
  Formula(
    formulaName: "VLOOKUP",
    useCase: "Look up a corresponding value based on a search for a key value in the starting column of a selected range",
    parameterDefinition: {
      "lookup_value": "String, Number - Target value to search for in first column of 'table_array'",
      "table_array": "Range - Contiguous range of cells to be used as the lookup area",
      "col_index_num": "Number - Column to use when returning a value based on the lookup_value in the first column of the table_array",
      "[range_lookup]": "Boolean - True requires an exact match to return without error while False requires only an approximate match to return a value"
    },
    returnType: "Variant",
    sampleSpreadsheet: Uri(path: "test.png")
  ),
  Formula(
      formulaName: "HLOOKUP",
      useCase: "Look up a corresponding value based on a search for a key value in the starting row of a selected range",
      parameterDefinition: {
        "lookup_value": "String, Number - Target value to search for in first row of 'table_array'",
        "table_array": "Range - Contiguous range of cells to be used as the lookup area",
        "col_index_num": "Number - Row to use when returning a value based on the lookup_value in the first row of the table_array",
        "[range_lookup]": "Boolean - True requires an exact match to return without error while False requires only an approximate match to return a value"
      },
      returnType: "Variant",
      sampleSpreadsheet: Uri(path: "test.png")
  ),
  Formula(
      formulaName: "SUM",
      useCase: "Sums up a list of numbers, returning the result",
      parameterDefinition: {
        "number...": "List of Numbers and/or Range of Numbers - Summarizes the list of Numbers and Ranges of Numbers, with the ability to mix both'"
      },
      returnType: "Number",
      sampleSpreadsheet: Uri(path: "test.png")
  ),
  Formula(
    formulaName: "SUMIF",
    useCase: "Sums up a list of numbers in a contiguous row or column that meet a single criteria in a corresponding contiguous row or column",
    parameterDefinition: {
      "range": "Range - Contiguous row or column to be tested by the 'criteria' - Row or column must be identical in type (row or column) and length as the 'sum_range'",
      "criteria": "Variant - Testing criteria used against the 'range'",
      "[sum_range]": "Range - Contiguous row or column to be summed if 'criteria' is met - Row or column must be identical in type (row or column) and length as 'range' - Default sum_range is identical to 'range'"
    },
    returnType: "Number",
    sampleSpreadsheet: Uri(path: "test.png")
  ),
  Formula(
      formulaName: "SUMIFS",
      useCase: "Sums up a list of numbers in a contiguous row or column that meet one or more criteria in  corresponding contiguous rows or columns",
      parameterDefinition: {
        "[sum_range]": "Range - Contiguous row or column to be summed if 'criteria' is met - Row or column must be identical in type (row or column) and length as 'range' - Default sum_range is identical to 'range'",
        "<Criteria, Range>...": "List<Criteria, Range> - A list of Criteria-Range pairs as defined by the following parameter definitions:",
        "range": "Range - Contiguous row or column to be tested by the 'criteria' - Row or column must be identical in type (row or column) and length as the 'sum_range'",
        "criteria": "Variant - Testing criteria used against the 'range'"
      },
      returnType: "",
      sampleSpreadsheet: Uri(path: "test.png")
  ),
  Formula(
      formulaName: "LEFT",
      useCase: "Extracts x number of characters beginning on the left side of the target string",
      parameterDefinition: {
        "text": "String - Target text via hard-coded string or cell reference",
        "[num_chars]": "Number - Number of characters to be extracted from the string beginning at the left side continuing to the right - Default is 1"
      },
      returnType: "String",
      sampleSpreadsheet: Uri(path: "test.png")
  ),
  Formula(
      formulaName: "RIGHT",
      useCase: "Extracts x number of characters beginning on the right side of the target string",
      parameterDefinition: {
        "text": "String - Target text via hard-coded string or cell reference",
        "[num_chars]": "Number - Number of characters to be extracted from the string beginning at the right side continuing to the left - Default is 1"
      },
      returnType: "String",
      sampleSpreadsheet: Uri(path: "test.png")
  ),
  Formula(
      formulaName: "MID",
      useCase: "Extracts x number of characters beginning at the starting character identified of the target string",
      parameterDefinition: {
        "text": "String - Target text via hard-coded string or cell reference",
        "startNum": "Number - Starting position of characters to be extracted in the string",
        "num_chars": "Number - Number of characters to be extracted from the string beginning at the 'startNum' position continuing to the right"
      },
      returnType: "String",
      sampleSpreadsheet: Uri(path: "test.png")
  ),
];