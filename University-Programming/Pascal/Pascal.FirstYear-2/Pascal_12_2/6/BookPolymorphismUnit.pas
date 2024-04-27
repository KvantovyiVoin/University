unit BookPolymorphismUnit;

interface

uses
  SysUtils;

type
  TBook = class
  private
    FName: string;  // назва
    FAuthor: string;  // автор
    FYear: Integer;  // рік видання
  public
    constructor Create(const name, author: string; year: Integer);
    function GetBookInfo: string; virtual;
  end;

  TEbook = class(TBook)
  private
    FFileSize: Integer;  // розмір файлу
  public
    constructor Create(const name, author: string; year, fileSize: Integer);
    function GetBookInfo: string; override;
  end;

  TAudioBook = class(TBook)
  private
    FDuration: Integer;  // тривалість у хвилинах
  public
    constructor Create(const name, author: string; year, duration: Integer);
    function GetBookInfo: string; override;
  end;

implementation

constructor TBook.Create(const name, author: string; year: Integer);
begin
  FName := name;
  FAuthor := author;
  FYear := year;
end;

function TBook.GetBookInfo: string;
begin
  Result := Format('Book: %s by %s, %d', [FName, FAuthor, FYear]);
end;

constructor TEbook.Create(const name, author: string; year, fileSize: Integer);
begin
  inherited Create(name, author, year);
  FFileSize := fileSize;
end;

function TEbook.GetBookInfo: string;
begin
  Result := Format('E-book: %s by %s, %d, File size: %dKB', [FName, FAuthor, FYear, FFileSize]);
end;

constructor TAudioBook.Create(const name, author: string; year, duration: Integer);
begin
  inherited Create(name, author, year);
  FDuration := duration;
end;

function TAudioBook.GetBookInfo: string;
begin
  Result := Format('Audiobook: %s by %s, %d, Duration: %d minutes', [FName, FAuthor, FYear, FDuration]);
end;

end.

