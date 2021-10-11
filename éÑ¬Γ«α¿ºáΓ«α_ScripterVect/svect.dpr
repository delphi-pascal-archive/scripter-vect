program svect;

uses
  Forms,
  Unit1 in 'Unit1.pas' {SV};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ScripterVect';
  Application.CreateForm(TSV, SV);
  Application.Run;
end.
