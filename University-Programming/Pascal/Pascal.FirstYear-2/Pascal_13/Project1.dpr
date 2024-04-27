program Project1;

uses
  Vcl.Forms,
  Forma1 in 'Forma1.pas' {TRAns};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTRAns, TRAns);
  Application.Run;
end.
