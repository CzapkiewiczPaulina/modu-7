Funkcjonalność: Proces wyszukiwania, zakupu i walidacji produktu

 Feature:
      - Użytkownik jest zalogowany na swoje konto w ulubionym sklepie internetowym

  Scenario 1: 
    Gdy użytkownik wprowadza nazwę produktu w pole wyszukiwania
    I naciska przycisk "Szukaj"
    Wtedy system wyświetla listę wyników pasujących do wprowadzonej nazwy

  Scenario 2: 
    Gdy użytkownik znajduje interesujący go produkt na liście wyników
    I wybiera opcję "Dodaj do koszyka"
    Wtedy produkt zostaje dodany do koszyka
    I użytkownik zostaje przeniesiony do widoku koszyka
    I liczba produktów w koszyku zostaje zaktualizowana

  Given: 
    Gdy użytkownik jest w widoku koszyka
    I wybiera opcję "Przejdź do płatności"
    Wtedy użytkownik zostaje przekierowany do procesu płatności

  When: 
    Gdy użytkownik znajduje się w procesie płatności
    I wybiera metodę płatności
    I wprowadza wymagane dane płatności
    I potwierdza zamówienie
    Wtedy system przetwarza płatność
    I wyświetla potwierdzenie zamówienia

  Then: 
    Gdy użytkownik otrzymuje potwierdzenie zamówienia
    Wtedy sprawdza czy numer zamówienia jest wyświetlany
    I czy potwierdzenie zawiera poprawne informacje o produkcie
    I czy status zamówienia jest "Zrealizowane"
    I czy suma zamówienia jest zgodna z oczekiwaną