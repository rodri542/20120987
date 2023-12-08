
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Definición de mobs en Minecraft
mob(zombie).
mob(esqueleto).
mob(creeper).
mob(enderman).
mob(araña).
mob(bruja).
mob(ghast).
mob(endermite).
mob(lobos).
mob(guardian).
mob(husky).
mob(pato).

% Definición de biomas en Minecraft
bioma(bosque).
bioma(llanura).
bioma(desierto).
bioma(montaña).
bioma(jungla).
bioma(oceano).
bioma(tundra).
bioma(bosque_oscuro).
bioma(bioma_nieve).
bioma(bioma_mushroom).
bioma(bioma_taal).
bioma(bioma_river).

% Definición de los elementos básicos
elemento(madera).
elemento(tronco).
elemento(hojas).
elemento(palos).
elemento(manzanas).
elemento(tablones).
elemento(piedra).
elemento(adoquin).
elemento(mineral_carbon).
elemento(mineral_hierro).
elemento(mineral_oro).
elemento(mineral_diamante).
elemento(mineral_lapislazuli).
elemento(mineral_redstone).
elemento(mineral_esmeralda).
elemento(mineral_cuarzo_nether).
elemento(mineral_netherita_antigua).
elemento(cobre_en_bruto).
elemento(fragmento_amatista).

%crafteos
craft(palos, [tablones]).
craft(tablones, [tronco]).
craft(arbol, [tronco, hojas, palos, manzanas]).
craft(tablones, [madera]).
craft(escalerilla, [tablones, tablones, tablones, tablones, tablones]).
craft(adoquin, [piedra]).
craft(carbon, [mineral_carbon]).
craft(lingote_hierro, [mineral_hierro]).
craft(lingote_oro, [mineral_oro]).
craft(diamante, [mineral_diamante]).
craft(tinte_lapislazuli, [mineral_lapislazuli]).
craft(polvo_redstone, [mineral_redstone]).
craft(esmeralda, [mineral_esmeralda]).
craft(cuarzo_nether, [mineral_cuarzo_nether]).
craft(fragmento_netherita, [mineral_netherita_antigua]).
craft(lingote_netherita, [fragmento_netherita]).
craft(valla, [tablones, tablones, tablones]).
craft(puerta_madera, [tablones, tablones]).
craft(trampa, [tablones, tablones, tablones, tablones]).
craft(mesa_trabajo, [tablones, tablones, tablones, tablones]).
craft(libro, [tablones, cuero]).
craft(cuadro, [tablones, tablones, tablones, tablones, pintura]).
craft(cartel, [tablones, tablones, tablones, palos, palos, palos]).
craft(estanteria, [tablones, tablones, tablones, libro]).
craft(cama, [tablones, tablones, tablones, lana, lana, lana]).
craft(letrero, [tablones, tablones, tablones, tablones, palos, palos, palos, palos, palos]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


eliza:-	writeln('Hola , mi nombre es  Eliza tu  chatbot,
	por favor ingresa tu consulta,
	usar solo minúsculas sin . al final:'),
	readln(Input),
	eliza(Input),!.
eliza(Input):- Input == ['Adios'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input):- Input == ['Adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	eliza(Input1), !.





template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'como', estas, tu, '?'], [4]).
template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 0, '?'], [4]).

