import 'package:flutter/material.dart';
import '../model/formula.dart';
import '../strings.dart';

class FormulaDetailsPage extends StatelessWidget {
  final Formula formula;

  const FormulaDetailsPage({Key? key, required this.formula})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appTitle)
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 4.0),
            child: Text(
              formula.formulaName,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 0.0),
            child: Text(
              formula.useCase,
              style: const TextStyle(
                fontSize: 16
              )
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Parameters",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
              ),
              textAlign: TextAlign.center,
            )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _parameterBuilder(formula.parameterDefinition),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Return Type: ${formula.returnType}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
          )
        ]
      )
    );
  }

  Widget _parameterBuilder(Map<String, String> parameters) {
    List<Container> parameterRows = [];
    parameterRows.add(Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black, width: 3))
      ),
    ));
    parameters.forEach((key, value) {
      parameterRows.add(
          Container(
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black, width: 3))
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 9,
                    child: Text(key)
                  ),
                  Expanded(
                    flex: 21,
                    child: Text(value)
                  )
                ]
              ),
            ),
          )
      );
    });

    return Column(
      children: parameterRows
    );
  }
}
