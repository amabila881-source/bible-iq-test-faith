import 'package:flutter/material.dart';
void main() { runApp(BibleIQApp()); }
class BibleIQApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: CoverPage());
  }
}
class CoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A237E),
      body: Center(child: Padding(padding: EdgeInsets.all(24), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.menu_book_rounded, size: 100, color: Colors.amber),
        Text("BIBLE IQ", style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: Colors.white)),
        Text("Test Your Faith", style: TextStyle(color: Colors.white70)),
        SizedBox(height: 20),
        Text("📖 50 Questions\n🏆 Bible Master", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
        SizedBox(height: 40),
        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.amber, padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16)), onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage())), child: Text("START QUIZ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
      ]))),
    );
  }
}class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}
class _QuizPageState extends State<QuizPage> {
  int currentQ = 0; int score = 0;
  List questions = [
    {"q": "How many books in the Bible?", "options": ["66", "70", "60", "50"], "answer": 0},
    {"q": "Who built the Ark?", "options": ["Moses", "Noah", "Abraham", "David"], "answer": 1},
    {"q": "Where was Jesus born?", "options": ["Nazareth", "Bethlehem", "Jerusalem", "Egypt"], "answer": 1},
    {"q": "How many disciples?", "options": ["10", "12", "7", "11"], "answer": 1},
    {"q": "Who swallowed by fish?", "options": ["Moses", "Jonah", "Peter", "Paul"], "answer": 1},
    {"q": "First book of Bible?", "options": ["Exodus", "Genesis", "Matthew", "Psalms"], "answer": 1},
    {"q": "Who killed Goliath?", "options": ["Saul", "David", "Solomon", "Samson"], "answer": 1},
    {"q": "Days God created world?", "options": ["6", "7", "5", "10"], "answer": 0},
    {"q": "Who led Israel from Egypt?", "options": ["Abraham", "Moses", "Joshua", "David"], "answer": 1},
    {"q": "Jesus turned water to?", "options": ["Juice", "Wine", "Milk", "Honey"], "answer": 1},
    {"q": "Who betrayed Jesus?", "options": ["Peter", "Judas", "John", "Thomas"], "answer": 1},
    {"q": "Adam and Eve lived?", "options": ["Garden of Eden", "Jerusalem", "Egypt", "Babylon"], "answer": 0},
    {"q": "Strongest man?", "options": ["David", "Samson", "Goliath", "Saul"], "answer": 1},
    {"q": "How many commandments?", "options": ["10", "12", "7", "15"], "answer": 0},
    {"q": "Wrote most Psalms?", "options": ["Moses", "David", "Solomon", "Asaph"], "answer": 1},
    {"q": "Last book of Bible?", "options": ["Jude", "Revelation", "Malachi", "Acts"], "answer": 1},
    {"q": "Jesus walked on?", "options": ["Sand", "Water", "Fire", "Cloud"], "answer": 1},
    {"q": "Jesus mother?", "options": ["Sarah", "Mary", "Martha", "Elizabeth"], "answer": 1},
    {"q": "Jesus started ministry age?", "options": ["30", "12", "33", "25"], "answer": 0},
    {"q": "Denied Jesus 3 times?", "options": ["Peter", "John", "James", "Judas"], "answer": 0},
    {"q": "Jesus baptized river?", "options": ["Nile", "Jordan", "Euphrates", "Red Sea"], "answer": 1},
    {"q": "Received 10 commandments?", "options": ["Abraham", "Moses", "Noah", "Isaac"], "answer": 1},
    {"q": "Jesus in desert days?", "options": ["30", "40", "7", "12"], "answer": 1},
    {"q": "First king Israel?", "options": ["David", "Saul", "Solomon", "Samuel"], "answer": 1},
    {"q": "Pauls name before?", "options": ["Simon", "Saul", "Silas", "Stephen"], "answer": 1},
        {"q": "Thrown in lions den?", "options": ["Daniel", "David", "Joseph", "Jeremiah"], "answer": 0},
    {"q": "Plagues in Egypt?", "options": ["7", "10", "12", "5"], "answer": 1},
    {"q": "Built Temple?", "options": ["David", "Solomon", "Moses", "Nehemiah"], "answer": 1},
    {"q": "Fed 5000 with?", "options": ["Bread and Fish", "Meat", "Manna", "Rice"], "answer": 0},
    {"q": "First man?", "options": ["Noah", "Adam", "Abraham", "Moses"], "answer": 1},
    {"q": "First woman?", "options": ["Sarah", "Eve", "Mary", "Ruth"], "answer": 1},
    {"q": "Killed Abel?", "options": ["Adam", "Cain", "Seth", "Lamech"], "answer": 1},
    {"q": "Solomon wives?", "options": ["700", "300", "1000", "1"], "answer": 0},
    {"q": "Tax collector disciple?", "options": ["Matthew", "Mark", "Luke", "John"], "answer": 0},
    {"q": "Paul wrote letters in?", "options": ["Prison", "Home", "Temple", "Ship"], "answer": 0},
    {"q": "Wages of sin?", "options": ["Death", "Sickness", "Poverty", "Shame"], "answer": 0},
    {"q": "Interpreted Pharaoh dreams?", "options": ["Moses", "Joseph", "Daniel", "Aaron"], "answer": 1},
    {"q": "Noahs Ark mountain?", "options": ["Sinai", "Ararat", "Zion", "Carmel"], "answer": 1},
    {"q": "Mother of Samuel?", "options": ["Hannah", "Peninnah", "Sarah", "Rachel"], "answer": 0},
    {"q": "Fruits of Spirit?", "options": ["7", "9", "12", "6"], "answer": 1},
    {"q": "Alpha and Omega?", "options": ["Moses", "Jesus", "David", "Abraham"], "answer": 1},
    {"q": "Jesus rose day?", "options": ["Friday", "Saturday", "Sunday", "Monday"], "answer": 2},
    {"q": "Saw Jesus first after resurrection?", "options": ["Peter", "Mary Magdalene", "John", "Thomas"], "answer": 1},
    {"q": "How many Gospels?", "options": ["3", "4", "5", "6"], "answer": 1},
    {"q": "NT written language?", "options": ["Hebrew", "Greek", "Latin", "Aramaic"], "answer": 1},
    {"q": "Blinded Damascus road?", "options": ["Peter", "Paul", "Silas", "Barnabas"], "answer": 1},
    {"q": "Fiery furnace?", "options": ["Shadrach Meshach Abednego", "Daniel", "Joseph", "Moses"], "answer": 0},
    {"q": "God gave Noah after flood?", "options": ["Star", "Rainbow", "Cloud", "Dove"], "answer": 1},
    {"q": "Wisest king?", "options": ["David", "Solomon", "Hezekiah", "Josiah"], "answer": 1},
    {"q": "Moses died where?", "options": ["Mt Sinai", "Mt Nebo", "Mt Zion", "Mt Carmel"], "answer": 1},
  ];
  void checkAnswer(int selected) {
    if (selected == questions[currentQ]["answer"]) score++;
    if (currentQ < questions.length - 1) {
      setState(() => currentQ++);
    } else {
      showDialog(context: context, barrierDismissible: false, builder: (_) => AlertDialog(title: Text("🏆 Finished!"), content: Text("Score: $score / ${questions.length}"), actions: [TextButton(onPressed: () { Navigator.pop(context); setState(() { currentQ=0; score=0; }); }, child: Text("Restart"))]));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bible IQ ${currentQ+1}/50 - Score $score"), backgroundColor: Color(0xFF1A237E)),
      body: Padding(padding: EdgeInsets.all(20), child: Column(children: [
        LinearProgressIndicator(value: (currentQ+1)/50, color: Colors.amber),
        SizedBox(height: 20),
        Text(questions[currentQ]["q"], style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        ...List.generate(questions[currentQ]["options"].length, (i) {
          return Padding(padding: EdgeInsets.symmetric(vertical: 6), child: ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)), onPressed: () => checkAnswer(i), child: Text(questions[currentQ]["options"][i])));
        }),
      ])),
    );
  }
}