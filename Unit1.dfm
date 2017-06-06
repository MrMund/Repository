object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1072#1088#1072#1073#1086#1083#1072
  ClientHeight = 405
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = -1
    Top = 0
    Width = 581
    Height = 408
    TabOrder = 0
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 441
      Height = 385
    end
    object Label1: TLabel
      Left = 447
      Top = 51
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object Label2: TLabel
      Left = 447
      Top = 91
      Width = 6
      Height = 13
      Caption = 'B'
    end
    object Label3: TLabel
      Left = 475
      Top = 14
      Width = 77
      Height = 20
      Caption = 'y=x*x/a+b'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = 20
      Font.Name = 'Century'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Button1: TButton
      Left = 477
      Top = 192
      Width = 75
      Height = 25
      Caption = #1053#1072#1088#1080#1089#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 464
      Top = 48
      Width = 106
      Height = 21
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 464
      Top = 88
      Width = 104
      Height = 21
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object Button2: TButton
      Left = 464
      Top = 128
      Width = 104
      Height = 25
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
      TabOrder = 3
      OnClick = Button2Click
    end
  end
end
