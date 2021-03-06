import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
    home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  //  List<String> quotes = [
  //    'Be yourself; everyone else is already taken',
  //    'I have nothing to declare except my genius',
  //    'The truth is rarely pure and never simple'
  //  ];

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple')
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin:EdgeInsets.fromLTRB(16,16,16,0),
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              quote.text,
              style:TextStyle(
                fontSize:18,
                color:Colors.grey[600]
              )
            ),
            SizedBox(height:6),
            Text(
              quote.author,
              style:TextStyle(
                fontSize:14,
                color:Colors.grey[800]

              )
            )
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}