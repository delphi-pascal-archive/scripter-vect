object SV: TSV
  Left = 218
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1042#1077#1082#1090#1086#1088#1080#1079#1072#1090#1086#1088' ScripterVect'
  ClientHeight = 591
  ClientWidth = 858
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 443
    Top = 148
    Width = 239
    Height = 16
    Caption = #1052#1077#1090#1086#1076#1080#1082#1072' '#1087#1077#1088#1077#1074#1086#1076#1072' '#1074' '#1084#1086#1085#1086#1093#1088#1086#1084
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 443
    Top = 295
    Width = 150
    Height = 16
    Caption = #1057#1090#1072#1088#1090#1086#1074#1072#1103' '#1087#1086#1079#1080#1094#1080#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 443
    Top = 364
    Width = 74
    Height = 16
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 443
    Top = 423
    Width = 28
    Height = 16
    Caption = #1058#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 443
    Top = 482
    Width = 62
    Height = 16
    Caption = #1063#1072#1089#1090#1086#1090#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 443
    Top = 335
    Width = 14
    Height = 16
    Caption = 'X:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 542
    Top = 335
    Width = 15
    Height = 16
    Caption = 'Y:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 610
    Top = 364
    Width = 71
    Height = 16
    Caption = #1045#1076#1080#1085#1080#1094#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 443
    Top = 20
    Width = 169
    Height = 30
    Caption = #1048#1089#1093#1086#1076#1085#1086#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 443
    Top = 59
    Width = 169
    Height = 31
    Caption = #1055#1088#1077#1086#1073#1088#1072#1079#1091#1077#1084
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object Button1: TButton
    Left = 443
    Top = 98
    Width = 169
    Height = 31
    Caption = #1057#1086#1093#1088#1072#1085#1103#1077#1084
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object cb: TComboBox
    Left = 443
    Top = 177
    Width = 257
    Height = 24
    Style = csDropDownList
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 16
    ItemIndex = 6
    ParentFont = False
    TabOrder = 3
    Text = #1041#1072#1088#1082#1077#1089
    Items.Strings = (
      #1041#1083#1080#1078#1085#1080#1081' '#1094#1074#1077#1090
      #1060#1083#1086#1081#1076'-'#1064#1090#1077#1081#1085#1073#1077#1088#1075
      #1064#1090#1091#1082#1080
      #1057#1080#1077#1088#1088#1072
      #1044#1078#1072#1051#1091#1053#1080
      #1057#1090#1080#1074#1040#1088#1095
      #1041#1072#1088#1082#1077#1089)
  end
  object Button2: TButton
    Left = 443
    Top = 217
    Width = 179
    Height = 30
    Caption = #1042#1077#1082#1090#1086#1088#1080#1079#1072#1094#1080#1103
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object negat: TCheckBox
    Left = 443
    Top = 266
    Width = 179
    Height = 21
    Caption = #1057#1086#1079#1076#1072#1077#1084' '#1085#1077#1075#1072#1090#1080#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 463
    Top = 325
    Width = 70
    Height = 21
    Color = 8454016
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Text = '0'
  end
  object Edit2: TEdit
    Left = 443
    Top = 384
    Width = 149
    Height = 21
    Color = 16777088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Text = '100'
  end
  object Edit3: TEdit
    Left = 443
    Top = 443
    Width = 149
    Height = 21
    Color = 16777088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Text = '18'
  end
  object Edit4: TEdit
    Left = 443
    Top = 502
    Width = 149
    Height = 21
    Color = 16777088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    Text = '2'
  end
  object Edit5: TEdit
    Left = 571
    Top = 325
    Width = 70
    Height = 21
    Color = 8454016
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Text = '0'
  end
  object Edit6: TEdit
    Left = 610
    Top = 384
    Width = 149
    Height = 21
    Color = 16777088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    Text = '0,2'
  end
  object Memo1: TMemo
    Left = 620
    Top = 20
    Width = 228
    Height = 109
    ReadOnly = True
    TabOrder = 12
  end
  object Button3: TButton
    Left = 610
    Top = 443
    Width = 93
    Height = 31
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = Button3Click
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 434
    Height = 562
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkFlat
    TabOrder = 14
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 430
      Height = 558
      AutoSize = True
      OnMouseDown = Image1MouseDown
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 572
    Width = 858
    Height = 19
    Panels = <>
  end
  object poy: TCheckBox
    Left = 620
    Top = 266
    Width = 149
    Height = 21
    Caption = #1056#1080#1089#1086#1074#1072#1090#1100' '#1087#1086' Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
  end
  object od: TOpenDialog
    Left = 672
  end
  object MainMenu1: TMainMenu
    Left = 616
    Top = 424
    object N1: TMenuItem
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Caption = '?'
      object N4: TMenuItem
        Caption = #1054' '#1074#1077#1082#1090#1086#1088#1080#1079#1072#1090#1086#1088#1077
        OnClick = N4Click
      end
    end
  end
end
