% consult('/Users/rizkyagung/Documents/ComputerScience/sistempakar/nutrisi.pl').

% Expert system should be started from here
mulai :-
    intro,
    reset_answers,
    find_menu(Menu),
    describe(Menu), nl.

intro :-
    write('Selamat datang di sistem pakar untuk menentukan nutrisi dan jenis makanan'), nl,
    write('untuk menjawab, pilih nomor yang sesuai kemudian diikuti titik (.)'), nl, nl.

find_menu(Menu) :-
    menu(Menu), !.

% Store user answers to be able to track his progress
:- dynamic(progress/2).


% Clear stored user progress
% reset_answers must always return true; because retract can return either true
% or false, we fail the first and succeed with the second.
reset_answers :-
    retract(progress(_, _)),
    fail.
reset_answers.

% Rules for the knowledge base    
menu(menu_1000_veg_diet) :-
    kalori(kalori_1000_sd_1250),
    vegetarian(vegan),
    diet(sedang_diet).

menu(menu_1000_non_veg_diet_seafood) :-
    kalori(kalori_1000_sd_1250),
    vegetarian(non_vegan),
    diet(sedang_diet),
    preferensi(seafood).

menu(menu_1000_non_veg_diet_non_seafood) :-
    kalori(kalori_1000_sd_1250),
    vegetarian(non_vegan),
    diet(sedang_diet),
    preferensi(non_seafood).


menu(menu_1250_veg_diet) :-
    kalori(kalori_1250_sd_1500),
    vegetarian(vegan),
    diet(sedang_diet).

menu(menu_1250_non_veg_diet_seafood) :-
    kalori(kalori_1250_sd_1500),
    vegetarian(non_vegan),
    diet(sedang_diet),
    preferensi(seafood).

menu(menu_1250_non_veg_diet_non_seafood) :-
    kalori(kalori_1250_sd_1500),
    vegetarian(non_vegan),
    diet(sedang_diet),
    preferensi(non_seafood).

menu(menu_1500_veg_diet) :-
    kalori(kalori_1500_sd_1750),
    vegetarian(vegan),
    diet(sedang_diet).

menu(menu_1500_non_veg_diet_seafood) :-
    kalori(kalori_1500_sd_1750),
    vegetarian(non_vegan),
    diet(sedang_diet),
    preferensi(seafood).

menu(menu_1500_non_veg_diet_non_seafood) :-
    kalori(kalori_1500_sd_1750),
    vegetarian(non_vegan),
    diet(sedang_diet),
    preferensi(non_seafood).

menu(menu_1750_veg_diet) :-
    kalori(kalori_1750_sd_2000),
    vegetarian(vegan),
    diet(sedang_diet).

menu(menu_1750_non_veg_diet_seafood) :-
    kalori(kalori_1000_sd_1250),
    vegetarian(non_vegan),
    diet(sedang_diet),
    preferensi(seafood).

menu(menu_1750_non_veg_diet_non_seafood) :-
    kalori(kalori_1000_sd_1250),
    vegetarian(non_vegan),
    diet(sedang_diet),
    preferensi(non_seafood).



% Questions for the knowledge base
question(kalori) :-
    write('Pilih range jumlah kalori '), nl.

question(preferensi) :-
    write('Pilih seafood atau tidak'), nl.

question(vegetarian) :-
    write('Apakah anda vegetarian?'), nl.

question(diet) :-
    write('Apakah sedang dalam diet?'), nl.



% Answers for the knowledge base
answer(kalori_1000_sd_1250) :-
    write('Range kalori 1000 - 1250').

answer(kalori_1250_sd_1500) :-
    write('Range kalori 1250 - 1500').

answer(kalori_1500_sd_1750) :-
    write('Range kalori 1500 - 1750').

answer(kalori_1750_sd_2000) :-
    write('Range kalori 1750 - 2000').

answer(kalori_2000_sd_2250) :-
    write('Range kalori 2000 - 2250').

answer(seafood) :-
    write('Seafood').

answer(non_seafood) :-
    write('Non seafood').

answer(vegan) :-
    write('Saya vegetarian').

answer(non_vegan) :-
    write('Saya bukan vegetarian').

