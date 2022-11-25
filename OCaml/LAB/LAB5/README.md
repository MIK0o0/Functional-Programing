1) Wykorzystując abstrakcję funkcyjną zamodeluj poniższą sytuację:
„Na stole ustawiono w rzędzie losy na loterię. Każdy z losów można odkryć, zyskując w ten
sposób ukrytą pod nim nagrodę. Losy mogą kryć w sobie nagrody lub kolejne losy. Próba
odkrycia odkrytego losu nie zmienia stanu na stole.”
Potraktuj stół jako zwykłą listę zawierającą losy. Zdefiniuj funkcję buyTicket, która dla danego
stołu oraz numeru losu dokonuje jego odsłonięcia (zwracając nową listę). (OCaml) (30 pkt.)
Przykładowo:

[?; ?; ?; ?; ?] ---- 3 ----> [?; ?; „Komputer”; ?; ?] ---- 4 ----> [?; ?; „Komputer”; ?; ?],

gdzie „?” oznacza nieodkryty los, a „?” – los ukryty pod oryginalnym losem.
UWAGA: Zwróć uwagę, że powyższy przykład nie przedstawia dokładnie tego, co interpreter
będzie wyświetlał na ekranie. Stwierdzenie, że „los jest nieodkryty” oznacza, że jego wartość
nie została jeszcze wyliczona. Losy mogą zawierać nagrody dowolnego rodzaju tj. nie tylko
łańcuchy jak w powyższym przykładzie.
