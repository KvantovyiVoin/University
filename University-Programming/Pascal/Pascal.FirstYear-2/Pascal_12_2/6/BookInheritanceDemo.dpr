program BookInheritanceDemo;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  BookPolymorphismUnit;

var
  PrintBook: TBook;
  Ebook: TEbook;
  AudioBook: TAudioBook;

begin

  PrintBook := TBook.Create('1984', 'George Orwell', 1949);
  Ebook := TEbook.Create('The Hitchhiker''s Guide to the Galaxy', 'Douglas Adams', 1979, 512);
  AudioBook := TAudioBook.Create('To Kill a Mockingbird', 'Harper Lee', 1960, 210);

  try

    Writeln(PrintBook.GetBookInfo);
    Writeln(Ebook.GetBookInfo);
    Writeln(AudioBook.GetBookInfo);
  finally

    PrintBook.Free;
    Ebook.Free;
    AudioBook.Free;
  end;

  Readln;
end.