template([hola, ',', mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).
template([buendia, ',', mi, nombre, es, s(_), '.'], ['Buendia', 'Como', estas, tu, 0, '?'], [5]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5Templates

template([hola, yo, soy, s(_),'.'], [y, quien, es, 0, '?'], [3]). 

template([hola, yo, tengo, s(_), anios, '.'], [de, verdad, tienes, 0, '?'], [3]).

template([yo, s(_), soy, el,hijo, de, s(_),'.'], [el,padre,de, 0, es, 1, '.'], [1, 6]).  

template([hola,quien, eres,'?'], [Hola, yo, soy, Eliza],[]). 

template([dime, que, es, lo,que,sabes,'?'], ["Yo se mucho de minecraft, del cancer de pancreas y se todo de ti :D"], []).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%MINECRAFT

template([quien, creó, minecraft, '?'], ["El creador de minecraft eson dos y son Markus Persson y Jens Bergensten"], []). 

% Template para preguntar por mobs en Minecraft
template([cuáles, son, algunos, mobs, en, Minecraft, '?'], ['En Minecraft, algunos mobs comunes son zombies, esqueletos, creepers, enderman, arañas, brujas y ghasts.'], []).

% Template para preguntar por minerales en Minecraft
template([cuáles, son, algunos, minerales, en, Minecraft, '?'], ['En Minecraft, puedes encontrar minerales como carbón, hierro, oro, diamantes, lapislázuli, redstone, esmeraldas, cuarzo del Nether y netherita antigua.'], []).

% Template para preguntar por materiales en Minecraft
template([cuáles, son, algunos, materiales, en, Minecraft, '?'], ['Algunos materiales en Minecraft incluyen madera, piedra, tablones, adoquín, lana, cama, hierro, oro, diamantes, lapislázuli, polvora de fuego, esmeraldas, cuarzo y netherita.'], []).

% Template para preguntar por crafteos en Minecraft
template([cómo, puedo, hacer, tablones, de, madera, '?'], ['Para hacer tablones de madera, coloca madera en la mesa de trabajo y crea tablones.'], []).

% Template para preguntar por estructuras en Minecraft
template([puedes, decirme, sobre, las, aldeas, en, Minecraft, '?'], ['Las aldeas en Minecraft son comunidades de aldeanos que viven juntos. Puedes encontrar casas, granjas y otros edificios en ellas.'], []).

% Template para preguntar sobre eventos especiales en Minecraft
template([qué, pasa, durante, un, eclipse, solar, en, Minecraft, '?'], ['En Minecraft, no hay eventos de eclipses solares. Sin embargo, hay eventos como la Noche de Brujas y la Noche del Creeper.'], []).

template([los, s(_), son, elementos, en, minecraft,'?'], [flagelemento], [1]).

template([s(_), es, un, bioma, en, minecraft,'?'], [flagbioma], [0]).

template([los, s(_), son, mobs, en, minecraft,'?'], [flagmob], [1]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Hechos sobre los síntomas del cáncer de páncreas
sintoma(cancer_pancreas, dolor_abdominal).
sintoma(cancer_pancreas, perdida_peso).
sintoma(cancer_pancreas, ictericia).
sintoma(cancer_pancreas, cambios_heces).
sintoma(cancer_pancreas, nauseas).
sintoma(cancer_pancreas, pérdida_apetito).
sintoma(cancer_pancreas, debilidad).
sintoma(cancer_pancreas, diabetes_nueva).
sintoma(cancer_pancreas, cambios_color_orina).
sintoma(cancer_pancreas, problemas_digestivos).
sintoma(cancer_pancreas, pérdida_músculo).
sintoma(cancer_pancreas, coágulos_sanguíneos).
sintoma(cancer_pancreas, depresión).
sintoma(cancer_pancreas, fatiga_persistente).

% Hechos sobre las causas y factores de riesgo del cáncer de páncreas
causa(cancer_pancreas, antecedentes_familiares).
causa(cancer_pancreas, tabaquismo).
causa(cancer_pancreas, obesidad).
causa(cancer_pancreas, diabetes).
causa(cancer_pancreas, pancreatitis_cronica).
causa(cancer_pancreas, exposición_radiación).
causa(cancer_pancreas, edad_avanzada).
causa(cancer_pancreas, historia_familiar_cancer_pancreas).
causa(cancer_pancreas, gen_mutado_BRCA2).
causa(cancer_pancreas, dieta_rica_en_grasas).
causa(cancer_pancreas, síndrome_lynch).
causa(cancer_pancreas, consumo_excesivo_alcohol).
causa(cancer_pancreas, infección_helicobacter_pylori).
causa(cancer_pancreas, exposición_amiante).

% tratamientos y medicamentos para el cáncer de páncreas
tratamiento(cancer_pancreas, cirugia).
tratamiento(cancer_pancreas, quimioterapia).
tratamiento(cancer_pancreas, radioterapia).
tratamiento(cancer_pancreas, terapia_dirigida).
tratamiento(cancer_pancreas, quimioterapia_adyuvante).
tratamiento(cancer_pancreas, cirugia_reseccion).
tratamiento(cancer_pancreas, trasplante_pancreas).
tratamiento(cancer_pancreas, ablación_por_radiofrecuencia).
tratamiento(cancer_pancreas, quimioterapia_neoadyuvante).
tratamiento(cancer_pancreas, inmunoterapia).
tratamiento(cancer_pancreas, terapia_fotodinámica).
tratamiento(cancer_pancreas, bloqueadores_acido).
tratamiento(cancer_pancreas, terapia_genica).
tratamiento(cancer_pancreas, cuidados_paliativos).


% Reglas para preguntas y respuestas sobre el cáncer de páncreas
template([qué, es, el, cáncer, de, páncreas, '?'], ['El cáncer de páncreas es un tipo de cáncer que afecta al páncreas, un órgano importante del sistema digestivo.'], [1]).

template([cuáles, son, los, síntomas, del, cáncer, de, páncreas, '?'], ['Los síntomas comunes del cáncer de páncreas incluyen dolor abdominal, pérdida de peso, ictericia y cambios en el color de las heces.'], [2]).

template([cuáles, son, los, factores, de, riesgo, del, cáncer, de, páncreas, '?'], ['Los factores de riesgo del cáncer de páncreas incluyen antecedentes familiares, tabaquismo, obesidad y diabetes.'], [3]).

template([cómo, se, diagnostica, el, cáncer, de, páncreas, '?'], ['El cáncer de páncreas se diagnostica mediante pruebas como imágenes, análisis de sangre y biopsias.'], [4]).

template([cuál, es, el, tratamiento, para, el, cáncer, de, páncreas, '?'], ['El tratamiento para el cáncer de páncreas puede incluir cirugía, quimioterapia y radioterapia, dependiendo del estadio y la extensión del cáncer.'], [5]).

template([cuál, es, el, pronóstico, del, cáncer, de, páncreas, '?'], ['El pronóstico del cáncer de páncreas generalmente es reservado, pero la detección temprana mejora las posibilidades de tratamiento exitoso.'], [6]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



template([hola, _], ['Hola', 'como', estas, tu, '?'], []).
template([buendia, _], ['Buendia', 'Como', estas, tu, '?'], []).

template([yo, s(_), yo, soy, s(_),'.'], [por, que, 0, eres, 1, '?'], [1, 4]).
template([yo, s(_), tu, '.'], [por, que, 0, yo ,'?'], [1]).
template([yo, soy, s(_),'.'], [porque, eres, tu, 0, '?'], [2]).

% pregunta algo que le gusta a eliza
template([te, gustan, las, s(_), _], [flagLike], [3]).
template([te, gustan, los, s(_), _], [flagLike], [3]).

		 % pregunta algo que hace eliza
template([tu, eres, s(_), _], [flagDo], [2]).
% pregunta algo que es eliza
template([que, eres, tu, s(_)], [flagIs], [2]).
template([eres, s(_), '?'], [flagIs], [2]).

template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).

template([yo, pienso, que, _], [bueno, esa, es, tu, opinion], []).
template([porque, _], [esa, no, es, una, buena, razon, '.'], []).
template([yo, tengo, s(_), con, s(_), '.'], ['Tu', tienes, que, lidear, con, tu, 0, y, tu, 1, de, una, forma, madura, '.'], [2, 4]).
template([yo, s(_),  _], [yo, puedo, recomendarte, un, libro, acerca, de, ese,  problema], []).
template([por, favor, s(_), _], ['No', yo, no, puedo, ayudar, ',', yo, solo, soy, una, maquina], []). 
		 template([di, me, un, s(_), _], ['No', yo, no , puedo, ',', soy, mala, para, eso], []).

	  
template(_, [No,lo, se, '.'], []). 

% Lo que le gusta a eliza : flagLike
elizaLikes(X, R):- likes(X), R = ['Claro', a, mi, me, gusta, los, X].
elizaLikes(X, R):- \+likes(X), R = ['No', a, mi, no, me, gusta, los, X].
likes(manzanas).
likes(ponis).
likes(zombies).
likes(computadoras).
like(carros).

% lo que hace eliza: flagDo
elizaDoes(X, R):- does(X), R = ['Yes', yo, X, y, yo, lo, amo].
elizaDoes(X, R):- \+does(X), R = ['No', yo, no,  X ,'.', eso, es, muy, dificil, para, mi].
does(estudiar).
does(cook).
does(work).

% lo que es eliza: flagIs
elizaIs(X, R):- is0(X), R = ['Si', yo, soy, X].
elizaIs(X, R):- \+is0(X), R = ['No', yo, no, soy, X].
is0(tonto).
is0(raro).
is0(lindo).
is0(bien).
is0(faliz).
is0(redundante).

match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), 
	% si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.

% Eliza likes:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagLike,
	elizaLikes(Atom, R).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




% los elementos en minecraft: flagelemento
eselemento(X, R):- elemento(X), R = ['Si', X, es, un, elemento, en, minecraft,].
eselemento(X, R):- \+elemento(X), R = ['No', X, no, es, un, elemento, en, minecraft,].

%es un elemento:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagelemento,
	eselemento(Atom, R).



% los elementos en minecraft: flagelemento
esmob(X, R):- mob(X), R = ['Si', X, es, un, mob, en, minecraft,].
esmob(X, R):- \+mob(X), R = ['No', X, no, es, un, mob, en, minecraft,].

%es un elemento:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagmob,
	esmob(Atom, R).


% es bioma en minecraft: flagbioma
esbioma(X, R):- bioma(X), R = ['Si', X, es, un, bioma, en, minecraft,].
esbioma(X, R):- \+bioma(X), R = ['No', X, no, es, un, bioma, en, minecraft,].

%es un bioma:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagbioma,
	esbioma(Atom, R).





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Eliza does:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagDo,
	elizaDoes(Atom, R).

% Eliza is:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagIs,
	elizaIs(Atom, R).

replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.
