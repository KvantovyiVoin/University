program BookProgram;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  BookUnit;

var
  Book1, Book2: TBook;

begin

  Book1 := TBook.Create('1984', '������ ������', 1949);
  Book2 := TBook.Create('������� �����', '������ ����� Գ���������', 1925);

  try

    Writeln(Book1.GetBookInfo);
    Writeln(Book2.GetBookInfo);


    Book1.SetBookInfo('����� �� ������������', '����� �������', 1965);
    Writeln(Book1.GetBookInfo);

  finally

    Book1.Free;
    Book2.Free;
  end;

  Readln;
end.

