unit BookUnit;

interface
 uses SysUtils;
type
  TBook = class
  private
    FName: string;      // назва
    FAuthor: string;    // автор
    FYear: Integer;     // рік видання
  public
    constructor Create(name, author: string; year: Integer);
    destructor Destroy; override;
    procedure SetBookInfo(name, author: string; year: Integer);
    function GetBookInfo: string;
  end;

implementation

constructor TBook.Create(name, author: string; year: Integer);
begin
  FName := name;
  FAuthor := author;
  FYear := year;
end;

destructor TBook.Destroy;
begin
  inherited;
end;

procedure TBook.SetBookInfo(name, author: string; year: Integer);
begin
  FName := name;
  FAuthor := author;
  FYear := year;
end;

function TBook.GetBookInfo: string;
begin
  Result := 'Назва: ' + FName + ', Автор: ' + FAuthor + ', Рік: ' + IntToStr(FYear);
end;

end.

