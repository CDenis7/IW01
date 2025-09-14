# IW01: Scrierea unui script shell simplu pentru automatizarea sarcinilor

# Obiectiv

Învațăm să cream și să executam scripturi Shell simple pentru a automatiza sarcini de rutină în sistemul de operare Linux.

# Sarcina

Crearea unei copii de rezervă a unui director important:

# Pasul 1: Instalam subsistemul Windows pentru Linux (WSL)

<img width="974" height="166" alt="image" src="https://github.com/user-attachments/assets/42ae91ad-fdf7-461e-b18a-d736e168e15e" />

# Pasul 2: Cream fișierul script în Linux

În terminalul Linux, tastam următoarea comandă și apăsam Enter:

```
nano backup.sh
```

# Pasul 3: Adăugam conținutul scriptului

<img width="487" height="269" alt="489261151-8150ef0c-8c09-4243-a3f7-2afc96f33d6f" src="https://github.com/user-attachments/assets/f14b9049-2e86-4d8b-9292-378f75eb961d" />

# Pasul 4: Facem scriptul executabil

În terminal, tastam această comandă și apăsam Enter:

<img width="808" height="75" alt="image" src="https://github.com/user-attachments/assets/9cc37ba9-87c8-4dd8-b0a7-460a04468aec" />

Astfel, fișierul backup.sh poate fi executat.

# Pasul 5: Rulam scriptul

Pentru a rula scriptul, trebuie să tastam următoarea comanda în terminalul Linux:

<img width="974" height="89" alt="image" src="https://github.com/user-attachments/assets/7a13b380-f6ca-4927-96c0-04c7f2863b28" />

Verificarea executiei:

<img width="974" height="243" alt="image" src="https://github.com/user-attachments/assets/375277c9-8728-46db-a1f2-1d348d3098f2" />

# Concluzii

Crearea și rularea scriptului backup.sh a fost un exercițiu practic fundamental care a demonstrat cum se poate automatiza una dintre cele mai critice sarcini de administrare a sistemului: crearea copiilor de siguranță.

Prin acest proces, am învățat în mod specific să:

Preluăm și utilizăm argumente din linia de comandă pentru a face scriptul flexibil (directorul sursă și cel destinație).

Implementăm valori implicite pentru argumente opționale, crescând astfel ușurința în utilizare.

Validăm datele de intrare, verificând dacă directoarele specificate chiar există pentru a preveni erorile în timpul execuției.

Generăm nume de fișiere dinamice, folosind comanda date pentru a crea arhive unice și ușor de identificat.

Utilizăm comanda tar, un instrument esențial în Linux, pentru a arhiva și comprima eficient fișierele.

# Surse: 

https://www.gnu.org/software/bash/manual/bash.html

https://www.gnu.org/software/tar/manual/tar.html

https://ryanstutorials.net/bash-scripting-tutorial/
