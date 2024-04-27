unit Forma1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TTRAns = class(TForm)
    ButtonConvert: TButton;
    ButtonExit: TButton;
    EditYards: TEdit;
    EditCm: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure ButtonConvertClick(Sender: TObject);
    procedure EditYardsChange(Sender: TObject);
    procedure EditCmChange(Sender: TObject);
    procedure ButtonExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TRAns: TTRAns;

implementation

{$R *.dfm}

procedure TTRAns.ButtonConvertClick(Sender: TObject);
var
  Yards, Cm: Double;
begin
  if EditYards.Text <> '' then
  begin
    Yards := StrToFloat(EditYards.Text);
    Cm := Yards * 91.44;
    EditCm.Text := FloatToStr(Cm);
  end
  else if EditCm.Text <> '' then
  begin
    Cm := StrToFloat(EditCm.Text);
    Yards := Cm / 91.44;
    EditYards.Text := FloatToStr(Yards);
  end
  else
    ShowMessage('Будь ласка, введіть величину для переведення.');
end;

procedure TTRAns.EditYardsChange(Sender: TObject);
begin
  EditCm.Text := '';
end;

procedure TTRAns.EditCmChange(Sender: TObject);
begin
  EditYards.Text := '';
end;

procedure TTRAns.ButtonExitClick(Sender: TObject);
begin
  Close;
end;

end.

