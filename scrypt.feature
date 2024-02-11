Feature: Proces wyszukiwania, zakupu i walidacji produktu

  Background:
    Given Użytkownik jest zalogowany na swoje konto w ulubionym sklepie internetowym

  Scenario: Wyszukaj produkt i dodaj do koszyka
    Given Użytkownik wprowadza nazwę produktu "nazwa_produktu" w pole wyszukiwania
    When Użytkownik naciska przycisk "Szukaj"
    Then System wyświetla listę wyników pasujących do wprowadzonej nazwy
    When Użytkownik znajduje interesujący go produkt na liście wyników
    And Użytkownik wybiera opcję "Dodaj do koszyka"
    Then Produkt zostaje dodany do koszyka
    And Użytkownik zostaje przeniesiony do widoku koszyka
    And Liczba produktów w koszyku zostaje zaktualizowana

  Scenario: Płatność za zakupiony produkt
    Given Użytkownik jest w widoku koszyka
    When Użytkownik wybiera opcję "Przejdź do płatności"
    Then Użytkownik zostaje przekierowany do procesu płatności
    When Użytkownik znajduje się w procesie płatności
    And Użytkownik wybiera metodę płatności
    And Użytkownik wprowadza wymagane dane płatności
    And Użytkownik potwierdza zamówienie
    Then System przetwarza płatność
    And Wyświetla potwierdzenie zamówienia

  Scenario: Walidacja zamówienia
    Given Użytkownik otrzymuje potwierdzenie zamówienia
    Then Użytkownik sprawdza czy numer zamówienia jest wyświetlany
    And Potwierdzenie zawiera poprawne informacje o produkcie
    And Status zamówienia jest "Zrealizowane"
    And Suma zamówienia jest zgodna z oczekiwaną
