class Formula {
  final String formulaName;
  final String useCase;
  final Map<String, String> parameterDefinition; // Parameter : Definition
  final String returnType;
  final Uri sampleSpreadsheet;

  Formula({
    required this.formulaName,
    required this.useCase,
    required this.parameterDefinition,
    required this.returnType,
    required this.sampleSpreadsheet
  });

  @override
  String toString() {
    String returnString = "$formulaName(";

    for (String parameter in parameterDefinition.keys) {
      returnString += parameter + (parameter == parameterDefinition.keys.last ? ", " : "");
    }

    returnString += "): $sampleSpreadsheet";

    return returnString;
  }
}