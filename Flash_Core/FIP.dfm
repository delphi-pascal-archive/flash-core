object FileInfoForm: TFileInfoForm
  Left = 173
  Top = 239
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1092#1072#1081#1083#1077
  ClientHeight = 281
  ClientWidth = 335
  Color = clWhite
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010100000000000280100001600000028000000100000002000
    000001000400000000000000000000000000000000001000000000000000FFFF
    FF00000080330080000000808022800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFFBBFF000005FF00FFB0FFFF00BB00000005FFFF
    F111111FFFFFFFF1199999911FFFFF119999999911FFF11144199999911FF191
    F44F9999991F19999F4499999991199999F4F9999991199999F4444999911999
    999F44F999911999999F649999911199999146199991F1999999F466991FF119
    99999FF6911FFF119999999911FFFFF1119999111FFFFFFFF111111FFFFFF81F
    0D1FE007F81FC003E0078001C003800180010000800100000000000000000000
    000000000000000000008001000080018001C0038001E007C003F81FE007}
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ScreenSnap = True
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnMouseDown = FormMouseDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tx1: TXPLabel
    Left = 11
    Top = 16
    Width = 59
    Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072':'
    ForegroundColor = clBlack
    BackgroundColor = clWhite
    OnMouseDown = FormMouseDown
  end
  object tx2: TXPLabel
    Left = 11
    Top = 40
    Width = 36
    Caption = #1055#1072#1087#1082#1072':'
    ForegroundColor = clBlack
    BackgroundColor = clWhite
    OnMouseDown = FormMouseDown
  end
  object tx3: TXPLabel
    Left = 11
    Top = 64
    Width = 71
    Caption = #1055#1086#1083#1085#1099#1081' '#1087#1091#1090#1100':'
    ForegroundColor = clBlack
    BackgroundColor = clWhite
    OnMouseDown = FormMouseDown
  end
  object tx4: TXPLabel
    Left = 11
    Top = 88
    Width = 66
    Caption = #1056#1072#1089#1096#1080#1088#1077#1085#1080#1077':'
    ForegroundColor = clBlack
    BackgroundColor = clWhite
    OnMouseDown = FormMouseDown
  end
  object tx5: TXPLabel
    Left = 11
    Top = 112
    Width = 88
    Caption = #1058#1077#1082#1091#1097#1080#1081' '#1088#1072#1079#1084#1077#1088':'
    ForegroundColor = clBlack
    BackgroundColor = clWhite
    OnMouseDown = FormMouseDown
  end
  object tx6: TXPLabel
    Left = 11
    Top = 136
    Width = 40
    Caption = #1056#1072#1079#1084#1077#1088':'
    ForegroundColor = clBlack
    BackgroundColor = clWhite
    OnMouseDown = FormMouseDown
  end
  object tx7: TXPLabel
    Left = 11
    Top = 160
    Width = 82
    Caption = #1063#1080#1089#1083#1086' '#1092#1088#1077#1081#1084#1086#1074':'
    ForegroundColor = clBlack
    BackgroundColor = clWhite
    OnMouseDown = FormMouseDown
  end
  object ed1: TXPEdit
    Left = 107
    Top = 16
    Width = 217
    Height = 19
    ReadOnly = True
    OnKeyDown = FormKeyDown
    TabStop = False
    TabOrder = 0
  end
  object ed2: TXPEdit
    Left = 107
    Top = 40
    Width = 217
    Height = 19
    ReadOnly = True
    OnKeyDown = FormKeyDown
    TabStop = False
    TabOrder = 1
  end
  object ed3: TXPEdit
    Left = 107
    Top = 64
    Width = 217
    Height = 19
    ReadOnly = True
    OnKeyDown = FormKeyDown
    TabStop = False
    TabOrder = 2
  end
  object ed4: TXPEdit
    Left = 107
    Top = 88
    Width = 217
    Height = 19
    ReadOnly = True
    OnKeyDown = FormKeyDown
    TabStop = False
    TabOrder = 3
  end
  object ed5: TXPEdit
    Left = 107
    Top = 112
    Width = 217
    Height = 19
    ReadOnly = True
    OnKeyDown = FormKeyDown
    TabStop = False
    TabOrder = 4
  end
  object ed6: TXPEdit
    Left = 107
    Top = 136
    Width = 217
    Height = 19
    ReadOnly = True
    OnKeyDown = FormKeyDown
    TabStop = False
    TabOrder = 5
  end
  object fr1: TXPGroupBox
    Left = 11
    Top = 192
    Width = 217
    Height = 73
    BorderColor = clSilver
    Caption = #1040#1090#1088#1080#1073#1091#1090#1099
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    TabStop = False
    TabOrder = 6
    OnMouseDown = FormMouseDown
    object ChReadOnly: TXPCheckBox
      Left = 8
      Top = 24
      Cursor = crHandPoint
      Alignment = taLeft
      Caption = #1058#1086#1083#1100#1082#1086' '#1095#1090#1077#1085#1080#1077
      Checked = False
      TabStop = False
      TabOrder = 0
      OnKeyDown = FormKeyDown
    end
    object ChArchive: TXPCheckBox
      Left = 8
      Top = 48
      Cursor = crHandPoint
      Alignment = taLeft
      Caption = #1040#1088#1093#1080#1074#1085#1099#1081
      Checked = False
      TabStop = False
      TabOrder = 1
      OnKeyDown = FormKeyDown
    end
    object ChSystem: TXPCheckBox
      Left = 112
      Top = 24
      Cursor = crHandPoint
      Alignment = taLeft
      Caption = #1057#1080#1089#1090#1077#1084#1085#1099#1081
      Checked = False
      TabStop = False
      TabOrder = 2
      OnKeyDown = FormKeyDown
    end
    object ChHidden: TXPCheckBox
      Left = 112
      Top = 48
      Cursor = crHandPoint
      Alignment = taLeft
      Caption = #1057#1082#1088#1099#1090#1099#1081
      Checked = False
      TabStop = False
      TabOrder = 3
      OnKeyDown = FormKeyDown
    end
  end
  object OK: TXPButton
    Left = 240
    Top = 200
    Width = 77
    Height = 27
    Cursor = crHandPoint
    Caption = 'OK'
    Glyph.Data = {
      07544269746D617036040000424D360400000000000036000000280000001000
      0000100000000100200000000000000400000000000000000000000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CADACA00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BEC6BE009DA59D00CADA
      CA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009DA59D004444F6009DA5
      9D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00BEC6BE004461E6000808F6008581
      C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF007D857D000808F6000808F6004461
      E600BEC6BE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0085A1E6000808F6008581E6000808
      F6009DA59D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF004444F600C6A1E600C6A1E6000808
      F6004461E6009DA59D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00C6A1E600FF00FF00FF00FF000808
      F6000808F6008581C600CADACA00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008581
      E6000808F6004444F6009DA59D00CADACA00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008581
      E6000808F6000808F6004444F600BEC6BE009DA59D00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000808F6000808F6000808F6000808F60085A1E600BEC6BE00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00C6A1E6000808F6000808F6000808F6000808F600C6A1E600FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF004444F6000808F6004444F600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00C6A1E6000808F600FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00C6A1E600FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00}
    ModalResult = 1
    OnKeyDown = FormKeyDown
    TabStop = False
    TabOrder = 7
  end
  object Cancel: TXPButton
    Left = 240
    Top = 232
    Width = 77
    Height = 27
    Cursor = crHandPoint
    Caption = #1054#1090#1084#1077#1085#1072
    Glyph.Data = {
      07544269746D617036040000424D360400000000000036000000280000001000
      0000100000000100200000000000000400000000000000000000000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00241CED00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
      FF00FF00FF00FF00FF00241CED00241CED00241CED00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00241CED00241CED00241CED00241CED00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00241CED00241CED00241CED00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00241CED00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00241CED00241CED00241CED00FF00
      FF00FF00FF00FF00FF00FF00FF00241CED00241CED00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00241CED00241CED00241C
      ED00FF00FF00FF00FF00241CED00241CED00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00241CED00241C
      ED00241CED00241CED00241CED00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00241C
      ED00241CED00241CED00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00241CED00241C
      ED00241CED00241CED00241CED00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00241CED00241CED00241C
      ED00FF00FF00FF00FF00241CED00241CED00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00241CED00241CED00241CED00241CED00FF00
      FF00FF00FF00FF00FF00FF00FF00241CED00241CED00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00241CED00241CED00241CED00241CED00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00241CED00241CED00FF00FF00FF00
      FF00FF00FF00FF00FF00241CED00241CED00241CED00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00}
    ModalResult = 2
    OnKeyDown = FormKeyDown
    TabOrder = 8
  end
  object ed7: TXPEdit
    Left = 107
    Top = 160
    Width = 217
    Height = 19
    ReadOnly = True
    OnKeyDown = FormKeyDown
    TabStop = False
    TabOrder = 9
  end
end
