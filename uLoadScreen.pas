unit uLoadScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvAnimatedImage, JvGIFCtrl;

type

 TSimpleProcedure = reference to procedure;

  TfrmLoadScreen = class(TForm)
    AnimatedImage: TJvGIFAnimator;
    procedure FormShow(Sender: TObject);
  private
    FMyPocedure: TSimpleProcedure;
    { Private declarations }
  public
    property MyPocedure: TSimpleProcedure read FMyPocedure write FMyPocedure;
    { Public declarations }
  end;

var
  frmLoadScreen: TfrmLoadScreen;

implementation

{$R *.dfm}

procedure TfrmLoadScreen.FormShow(Sender: TObject);
begin
  AnimatedImage.Animate := True;
  MyPocedure();
end;

end.
