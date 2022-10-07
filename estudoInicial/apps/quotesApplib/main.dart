import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}


class _QuoteListState extends State<QuoteList> {

    List<Quote> quotes = [
      Quote(text: 'The only true wisdom is in knowing you know nothing', author: 'Socrates '),
      Quote(text: 'All men are by nature equal, made all of the same earth by one workman', author: 'Plato '),
      Quote(text: 'I have no special talent. I am only passionately curious', author: 'Albert ainsten ')
    ];
    


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList()
      ),
    );
  }
}

