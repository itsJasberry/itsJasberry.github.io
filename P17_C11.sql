----------------------------------------------------------------
-- PSIN_C11: uwierzytelnianie użytkownika
-- i zarządzenie jego sesją
----------------------------------------------------------------
-- Definicja tabeli przechowującej dane kont użytkowników 
CREATE TABLE dbo.Uzytkownik
(
IdUzytkownik int IDENTITY(1,1) NOT NULL PRIMARY KEY,
Imie varchar(30) NOT NULL,
Nazwisko varchar(40) NOT NULL,
Konto varchar(30) NOT NULL,
Haslo varchar(100) NOT NULL,
DataZarejestrowania datetime NOT NULL
);
GO
ALTER TABLE dbo.Uzytkownik
ADD CONSTRAINT UN_Uzytkownik_Konto
UNIQUE (Konto);
GO
-- Wstawienie danych przykładowych kont użytkowników
INSERT dbo.Uzytkownik
(Imie, Nazwisko, Konto, Haslo, DataZarejestrowania)
VALUES
('Arya', 'Stark', 'arya9', ' $2y$10$4pxoal4G7EJPkbP3WolhRePcwR8MQjAHIHNWPomQqaspqXu.PjgLC', GETDATE()),
('Tormund', 'Giantsbane', 'tormbrienne', '$2y$10$/ppowx8vlUDBWPiQyTn7WeyybWU9jGYwrrB3psg/sI1hs2qgE7QrS', GETDATE());
GO

SELECT * FROM dbo.Uzytkownik;
GO


----------------------------------------------------------------
-- Polecenie wybierające wiersze - SELECT.
----------------------------------------------------------------
--


