import 'package:flutter/material.dart';
import '../model/formula.dart';
import '../data/formula_list.dart';
import 'formula_details_page.dart';

class FormulasPage extends StatefulWidget {
  const FormulasPage({Key? key}) : super(key: key);

  @override
  _FormulasPageState createState() => _FormulasPageState();
}

class _FormulasPageState extends State<FormulasPage> {
  final List<Formula> _formulaList = formulas;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _formulaList.length,
      itemBuilder: (BuildContext context, int position) {
        return _buildFormulaRow(_formulaList[position]);
      }
    );
  }

  Widget _buildFormulaRow(Formula formula) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.green,
              width: 2.0
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(3.0, 5.0)
            )
          ],
          color: Colors.white
      ),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            formula.formulaName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
          ),
        ),
        subtitle: Text(
          formula.useCase
        ),
        onTap: () {
          Navigator.of(context).push<MaterialPageRoute>(
            MaterialPageRoute(
              builder: (context) => FormulaDetailsPage(formula: formula)
            )
          );
        },
      )
    );
  }
}
