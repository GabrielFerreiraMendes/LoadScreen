program Project;

uses
  Vcl.Forms,
  uAnonymousMethod in 'uAnonymousMethod.pas' {frmAnonymousMethod},
  uLoadScreen in 'uLoadScreen.pas' {frmLoadScreen};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAnonymousMethod, frmAnonymousMethod);
  Application.CreateForm(TfrmLoadScreen, frmLoadScreen);
  Application.Run;
end.
