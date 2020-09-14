object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 52
  ClientWidth = 200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnl: TPanel
    Left = 0
    Top = 0
    Width = 200
    Height = 52
    Align = alClient
    TabOrder = 0
    object btnLoad: TButton
      Left = 10
      Top = 4
      Width = 180
      Height = 44
      Caption = 'Load'
      TabOrder = 0
      OnClick = btnLoadClick
    end
  end
end
