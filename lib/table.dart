import 'package:flutter/material.dart';


class PeriodicTable extends StatelessWidget {
  final List<Element> elements = [
    Element('H', 1, Colors.lightBlue),
    Element('He', 2, Colors.lightGreen),
    Element('Li', 3, Colors.red),
    Element('Be', 4, Colors.orange),
    Element('B', 5, Colors.yellow),
    Element('C', 6, Colors.green),
    Element('N', 7, Colors.blue),
    Element('O', 8, Colors.purple),
    Element('F', 9, Colors.pink),
    Element('Ne', 10, Colors.teal),
    Element('Na', 11, Colors.brown),
    Element('Mg', 12, Colors.grey),
    Element('Al', 13, Colors.cyan),
    Element('Si', 14, Colors.indigo),
    Element('P', 15, Colors.lime),
    Element('S', 16, Colors.amber),
    Element('Cl', 17, Colors.deepOrange),
    Element('Ar', 18, Colors.lightBlueAccent),
    Element('K', 19, Colors.lightGreenAccent),
    Element('Ca', 20, Colors.redAccent),
    // Add more elements up to element 118
    // You can use different colors for different groups of elements
    Element('Sc', 21, Colors.orangeAccent),
    Element('Ti', 22, Colors.yellowAccent),
    Element('V', 23, Colors.greenAccent),
    Element('Cr', 24, Colors.blueAccent),
    Element('Mn', 25, Colors.purpleAccent),
    Element('Fe', 26, Colors.pinkAccent),
    Element('Co', 27, Colors.tealAccent),
    Element('Ni', 28, Colors.brown),
    Element('Cu', 29, Colors.grey),
    Element('Zn', 30, Colors.cyanAccent),
    Element('Ga', 31, Colors.indigoAccent),
    Element('Ge', 32, Colors.limeAccent),
    Element('As', 33, Colors.amberAccent),
    Element('Se', 34, Colors.deepOrangeAccent),
    Element('Br', 35, Colors.lightBlue),
    Element('Kr', 36, Colors.lightGreen),
    Element('Rb', 37, Colors.red),
    Element('Sr', 38, Colors.orange),
    Element('Y', 39, Colors.yellow),
    Element('Zr', 40, Colors.green),
    Element('Nb', 41, Colors.blue),
    Element('Mo', 42, Colors.purple),
    Element('Tc', 43, Colors.pink),
    Element('Ru', 44, Colors.teal),
    Element('Rh', 45, Colors.brown),
    Element('Pd', 46, Colors.grey),
    Element('Ag', 47, Colors.cyan),
    Element('Cd', 48, Colors.indigo),
    Element('In', 49, Colors.lime),
    Element('Sn', 50, Colors.amber),
    Element('Sb', 51, Colors.deepOrange),
    Element('Te', 52, Colors.lightBlueAccent),
    Element('I', 53, Colors.lightGreenAccent),
    Element('Xe', 54, Colors.redAccent),
    Element('Cs', 55, Colors.orangeAccent),
    Element('Ba', 56, Colors.yellowAccent),
    Element('La', 57, Colors.greenAccent),
    Element('Ce', 58, Colors.blueAccent),
    Element('Pr', 59, Colors.purpleAccent),
    Element('Nd', 60, Colors.pinkAccent),
    Element('Pm', 61, Colors.tealAccent),
    Element('Sm', 62, Colors.brown),
    Element('Eu', 63, Colors.grey),
    Element('Gd', 64, Colors.cyanAccent),
    Element('Tb', 65, Colors.indigoAccent),
    Element('Dy', 66, Colors.limeAccent),
    Element('Ho', 67, Colors.amberAccent),
    Element('Er', 68, Colors.deepOrangeAccent),
    Element('Tm', 69, Colors.lightBlue),
    Element('Yb', 70, Colors.lightGreen),
    Element('Lu', 71, Colors.red),
    Element('Hf', 72, Colors.orange),
    Element('Ta', 73, Colors.yellow),
    Element('W', 74, Colors.green),
    Element('Re', 75, Colors.blue),
    Element('Os', 76, Colors.purple),
    Element('Ir', 77, Colors.pink),
    Element('Pt', 78, Colors.teal),
    Element('Au', 79, Colors.brown),
    Element('Hg', 80, Colors.grey),
    Element('Tl', 81, Colors.cyan),
    Element('Pb', 82, Colors.indigo),
    Element('Bi', 83, Colors.lime),
    Element('Po', 84, Colors.amber),
    Element('At', 85, Colors.deepOrange),
    Element('Rn', 86, Colors.lightBlueAccent),
    Element('Fr', 87, Colors.lightGreenAccent),
    Element('Ra', 88, Colors.redAccent),
    Element('Ac', 89, Colors.orangeAccent),
    Element('Th', 90, Colors.yellowAccent),
    Element('Pa', 91, Colors.greenAccent),
    Element('U', 92, Colors.blueAccent),
    Element('Np', 93, Colors.purpleAccent),
    Element('Pu', 94, Colors.pinkAccent),
    Element('Am', 95, Colors.tealAccent),
    Element('Cm', 96, Colors.brown),
    Element('Bk', 97, Colors.grey),
    Element('Cf', 98, Colors.cyanAccent),
    Element('Es', 99, Colors.indigoAccent),
    Element('Fm', 100, Colors.limeAccent),
    Element('Md', 101, Colors.amberAccent),
    Element('No', 102, Colors.deepOrangeAccent),
    Element('Lr', 103, Colors.lightBlue),
    Element('Rf', 104, Colors.lightGreen),
    Element('Db', 105, Colors.red),
    Element('Sg', 106, Colors.orange),
    Element('Bh', 107, Colors.yellow),
    Element('Hs', 108, Colors.green),
    Element('Mt', 109, Colors.blue),
    Element('Ds', 110, Colors.purple),
    Element('Rg', 111, Colors.pink),
    Element('Cn', 112, Colors.teal),
    Element('Nh', 113, Colors.brown),
    Element('Fl', 114, Colors.grey),
    Element('Mc', 115, Colors.cyan),
    Element('Lv', 116, Colors.indigo),
    Element('Ts', 117, Colors.lime),
    Element('Og', 118, Colors.amber),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 18, // Number of columns for the periodic table
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: elements.length,
      itemBuilder: (context, index) {
        return ElementTile(element: elements[index]);
      },
    );
  }
}

class Element {
  final String symbol;
  final int atomicNumber;
  final Color color;

  Element(this.symbol, this.atomicNumber, this.color);
}

class ElementTile extends StatelessWidget {
  final Element element;

  ElementTile({required this.element});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: element.color,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              element.symbol,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              element.atomicNumber.toString(),
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}