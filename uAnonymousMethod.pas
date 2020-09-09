unit uAnonymousMethod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uLoadScreen;

type
  TfrmAnonymousMethod = class(TForm)
    pnl: TPanel;
    btnLoad: TButton;
    procedure btnLoadClick(Sender: TObject);
  private
    procedure inWait();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnonymousMethod: TfrmAnonymousMethod;

implementation

{$R *.dfm}

{ TfrmMetodosAnonimos }

procedure TfrmAnonymousMethod.btnLoadClick(Sender: TObject);
var
 vFrm: TfrmLoadScreen;
begin
  Application.CreateForm(TfrmLoadScreen, vFrm);

  try
   vFrm.MyPocedure := Self.inWait;
   vFrm.ShowModal;
  finally
   FreeAndNil(vFrm);
  end;
end;

procedure TfrmAnonymousMethod.inWait();
var
 vIndex: Integer;
begin
  vIndex := 0;

  while vIndex < 1000000 do
   vIndex := vIndex + 1;
end;

end.