answer(sedang_diet) :-
    write('Sedang diet').

answer(tidak_diet) :-
    write('Sedang tidak diet').



describe(menu_1000_veg_diet) :-
    write('Kebutuhan kalori perhari anda pada range 1000 - 1250 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_1000_non_veg_diet_seafood) :-
    write('Kebutuhan kalori perhari anda pada range 1000 - 1250 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_1000_non_veg_diet_non_seafood) :-
    write('Kebutuhan kalori perhari anda pada range 1000 - 1250 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_1250_veg_diet) :-
    write('Kebutuhan kalori perhari anda pada range 1000 - 1250 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_1250_non_veg_diet_seafood) :-
    write('Kebutuhan kalori perhari anda pada range 1250 - 1500 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_1250_non_veg_diet_non_seafood) :-
    write('Kebutuhan kalori perhari anda pada range 1250 - 1500 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_1500_veg_diet) :-
    write('Kebutuhan kalori perhari anda pada range 1500 - 1750 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_1500_nonveg_diet_seafood) :-
    write('Kebutuhan kalori perhari anda pada range 1500 - 1750 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_1500_nonveg_diet_non_seafood) :-
    write('Kebutuhan kalori perhari anda pada range 1500 - 1750 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').


describe(menu_1750_veg_diet) :-
    write('Kebutuhan kalori perhari anda pada range 1750 - 2000 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_1750_nonveg_diet_seafood) :-
    write('Kebutuhan kalori perhari anda pada range 1750 - 2000 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_1750_nonveg_diet_non_seafood) :-
    write('Kebutuhan kalori perhari anda pada range 1750 - 2000 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_2000_veg_diet) :-
    write('Kebutuhan kalori perhari anda pada range 2000 - 2250 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_2000_nonveg_diet_seafood) :-
    write('Kebutuhan kalori perhari anda pada range 2000 - 2250 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

describe(menu_2000_nonveg_diet_non_seafood) :-
    write('Kebutuhan kalori perhari anda pada range 2000 - 2250 kkal, anda bukan vegetarian, dan sedang diet'), nl,
    write('Variasi menu makanan yang bisa digunakan untuk sekali makan :'), nl,
    write('1. Nasi putih 1 porsi (175 kkal), tempe 2 (80 kkal), telur ayam (50 kkal), alpukat 1/2 buah (50 kkal)'), nl,
    write('Total = 355 kkal'), nl,
    write('2. Burger (257 kkal), sawo (92 kkal)'), nl,
    write('Total = 349 kkal'), nl,
    write('3. Ayam panggang (164 kal), tempe 2 (80 kal), 1 gelas susu sapi (50 kal), jeruk manis 2 buah (50 kal)').

% Assigns an answer to questions from the knowledge base
kalori(Answer) :-
    progress(kalori, Answer).
kalori(Answer) :-
    \+ progress(kalori, _),
    ask(kalori, Answer, [kalori_1000_sd_1250, kalori_1251_sd_1500, kalori_1501_sd_1750, kalori_1751_sd_2000, kalori_2001_sd_2250]).

preferensi(Answer) :-
    progress(preferensi, Answer).
preferensi(Answer) :-
    \+ progress(preferensi, _),
    ask(preferensi, Answer, [seafood, non_seafood]).

vegetarian(Answer) :-
    progress(vegetarian, Answer).
vegetarian(Answer) :-
    \+ progress(vegetarian, _),
    ask(vegetarian, Answer, [vegan, non_vegan]).

diet(Answer) :-
    progress(diet, Answer).
diet(Answer) :-
    \+ progress(diet, _),
    ask(diet, Answer, [sedang_diet, tidak_diet]).


answers([], _).
answers([First|Rest], Index) :-
    write(Index), write(' '), answer(First), nl,
    NextIndex is Index + 1,
    answers(Rest, NextIndex).

parse(0, [First|_], First).
parse(Index, [First|Rest], Response) :-
    Index > 0,
    NextIndex is Index - 1,
    parse(NextIndex, Rest, Response).

ask(Question, Answer, Choices) :-
    question(Question),
    answers(Choices, 0),
    read(Index),
    parse(Index, Choices, Response),
    asserta(progress(Question, Response)),
    Response = Answer.