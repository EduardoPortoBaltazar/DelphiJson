object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 382
  ClientWidth = 1076
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 47
    Width = 327
    Height = 335
    Align = alLeft
    Lines.Strings = (
      '{'
      '  "nome": "Eduardo Porto",'
      '  "idade": "45"'
      '  "pedidos":'
      '  ['
      '  {'
      '  "numero": 1,'
      '   "valor": 18.1,'
      '   "data": "2023-09-02T"'
      '  },'
      '  {'
      '  "numero": 2,'
      '   "valor": 15,'
      '   "data": "2023-09-02T"'
      '  }  '
      '  ]'
      '}')
    TabOrder = 0
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1070
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    ExplicitWidth = 826
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ler'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Memo2: TMemo
    Left = 372
    Top = 47
    Width = 352
    Height = 335
    Align = alRight
    Lines.Strings = (
      'Memo2')
    TabOrder = 2
    ExplicitLeft = 228
    ExplicitTop = 50
  end
  object Memo3: TMemo
    Left = 724
    Top = 47
    Width = 352
    Height = 335
    Align = alRight
    Lines.Strings = (
      'Memo3')
    TabOrder = 3
    ExplicitLeft = 480
  end
end
