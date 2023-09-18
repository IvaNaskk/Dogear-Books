class Books {
  String title;
  String author;
  String image;
  String format;
  String genre;
  String ISBN;
  String desc;
  String price;

  Books(this.image, this.title, this.author, this.format, this.genre, this.ISBN,
      this.desc, this.price);
}

List<Books> books = [
  Books(
      'book1.png',
      'Catcher in the Rye',
      'J.D. Salinger',
      '234 pages | Paperback',
      'Novels, Classics',
      '9780316769174',
      'Fleeing the crooks at Pencey Prep, he pinballs around New York City seeking solace in fleeting encounters—shooting the bull with strangers in dive hotels, wandering alone round Central Park, getting beaten up by pimps and cut down by erstwhile girlfriends. The city is beautiful and terrible, in all its neon loneliness and seedy glamour, its mingled sense of possibility and emptiness. Holden passes through it like a ghost, thinking always of his kid sister Phoebe, the only person who really understands him, and his determination to escape the phonies and find a life of true meaning.',
      '699 den.'),
  Books(
      'book2.png',
      'Someone Like You',
      'Roald Dahl',
      '270 pages | Paperback',
      'Horror, Fiction',
      '9780141189642',
      'Here, in Roald Dahl first collection of his world famous dark and sinister adult stories, a wife serves a dish that baffles the police; a harmless bet suddenly becomes anything but; a curious machine reveals a horrifying truth about plants; and a man lies awake waiting to be bitten by the venomous snake asleep on his stomach.Through vendettas and desperate quests, bitter memories and sordid fantasies, Roald Dahls stories portray the strange and unexpected, sending a shiver down the spine.',
      '759 den.'),
  Books(
      'book3.png',
      'Lord of the Rings',
      'J.R.R. Tolkein',
      '366 pages | Hardcover ',
      'Fantasy, Adventure',
      '9780395647387',
      'In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins.From Saurons fastness in the Dark Tower of Mordor, his power spread far and wide. Sauron gathered all the Great Rings to him, but always he searched for the One Ring that would complete his dominion.',
      '1699 den.'),
  // Books('book4.png', 'Great Expectations', 'Charles Dickens'),
  Books(
      'book5.png',
      '1984',
      'George Orwell',
      '368 pages | Paperback',
      'Dystopia, Politics',
      '9780140817744',
      'The new novel by George Orwell is the major work towards which all his previous writing has pointed. Critics have hailed it as his "most solid, most brilliant" work. Though the story of Nineteen Eighty-Four takes place thirty-five years hence, it is in every sense timely. The scene is London, where there has been no new housing since 1950 and where the city-wide slums are called Victory Mansions. Science has abandoned Man for the State. As every citizen knows only too well, war is peace.',
      '399 den.'),
  Books(
      'book6.png',
      'Lord of the Flies',
      'William Golding',
      '182 pages | Hardcover',
      'Literature, School',
      '9780399529207',
      'At the dawn of the next world war, a plane crashes on an uncharted island, stranding a group of schoolboys. At first, with no adult supervision, their freedom is something to celebrate; this far from civilization the boys can do anything they want. Anything. They attempt to forge their own society, failing, however, in the face of terror, sin and evil. And as order collapses, as strange howls echo in the night, as terror begins its reign, the hope of adventure seems as far from reality as the hope of being rescued. Labeled a parable, an allegory, a myth, a morality tale, a parody, a political treatise, even a vision of the apocalypse, Lord of the Flies is perhaps our most memorable novel about “the end of innocence, the darkness of man’s heart.”',
      '379 den.'),
  Books(
      'book7.png',
      'To Kill A Mockingbird',
      'Harper Lee',
      '323 page | Hardcover',
      'Fiction, Classics',
      '9783498038083',
      'Compassionate, dramatic, and deeply moving, "To Kill A Mockingbird" takes readers to the roots of human behavior - to innocence and experience, kindness and cruelty, love and hatred, humor and pathos. Now with over 18 million copies in print and translated into forty languages, this regional story by a young Alabama woman claims universal appeal. Harper Lee always considered her book to be a simple love story. Today it is regarded as a masterpiece of American literature.',
      '499 den.'),
  Books(
      'book8.png',
      'Brave New World',
      'Aldous Huxley',
      '268 pages | Paperback',
      'Novels, Science',
      '9780809590469',
      'Brave New World is a dystopian novel by English author Aldous Huxley, written in 1931 and published in 1932. Largely set in a futuristic World State, inhabited by genetically modified citizens and an intelligence-based social hierarchy, the novel anticipates huge scientific advancements in reproductive technology, sleep-learning, psychological manipulation and classical conditioning that are combined to make a dystopian society which is challenged by only a single individual: the story protagonist.',
      '599 den.'),
];
