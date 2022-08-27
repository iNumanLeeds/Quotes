import 'package:flutter/material.dart';
import 'package:quotes/quote_dto/quote.dart';
import 'cards/quote_card.dart';

void main() => runApp(MaterialApp(home: Quoteslist()));

class Quoteslist extends StatefulWidget {
  const Quoteslist({Key? key}) : super(key: key);

  @override
  State<Quoteslist> createState() => _QuoteslistState();
}

class _QuoteslistState extends State<Quoteslist> {
  //  List<String> quotes = [
  //    'Be yourself; everyone else is already taken',
  //    'I have nothing to declare except my genius',
  //    'The truth is rarely pure and never simple'
  //  ];

  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            // .map((quote) => Text('${quote.text} - ${quote.author}'))
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
