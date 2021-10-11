object MainForm: TMainForm
  Left = 193
  Top = 124
  Width = 736
  Height = 636
  Caption = 'FlashCore'
  Color = 16054527
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  Menu = MainMenu
  OldCreateOrder = False
  ScreenSnap = True
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseDown = StBarMouseDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FlashView: TFlash
    Left = 0
    Top = 0
    Width = 720
    Height = 535
    TabStop = False
    Align = alClient
    TabOrder = 0
    Playing = True
    Quality = fqMedium
    Color = clMoneyGreen
    UseDefColor = False
    ShowPopupMenu = False
    DeviceFont = True
    SWRemote = 'Your Flash Player'
    SeamlessTabbing = True
    ControlData = {
      6755665510070000D8130000D813000008000200000000000800000000000800
      0000000008000E000000570069006E0064006F00770000000B00FFFF0B00FFFF
      08000A0000004800690067006800000008000200000000000B00FFFF08000000
      00000800020000000000080010000000530068006F00770041006C006C000000
      0B0000000B000000080002000000000008002A000000440065006C0070006800
      6900200046006C00610073006800200043006F006E00740072006F006C000000
      08000200000000000D00000000000000000000000000000000000B0001000B00
      000008000000000003000000000008000800000061006C006C000000}
  end
  object StatusBar: TPanel
    Left = 0
    Top = 557
    Width = 720
    Height = 23
    Align = alBottom
    AutoSize = True
    BevelOuter = bvLowered
    TabOrder = 1
    object StBar: TStatusBar
      Left = 1
      Top = 1
      Width = 631
      Height = 21
      Align = alClient
      Panels = <
        item
          Alignment = taCenter
          Text = #1042#1089#1077#1075#1086' '#1082#1072#1076#1088#1086#1074':'
          Width = 115
        end
        item
          Alignment = taCenter
          Text = #1055#1086#1079#1080#1094#1080#1103
          Width = 90
        end
        item
          Alignment = taCenter
          Text = #1056#1072#1079#1084#1077#1088
          Width = 68
        end
        item
          Alignment = taCenter
          Text = #1042#1088#1077#1084#1103
          Width = 50
        end
        item
          Alignment = taCenter
          Width = 105
        end
        item
          Width = 50
        end>
      OnDblClick = StBarDblClick
      OnMouseDown = StBarMouseDown
      OnMouseUp = StBarMouseUp
    end
    object Panel1: TPanel
      Left = 632
      Top = 1
      Width = 87
      Height = 21
      Align = alRight
      BevelOuter = bvLowered
      TabOrder = 1
      object FlashSound: TrmTrackBar
        Left = 1
        Top = 1
        Width = 85
        Height = 19
        Cursor = crHandPoint
        Hint = #1043#1088#1086#1084#1082#1086#1089#1090#1100
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ShowFocus = False
        MarkPosition = mpNone
        MaxValue = 100
        PageSize = 1
        TabStop = True
        TabOrder = 0
        Thumb.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000000000000000000000000000000000008000E08000E0
          8000E08000E08000E08000E08000E08000008000008000E08000E08000E08000
          E08000E08000E08000E08000E08000E08000E08000E08000E08000E080000080
          00008000008000008000E08000E08000E08000E08000E08000E08000E08000E0
          8000E08000E08000E0800000800000C0A060C0A0608000008000008000E08000
          E08000E08000E08000E08000E08000E08000E08000E0800000800000C0A060C0
          A060C0A060C0A0608000008000008000E08000E08000E08000E08000E08000E0
          8000E0800000800000C0A060C0A060C0A060C0A060C0A060C0A0608000008000
          008000E08000E08000E08000E08000E0800000800000C0A060C0A060C0A060C0
          A060C0A060C0A060C0A060C0A0608000008000008000E08000E08000E0800000
          800000C0A060C0A060C0A060C0A060C0A060C0A060C0A060C0A060C0A060C0A0
          608000008000008000E0C06040800000C0A060C0A060C0A060C0A060C0A060C0
          A060C0A060C0A060C0A060C0A060C0A060C0A060800000800000C04040C06040
          C0A060C0A060C0A060C0A060C0A060C0A060C0A060C0A060C0A060C0A060C0A0
          60C0A060C060408000008000E0C04040C06040C0A060C0A060C0A060C0A060C0
          A060C0A060C0A060C0A060C0A060C0A060C06040C040408000E08000E08000E0
          C04040C06040C0A060C0A060C0A060C0A060C0A060C0A060C0A060C0A060C060
          40C040408000E08000E08000E08000E08000E0C04040C06040C0A060C0A060C0
          A060C0A060C0A060C0A060C06040C040408000E08000E08000E08000E08000E0
          8000E08000E0C04040C06040C0A060C0A060C0A060C0A060C06040C040408000
          E08000E08000E08000E08000E08000E08000E08000E08000E0C04040C06040C0
          A060C0A060C06040C040408000E08000E08000E08000E08000E08000E08000E0
          8000E08000E08000E08000E0C04040C06040C06040C040408000E08000E08000
          E08000E08000E08000E08000E08000E08000E08000E08000E08000E08000E0C0
          4040C040408000E08000E08000E08000E08000E08000E08000E0}
        ThumbPosition = 100
        TrackColor = clWhite
        OnChange = FlashSoundChange
      end
    end
  end
  object Panel: TPanel
    Left = 0
    Top = 535
    Width = 720
    Height = 22
    Align = alBottom
    AutoSize = True
    BevelInner = bvLowered
    Color = clWindow
    TabOrder = 2
    object SeekBar: TScrollBar
      Left = 2
      Top = 2
      Width = 716
      Height = 18
      Align = alClient
      Enabled = False
      PageSize = 0
      PopupMenu = SeekMenu
      TabOrder = 0
      TabStop = False
      OnContextPopup = SeekBarContextPopup
      OnScroll = SeekBarScroll
    end
  end
  object MainMenu: TMainMenu
    Images = ImageList1
    OwnerDraw = True
    Left = 32
    Top = 16
    object FileItem: TMenuItem
      Caption = 'FileCore'
      object NewItem: TMenuItem
        Caption = #1053#1086#1074#1086#1077' '#1086#1082#1085#1086
        Hint = #1057#1086#1079#1076#1072#1090#1100' '#1082#1086#1087#1080#1102' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1086#1082#1085#1072
        ImageIndex = 0
        ShortCut = 16462
        OnClick = NewItemClick
      end
      object spr1: TMenuItem
        Caption = '-'
      end
      object QuickOpenItem: TMenuItem
        Caption = #1041#1099#1089#1090#1088#1086#1077' '#1086#1090#1082#1088#1099#1090#1080#1077'...'
        Hint = #1041#1099#1089#1090#1088#1086#1077' '#1086#1090#1082#1088#1099#1090#1080#1077' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1077#1075#1086' '#1092#1072#1081#1083#1072
        ImageIndex = 1
        ShortCut = 8271
        OnClick = QuickOpenItemClick
      end
      object spr2: TMenuItem
        Caption = '-'
      end
      object OpenItem: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083'...'
        Hint = #1054#1090#1082#1088#1099#1090#1080#1077' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1077#1075#1086' '#1092#1072#1081#1083#1072
        ImageIndex = 50
        ShortCut = 16463
        OnClick = OpenItemClick
      end
      object spr3: TMenuItem
        Caption = '-'
      end
      object CurrentFileInfoItem: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103'...'
        Enabled = False
        Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1077#1090#1072#1083#1100#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1090#1077#1082#1091#1097#1077#1084' '#1092#1072#1081#1083#1077
        ImageIndex = 33
        ShortCut = 24649
        OnClick = CurrentFileInfoItemClick
      end
      object OpenInNextSessionItem: TMenuItem
        AutoCheck = True
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1074' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1089#1077#1089#1089#1080#1080
        Hint = #1054#1090#1082#1088#1099#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1092#1072#1081#1083' '#1087#1088#1080' '#1089#1083#1077#1076#1091#1102#1097#1077#1084' '#1079#1072#1087#1091#1089#1082#1077' FlashCore'
        ImageIndex = 46
        OnClick = OpenInNextSessionItemClick
      end
      object FullDirPathItem: TMenuItem
        Caption = #1044#1080#1088#1077#1082#1090#1086#1088#1080#1103
        Enabled = False
        ImageIndex = 2
        object CopyPathNameToBufferItem: TMenuItem
          Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1091#1090#1100' '#1080' '#1080#1084#1103' '#1092#1072#1081#1083#1072
          Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1076#1080#1088#1077#1082#1090#1086#1088#1080#1102' '#1086#1090#1082#1088#1099#1090#1086#1075#1086' '#1092#1072#1081#1083#1072' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
          OnClick = CopyPathNameToBufferItemClick
        end
        object CopyNameToBufferItem: TMenuItem
          Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080#1084#1103' '#1092#1072#1081#1083#1072
          OnClick = CopyNameToBufferItemClick
        end
        object CopyDirPathToBufferItem: TMenuItem
          Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091
          OnClick = CopyDirPathToBufferItemClick
        end
      end
      object spr4: TMenuItem
        Caption = '-'
      end
      object SetScreenShotItem: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1080#1090#1100' '#1089#1082#1088#1080#1085#1096#1086#1090
        Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '#1101#1082#1088#1072#1085#1085#1086#1075#1086' '#1089#1085#1080#1084#1082#1072
        ImageIndex = 55
        ShortCut = 8266
        OnClick = SetScreenShotItemClick
      end
      object spr5: TMenuItem
        Caption = '-'
      end
      object CopyFileItem: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1092#1072#1081#1083
        Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1082#1088#1099#1090#1099#1081' '#1092#1072#1081#1083' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
        ImageIndex = 36
        ShortCut = 119
        OnClick = CopyFileItemClick
      end
      object CopyToDirItem: TMenuItem
        Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1076#1080#1088#1077#1082#1090#1086#1088#1080#1102
        Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1092#1072#1081#1083' '#1074' '#1076#1080#1088#1077#1082#1090#1086#1088#1080#1102' FlashCore'
        ShortCut = 8311
        OnClick = CopyToDirItemClick
      end
      object DelToRecycleItem: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100'...'
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1092#1072#1081#1083' '#1074' '#1082#1086#1088#1079#1080#1085#1091
        ImageIndex = 39
        ShortCut = 46
        OnClick = DelToRecycleItemClick
      end
      object DelOpenFileItem: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1053#1040#1052#1045#1056#1058#1042#1054
        Hint = #1059#1076#1072#1083#1080#1090#1100' '#1092#1072#1081#1083' '#1053#1040#1052#1045#1056#1058#1042#1054
        ImageIndex = 4
        OnClick = DelOpenFileItemClick
      end
      object CopyToItem: TMenuItem
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1087#1072#1087#1082#1091'...'
        Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1092#1072#1081#1083#1072' '#1074' '#1076#1088#1091#1075#1086#1077' '#1084#1077#1089#1090#1086
        OnClick = CopyToItemClick
      end
      object MoveToItem: TMenuItem
        Caption = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1074' '#1087#1072#1087#1082#1091'...'
        Hint = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1092#1072#1081#1083#1072' '#1074' '#1076#1088#1091#1075#1086#1077' '#1084#1077#1089#1090#1086
        OnClick = MoveToItemClick
      end
      object spr6: TMenuItem
        Caption = '-'
      end
      object RecycleBinItem: TMenuItem
        Caption = #1050#1086#1088#1079#1080#1085#1072
        ImageIndex = 43
        object OpenRecycleBinItem: TMenuItem
          Caption = #1054#1090#1082#1088#1099#1090#1100
          Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1075#1086' '#1082#1086#1088#1079#1080#1085#1099
          OnClick = OpenRecycleBinItemClick
        end
        object CleanRecycleItem: TMenuItem
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100
          Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1077' '#1082#1086#1088#1079#1080#1085#1099
          OnClick = CleanRecycleItemClick
        end
      end
      object CleanBufferItem: TMenuItem
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
        Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
        OnClick = CleanBufferItemClick
      end
      object spr7: TMenuItem
        Caption = '-'
      end
      object PathItem: TMenuItem
        Caption = #1044#1080#1088#1077#1082#1090#1086#1088#1080#1103' FlashCore...'
        Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1080#1088#1077#1082#1090#1086#1088#1080#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' FlashView'
        ImageIndex = 47
        OnClick = PathItemClick
      end
      object FullPathItem: TMenuItem
        Caption = #1055#1086#1083#1085#1099#1081' '#1087#1091#1090#1100'...'
        Hint = #1054#1090#1082#1088#1099#1090#1100' '#1087#1072#1087#1082#1091
        ImageIndex = 58
        OnClick = FullPathItemClick
      end
      object spr8: TMenuItem
        Caption = '-'
      end
      object CopyExeItem: TMenuItem
        Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' exe-FlashCore'
        Hint = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080#1089#1087#1086#1083#1085#1103#1077#1084#1099#1081' '#1092#1072#1081#1083' FlashCore '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
        ImageIndex = 62
        OnClick = CopyExeItemClick
      end
      object PropProItem: TMenuItem
        Caption = #1057#1074#1086#1081#1089#1090#1074#1072' FlashCore...'
        Hint = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1089#1074#1086#1081#1089#1090#1074#1072' FlashCore'
        ImageIndex = 30
        ShortCut = 16464
        OnClick = PropProItemClick
      end
      object IntProItem: TMenuItem
        Caption = #1048#1085#1090#1077#1075#1088#1072#1094#1080#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'...'
        Hint = #1048#1085#1090#1077#1075#1088#1072#1094#1080#1103' FlashCore '#1089' '#1086#1073#1086#1083#1086#1095#1082#1086#1081' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086#1081' '#1089#1080#1089#1090#1077#1084#1099
        ImageIndex = 3
        OnClick = IntProItemClick
      end
      object spr9: TMenuItem
        Caption = '-'
      end
      object ExitItem: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        Hint = #1047#1072#1074#1077#1088#1096#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        ImageIndex = 32
        ShortCut = 16465
        OnClick = ExitItemClick
      end
      object ScreenShotItem: TMenuItem
        Caption = 'Screenshot'
        ShortCut = 16458
        Visible = False
        OnClick = ScreenShotItemClick
      end
    end
    object ViewItem: TMenuItem
      Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1077
      object SeekBarToolItem: TMenuItem
        Caption = #1055#1086#1083#1086#1089#1072' '#1087#1088#1086#1082#1088#1091#1090#1082#1080
        Hint = #1055#1086#1083#1086#1089#1072' '#1087#1088#1086#1082#1088#1091#1090#1082#1080
        ImageIndex = 53
        object SeekBarItem: TMenuItem
          Caption = #1055#1086#1083#1086#1089#1072' '#1087#1088#1086#1082#1088#1091#1090#1082#1080
          Checked = True
          Hint = #1054#1090#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1080#1083#1080' '#1089#1082#1088#1099#1090#1080#1077' '#1087#1086#1083#1086#1089#1099' '#1087#1088#1086#1082#1088#1091#1090#1082#1080
          ShortCut = 118
          OnClick = SeekBarItemClick
        end
        object spr10: TMenuItem
          Caption = '-'
        end
        object AlignSeekBarItem: TMenuItem
          Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077
          Hint = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077' '#1087#1086#1083#1086#1089#1099' '#1087#1088#1086#1082#1088#1091#1090#1082#1080
          object AlignLeftItem: TMenuItem
            Caption = #1057' '#1083#1077#1074#1072
            Hint = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077' '#1087#1086#1083#1086#1089#1099' '#1087#1088#1086#1082#1088#1091#1090#1082#1080' '#1089' '#1083#1077#1074#1072
            RadioItem = True
            OnClick = AlignLeftItemClick
          end
          object AlignRightItem: TMenuItem
            Caption = #1057' '#1087#1088#1072#1074#1072
            Hint = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077' '#1087#1086#1083#1086#1089#1099' '#1087#1088#1086#1082#1088#1091#1090#1082#1080' '#1089' '#1087#1088#1072#1074#1072
            RadioItem = True
            OnClick = AlignRightItemClick
          end
          object AlignBottomItem: TMenuItem
            Caption = #1042#1085#1080#1079#1091
            Checked = True
            Hint = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077' '#1087#1086#1083#1086#1089#1099' '#1087#1088#1086#1082#1088#1091#1090#1082#1080' '#1074#1085#1080#1079#1091
            RadioItem = True
            OnClick = AlignBottomItemClick
          end
        end
      end
      object spr11: TMenuItem
        Caption = '-'
      end
      object ZoomInItem: TMenuItem
        Caption = #1059#1074#1077#1083#1080#1095#1080#1090#1100' '#1088#1072#1079#1084#1077#1088
        Enabled = False
        Hint = #1059#1074#1077#1083#1080#1095#1080#1074#1072#1090#1100' '#1088#1072#1079#1084#1077#1088' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1074' '#1086#1082#1085#1077' '
        ImageIndex = 5
        OnClick = ZoomInItemClick
      end
      object DefaultSizeItem: TMenuItem
        Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1088#1072#1079#1084#1077#1088
        Enabled = False
        Hint = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1088#1072#1079#1084#1077#1088' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103' '#1074' '#1086#1082#1085#1077' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
        ImageIndex = 6
        ShortCut = 16469
        OnClick = DefaultSizeItemClick
      end
      object spr12: TMenuItem
        Caption = '-'
      end
      object ColorItem: TMenuItem
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1094#1074#1077#1090'...'
        Hint = #1042#1099#1073#1088#1072#1090#1100' '#1094#1074#1077#1090' '#1086#1082#1085#1072
        ImageIndex = 7
        ShortCut = 117
        OnClick = ColorItemClick
      end
      object FullScreenItem: TMenuItem
        Caption = #1055#1086#1083#1085#1099#1081' '#1101#1082#1088#1072#1085
        Hint = #1042#1082#1083#1102#1095#1077#1085#1080#1077'\'#1074#1099#1082#1083#1102#1095#1077#1085#1080#1077' '#1087#1086#1083#1085#1086#1101#1082#1088#1072#1085#1085#1086#1075#1086' '#1088#1077#1078#1080#1084#1072
        ImageIndex = 8
        ShortCut = 122
        OnClick = FullScreenItemClick
      end
      object WinHeadItem: TMenuItem
        AutoCheck = True
        Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1086#1082#1085#1072
        Checked = True
        Hint = #1054#1090#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1080#1083#1080' '#1089#1082#1088#1099#1090#1080#1077' '#1079#1072#1075#1086#1083#1086#1074#1082#1072' '#1086#1082#1085#1072
        ShortCut = 32835
        OnClick = WinHeadItemClick
      end
      object spr13: TMenuItem
        Caption = '-'
      end
      object QualityItem: TMenuItem
        Caption = #1050#1072#1095#1077#1089#1090#1074#1086
        Hint = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1082#1072#1095#1077#1089#1090#1074#1072' '#1074#1086#1089#1087#1088#1086#1080#1079#1074#1077#1076#1077#1085#1080#1103' '#1092#1072#1081#1083#1072
        ImageIndex = 9
        object LowItem: TMenuItem
          Caption = #1053#1080#1079#1082#1086#1077
          Hint = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1085#1080#1079#1082#1086#1075#1086' '#1082#1072#1095#1077#1089#1090#1074#1072' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
          RadioItem = True
          OnClick = LowItemClick
        end
        object HighItem: TMenuItem
          Caption = #1042#1099#1089#1086#1082#1086#1077
          Hint = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1074#1099#1089#1086#1082#1086#1075#1086' '#1082#1072#1095#1077#1089#1090#1074#1072' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
          RadioItem = True
          OnClick = HighItemClick
        end
        object MediumItem: TMenuItem
          Caption = #1053#1072#1080#1083#1091#1095#1096#1077#1077
          Checked = True
          Hint = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1083#1091#1095#1096#1077#1075#1086' '#1082#1072#1095#1077#1089#1090#1074#1072' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
          RadioItem = True
          ShortCut = 16456
          OnClick = MediumItemClick
        end
      end
      object spr14: TMenuItem
        Caption = '-'
      end
      object MainMenuItem: TMenuItem
        Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
        Checked = True
        Hint = #1054#1090#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1080#1083#1080' '#1089#1082#1088#1099#1090#1080#1077' '#1075#1083#1072#1074#1085#1086#1075#1086' '#1084#1077#1085#1102
        ShortCut = 16503
        OnClick = MainMenuItemClick
      end
      object MultipleItem: TMenuItem
        Caption = #1047#1072#1087#1091#1089#1082' '#1086#1076#1085#1086#1081' '#1082#1086#1087#1080#1080
        Hint = #1047#1072#1087#1091#1089#1082#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1074' '#1077#1076#1080#1085#1089#1090#1074#1077#1085#1085#1086#1084' '#1101#1082#1079#1077#1084#1087#1083#1103#1088#1077
        ShortCut = 16506
        OnClick = MultipleItemClick
      end
      object OnTopItem: TMenuItem
        Caption = #1042#1089#1077#1075#1076#1072' '#1074#1087#1077#1088#1077#1076#1080
        Hint = #1042#1082#1083#1102#1095#1077#1085#1080#1077'\'#1074#1099#1082#1083#1102#1095#1077#1085#1080#1077' '#1088#1077#1078#1080#1084#1072' '#1087#1086#1074#1077#1088#1093' '#1074#1089#1077#1093' '#1086#1082#1086#1085
        ShortCut = 16461
        OnClick = OnTopItemClick
      end
      object spr15: TMenuItem
        Caption = '-'
      end
      object StatusItem: TMenuItem
        Caption = #1057#1090#1088#1086#1082#1072' '#1089#1090#1072#1090#1091#1089#1072
        Checked = True
        Hint = #1054#1090#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1080#1083#1080' '#1089#1082#1088#1099#1090#1080#1077' '#1089#1090#1088#1086#1082#1080' '#1089#1086#1089#1090#1086#1103#1085#1080#1103
        ShortCut = 115
        OnClick = StatusItemClick
      end
      object RefreshItem: TMenuItem
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1086#1082#1085#1086
        ImageIndex = 12
        ShortCut = 116
        OnClick = RefreshItemClick
      end
    end
    object ControlItem: TMenuItem
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
      object StaffBackItem: TMenuItem
        Caption = #1053#1072#1079#1072#1076
        Enabled = False
        Hint = #1054#1076#1080#1085' '#1082#1072#1076#1088' '#1085#1072#1079#1072#1076
        ImageIndex = 14
        ShortCut = 66
        OnClick = StaffBackItemClick
      end
      object StaffForwardItem: TMenuItem
        Caption = #1042#1087#1077#1088#1077#1076
        Enabled = False
        Hint = #1054#1076#1080#1085' '#1082#1072#1076#1088' '#1074#1087#1077#1088#1077#1076
        ImageIndex = 13
        ShortCut = 70
        OnClick = StaffForwardItemClick
      end
      object spr16: TMenuItem
        Caption = '-'
      end
      object PlayItem: TMenuItem
        Caption = #1042#1086#1089#1087#1088#1086#1080#1079#1074#1077#1089#1090#1080
        Enabled = False
        Hint = #1042#1086#1089#1087#1088#1086#1080#1079#1074#1077#1089#1090#1080' '#1090#1077#1082#1091#1097#1080#1081' '#1092#1072#1081#1083
        ImageIndex = 15
        ShortCut = 80
        OnClick = PlayItemClick
      end
      object ReplayItem: TMenuItem
        Caption = #1055#1077#1088#1077#1084#1086#1090#1082#1072
        Enabled = False
        Hint = #1047#1072#1087#1091#1089#1082' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1092#1072#1081#1083#1072' '#1089' '#1085#1072#1095#1072#1083#1072
        ImageIndex = 16
        ShortCut = 82
        OnClick = ReplayItemClick
      end
      object StopItem: TMenuItem
        Caption = #1055#1088#1080#1086#1089#1090#1072#1085#1086#1074#1080#1090#1100
        Enabled = False
        Hint = #1055#1088#1080#1086#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1092#1072#1081#1083
        ImageIndex = 17
        ShortCut = 83
        OnClick = StopItemClick
      end
      object spr17: TMenuItem
        Caption = '-'
      end
      object GoToItem: TMenuItem
        Caption = #1055#1077#1088#1077#1081#1090#1080'...'
        Enabled = False
        Hint = #1055#1077#1088#1077#1081#1090#1080' '#1074' '#1091#1082#1072#1079#1072#1085#1085#1091#1102' '#1087#1086#1079#1080#1094#1080#1102
        ImageIndex = 40
        ShortCut = 16455
        OnClick = GoToItemClick
      end
      object GoToNextItem: TMenuItem
        Caption = #1055#1077#1088#1077#1081#1090#1080' '#1076#1072#1083#1077#1077'...'
        Enabled = False
        Hint = #1055#1077#1088#1077#1081#1090#1080' '#1089#1085#1086#1074#1072' '#1087#1086' '#1091#1082#1072#1079#1072#1085#1085#1086#1084#1091' '#1082#1072#1076#1088#1091
        ImageIndex = 41
        ShortCut = 113
        OnClick = GoToNextItemClick
      end
    end
    object FavoritesItem: TMenuItem
      Caption = #1048#1079#1073#1088#1072#1085#1085#1086#1077
      object AddFavItem: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1048#1079#1073#1088#1072#1085#1085#1086#1077'...'
        Hint = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1092#1072#1081#1083#1072' '#1074' '#1089#1087#1080#1089#1086#1082' '#1080#1079#1073#1088#1072#1085#1085#1086#1075#1086
        ImageIndex = 60
        ShortCut = 16452
        OnClick = AddFavItemClick
      end
      object OrgFavItem: TMenuItem
        Caption = #1059#1087#1086#1088#1103#1076#1086#1095#1080#1090#1100' '#1048#1079#1073#1088#1072#1085#1085#1086#1077'...'
        Hint = #1059#1087#1086#1088#1103#1076#1086#1095#1080#1090#1100' '#1080#1079#1073#1088#1072#1085#1085#1099#1077' '#1089#1089#1099#1083#1082#1080
        ImageIndex = 61
        ShortCut = 16450
        OnClick = OrgFavItemClick
      end
      object spr18: TMenuItem
        Caption = '-'
      end
      object SaveFavLinksItem: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1080#1079#1073#1088#1072#1085#1085#1099#1093' '#1089#1089#1099#1083#1086#1082
        Hint = 
          #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1082#1072#1090#1072#1083#1086#1075' '#1074' '#1082#1086#1090#1086#1088#1086#1084' '#1073#1091#1076#1077#1090' '#1093#1088#1072#1085#1080#1090#1100#1089#1103' '#1073#1072#1079#1072' '#1076#1072#1085#1085#1099#1093' '#1080#1079#1073#1088#1072#1085#1085 +
          #1099#1093' '#1089#1089#1099#1083#1086#1082
        ImageIndex = 57
        OnClick = SaveFavLinksItemClick
      end
    end
    object ServiceItem: TMenuItem
      Caption = #1048#1085#1089#1090#1088#1091#1084#1077#1085#1090#1099
      object RunWinItem: TMenuItem
        Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100'...'
        Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1079#1072#1087#1091#1089#1082' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' '#1089#1088#1077#1076#1089#1090#1074#1072#1084#1080' Windows'
        ImageIndex = 28
        OnClick = RunWinItemClick
      end
      object ExeItem: TMenuItem
        Action = RunProgram
        Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100'...'
        Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
        ImageIndex = 19
      end
      object SelectProItem: TMenuItem
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1080#1079'...'
        Hint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091' '#1089' '#1087#1086#1089#1083#1077#1076#1091#1102#1097#1080#1084' '#1079#1072#1087#1091#1089#1082#1086#1084
        ImageIndex = 29
        OnClick = SelectProItemClick
      end
      object spr19: TMenuItem
        Caption = '-'
      end
      object FindFilesItem: TMenuItem
        Caption = #1060#1072#1081#1083#1099' '#1080' '#1087#1072#1087#1082#1080'...'
        Hint = #1053#1072#1081#1090#1080' swf-'#1092#1072#1081#1083#1099' '#1089#1088#1077#1076#1089#1090#1074#1072#1084#1080' Windows'
        ImageIndex = 48
        ShortCut = 114
        OnClick = FindFilesItemClick
      end
      object FindItem: TMenuItem
        Caption = #1048#1089#1082#1072#1090#1100'...'
        Hint = #1055#1086#1080#1089#1082' swf-'#1092#1072#1081#1083#1086#1074
        ImageIndex = 49
        ShortCut = 16459
        OnClick = FindItemClick
      end
      object spr20: TMenuItem
        Caption = '-'
      end
      object FlashLogItem: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1078#1091#1088#1085#1072#1083#1072'...'
        Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1078#1091#1088#1085#1072#1083#1072' '#1088#1072#1085#1077#1077' '#1086#1090#1082#1088#1099#1090#1099#1093' '#1092#1072#1081#1083#1086#1074
        ImageIndex = 64
        OnClick = FlashLogItemClick
      end
      object spr21: TMenuItem
        Caption = '-'
      end
      object OptionsItem: TMenuItem
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099'...'
        Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        ImageIndex = 20
        ShortCut = 32781
        OnClick = OptionsItemClick
      end
      object ResetItem: TMenuItem
        Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
        Hint = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1074#1089#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
        ImageIndex = 52
        OnClick = ResetItemClick
      end
    end
    object ChooseLangItem: TMenuItem
      Caption = #1048#1085#1090#1077#1088#1092#1077#1081#1089
      object EnItem: TMenuItem
        Caption = #1040#1085#1075#1083#1080#1081#1089#1082#1080#1081' (Eng)'
        Hint = #1042#1099#1073#1088#1072#1090#1100' '#1072#1085#1075#1083#1080#1081#1089#1082#1080#1081' '#1080#1085#1090#1077#1088#1092#1077#1081#1089' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        RadioItem = True
        OnClick = EnItemClick
      end
      object RusItem: TMenuItem
        Caption = #1056#1091#1089#1089#1082#1080#1081' (Rus)'
        Checked = True
        Hint = #1042#1099#1073#1088#1072#1090#1100' '#1088#1091#1089#1089#1082#1080#1081' '#1080#1085#1090#1077#1088#1092#1077#1081#1089' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        RadioItem = True
        OnClick = RusItemClick
      end
    end
    object HelpItem: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      object SysInfoItem: TMenuItem
        Caption = #1057#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1089#1080#1089#1090#1077#1084#1077'...'
        Hint = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1089#1080#1089#1090#1077#1084#1077
        ImageIndex = 21
        OnClick = SysInfoItemClick
      end
      object TipOnDayItem: TMenuItem
        Caption = #1057#1086#1074#1077#1090' '#1076#1085#1103'...'
        Hint = #1063#1080#1090#1072#1090#1100' '#1087#1086#1083#1077#1079#1085#1099#1077' '#1089#1086#1074#1077#1090#1099
        ImageIndex = 59
        OnClick = TipOnDayItemClick
      end
      object spr22: TMenuItem
        Caption = '-'
      end
      object HKItem: TMenuItem
        Caption = #1043#1086#1088#1103#1095#1080#1077' '#1082#1083#1072#1074#1080#1096#1080
        Hint = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1075#1086#1088#1103#1095#1080#1077' '#1082#1083#1072#1074#1080#1096#1080' '#1086#1082#1085#1072
        ImageIndex = 31
        OnClick = HKItemClick
      end
      object InfoItem: TMenuItem
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103'...'
        Hint = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1077
        ImageIndex = 26
        ShortCut = 16498
        OnClick = InfoItemClick
      end
      object spr23: TMenuItem
        Caption = '-'
      end
      object HomePageItem: TMenuItem
        Caption = #1044#1086#1084#1072#1096#1085#1103#1103' '#1089#1090#1088#1072#1085#1080#1094#1072'...'
        Hint = #1055#1077#1088#1077#1081#1090#1080' '#1085#1072' web-'#1089#1072#1081#1090' '#1087#1088#1086#1077#1082#1090#1072
        ImageIndex = 66
        OnClick = HomePageItemClick
      end
      object LicItem: TMenuItem
        Caption = #1051#1080#1094#1077#1085#1079#1080#1103
        Default = True
        Hint = #1055#1088#1086#1095#1080#1090#1072#1090#1100' '#1083#1080#1094#1077#1085#1079#1080#1086#1085#1085#1086#1077' '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077
        ImageIndex = 22
        ShortCut = 16496
        OnClick = LicItemClick
      end
      object SendItem: TMenuItem
        Caption = #1054#1073#1088#1072#1090#1085#1072#1103' '#1089#1074#1103#1079#1100
        Hint = #1053#1072#1087#1080#1089#1072#1090#1100' '#1087#1080#1089#1100#1084#1086' '#1072#1074#1090#1086#1088#1091' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        ImageIndex = 23
        ShortCut = 8304
        OnClick = SendItemClick
      end
      object spr24: TMenuItem
        Caption = '-'
      end
      object MacromediaFlashPlayerItem: TMenuItem
        Caption = 'Macromedia Flash Player'
        Hint = 'http://www.macromedia.com/software/flash/fl4about'
        ImageIndex = 25
        OnClick = MacromediaFlashPlayerItemClick
      end
      object SourceCodeItem: TMenuItem
        Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1082#1086#1076'...'
        Hint = #1055#1086#1083#1091#1095#1080#1090#1100' '#1080#1089#1093#1086#1076#1085#1099#1081' '#1082#1086#1076' FlashCore'
        ImageIndex = 63
        OnClick = SourceCodeItemClick
      end
      object spr25: TMenuItem
        Caption = '-'
      end
      object AboutItem: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
        Hint = 
          #1054#1090#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1081' '#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1077', '#1085#1086#1084#1077#1088#1077' '#1074#1077#1088#1089#1080#1080' '#1080' '#1072#1074#1090#1086#1088#1089#1082#1080#1093' '#1087#1088#1072#1074 +
          #1072#1093
        ImageIndex = 24
        ShortCut = 112
        OnClick = AboutItemClick
      end
    end
  end
  object OpenDlg: TOpenDialog
    OnShow = OpenDlgShow
    DefaultExt = '*.swf'
    Filter = 'Flash '#1092#1072#1081#1083#1099' (*.swf)|*.swf|JPEG Image File (*.jpg)|*.jpg'
    Left = 32
    Top = 48
  end
  object T1: TTimer
    Interval = 1
    OnTimer = T1Timer
    Left = 32
    Top = 80
  end
  object ActionList: TActionList
    Left = 96
    Top = 16
    object RunProgram: TFileRun
      Category = 'File'
      Browse = True
      BrowseDlg.OnShow = RunProgramFileRunBrowseDlgShow
      BrowseDlg.DefaultExt = '*.*'
      BrowseDlg.Filter = 
        #1055#1088#1086#1075#1088#1072#1084#1084#1099' (*.exe)|*.exe|'#1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*|'#1041#1080#1073#1083#1080#1086#1090#1077#1082#1080' (*.dll)|*' +
        '.dll'
      BrowseDlg.Title = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1092#1072#1081#1083
      Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1092#1072#1081#1083'...'
      Operation = 'open'
      ShowCmd = scShowNormal
      ShortCut = 120
    end
  end
  object TrayMenu: TPopupMenu
    Images = ImageList1
    Left = 64
    Top = 16
    object RestoreItem: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00737B
        7300BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00737B
        73008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFF
        FF008CFFFF00FFFFFF008CFFFF00BDBDBD0000000000FF00FF00FF00FF00737B
        7300FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFF
        FF00FFFFFF008CFFFF00FFFFFF00BDBDBD0000000000FF00FF00FF00FF00737B
        73008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFF
        FF008CFFFF00FFFFFF008CFFFF00BDBDBD0000000000FF00FF00FF00FF00737B
        7300FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFF
        FF00FFFFFF008CFFFF00FFFFFF00BDBDBD0000000000FF00FF00FF00FF00737B
        73008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFF
        FF008CFFFF00FFFFFF008CFFFF00BDBDBD0000000000FF00FF00FF00FF00737B
        7300FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFF
        FF00FFFFFF008CFFFF00FFFFFF00BDBDBD0000000000FF00FF00FF00FF00737B
        73008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFF
        FF008CFFFF00FFFFFF008CFFFF00BDBDBD0000000000FF00FF00FF00FF00737B
        7300FFFFFF00FFFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFF
        FF00FFFFFF008CFFFF00FFFFFF00BDBDBD0000000000FF00FF00FF00FF00737B
        7300FFFFFF00FFFFFF00FFFFFF00FFFFFF008CFFFF00FFFFFF00FFFFFF00FFFF
        FF008CFFFF00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00737B
        7300FFFFFF00FFFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFF
        FF000000000000000000000000000000000000000000FF00FF00FF00FF00737B
        7300FFFFFF00FFFFFF00FFFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFF
        FF00737B7300FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00737B
        7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008CFFFF00FFFFFF00FFFF
        FF00737B7300FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00737B
        7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00737B730000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00737B
        7300737B7300737B7300737B7300737B7300737B7300737B7300737B7300737B
        7300737B7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Caption = #1054#1090#1082#1088#1099#1090#1100
      Default = True
      ImageIndex = 0
      ShortCut = 16471
      OnClick = RestoreItemClick
    end
    object TerminateItem: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 32
      OnClick = TerminateItemClick
    end
  end
  object ImageList1: TImageList
    Left = 96
    Top = 48
    Bitmap = {
      494C010143004500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002001000001002000000000000020
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000626262000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6D600D6D6D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000062626200FF734800CECECE006262
      6200000000000000000000000000000000000000000000000000000000000000
      000000000000CEBBAF00ADA49C00BAB1A800C2BBAC00B3A69300D1C6BA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000062626200FF734800CECECE00CECECE00FF8F6B00CECE
      CE00000000000000000000000000000000000000000000000000D6D0CA00C2BB
      AC00C2BBAC00A7917F008A502000B09A7000C2BBAC00A69B9300A69B9300B3A6
      9300D6D6D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00F2F2
      F200000000000000000000000000000000000000000000000000000000000000
      000062626200FF734800CECECE00CECECE00FF8F6B00CECECE00FF734800CECE
      CE0062626200000000000000000000000000D6D6D600CEBBAF00CEBBAF00CEBB
      AF00D1C6BA00A7917F008A502000B09A7000C2BBAC00A69B9300A69B9300B3A6
      9300C0B4A000BFBDBB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA000E0E
      0E002626260026262600262626002626260026262600262626000E0E0E00E6E6
      E60000000000000000000000000000000000000000000000000062626200FF73
      4800CECECE00CECECE00FF8F6B00CECECE00FF734800CECECE00CECECE00FF8F
      6B00CECECE00000000000000000000000000D6D0CA00CEBBAF00D1C6BA00D1C6
      BA00D1C6BA00ADA49C00863D1C00A7917F00CEBBAF00B3A69300B3A69300C0B4
      A000C0B4A000CEB8A200ADA49C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00DADA
      DA000000000000000000000000000000000062626200DC490000CECECE00CECE
      CE00FF8F6B00CECECE00FF734800CECECE00CECECE00FF8F6B00CECECE00FF73
      4800CECECE00626262000000000000000000D6D0CA00D6D0CA00979790006666
      6600D6D0CA00A7917F00825D4800A7917F00D1C6BA00B3A69300B3A69300CEBB
      AF00D1C6BA00D1C6BA00ADA49C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA000E0E
      0E002626260026262600262626002626260026262600262626000E0E0E00DADA
      DA000000000000000000000000000000000062626200CECECE00FF8F6B00CECE
      CE00FF734800CECECE00CECECE00FF8F6B00CECECE00FF734800CECECE00CECE
      CE00FF8F6B00CECECE000000000000000000DED2CE00DED2CE008D8382007B7B
      7B00DED2CE00A69B93007B7B7B00ADA49C00D6D0CA00A69B930099736E008D83
      8200C0B4A000D1C6BA00D1C6BA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA00CECE
      CE00CECECE00CECECE00CECECE00CECECE00C2C2C200CECECE00CECECE00DADA
      DA000000000000000000000000000000000000000000CECECE00DC490000CECE
      CE00CECECE00FF8F6B00CECECE00FF734800CECECE00CECECE00FF8F6B00CECE
      CE00FF734800CECECE006262620000000000DED2CE00DEDEDD00CDC8C400CDC8
      C400EAD9C900D6D0CA00D6D0CA00D6D0CA00CDC8C400C69D8000AA4C1A009F61
      4B0099736E00A7917F00CDC8C400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA000E0E
      0E002626260026262600262626000E0E0E000E0E0E00262626000E0E0E00C2C2
      C200000000000000000000000000000000000000000062626200CECECE00FF8F
      6B00CECECE00FF734800CECECE00CECECE00FF8F6B00CECECE00FF734800CECE
      CE00CECECE00FF8F6B00CECECE0000000000D6D0CA00D6D0CA00E7E3DE00EBE2
      D700EBE2D700EBE2D700D6D0CA00CDC8C400D8A37700B95F2300B54E2700B54E
      2700AA442C00825D4800B3A69300DEDEDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA00CECE
      CE00CECECE00CECECE00B6B6B60000000000000000001A1A1A0092929200B6B6
      B600000000000000000000000000000000000000000000000000CECECE00DC49
      0000CECECE00CECECE00FF8F6B00CECECE00FF734800CECECE00CECECE00FF8F
      6B00CECECE00DC490000CECECE0062626200B3A69300C6C7C700DED2CE00E6E6
      E700E7E3DE00DED2CE00CDC8C400DAA0A400C2482F00C2482F00B54E2700B54E
      270099462C0099462C0099462C00C09B91000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA000E0E
      0E0026262600262626000E0E0E000092DC000062960025AAFF00000000001A1A
      1A0000000000000000000000000000000000000000000000000062626200CECE
      CE00FF8F6B00CECECE00FF734800CECECE00CECECE00FF8F6B00CECECE00DC49
      0000CECECE00CECECE00626262000000000000000000C2BBAC00BFBDBB00D6D6
      D600D6D6D600C6C7C700D4A28E00C2482F00C2482F00B54E2700B54E2700AA44
      2C0099462C0099462C00BE947A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA00CECE
      CE00CECECE00AAAAAA0000000000D4F0FF0000325000007AB900007AB9000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00DC490000CECECE00CECECE00FF8F6B00CECECE00DC490000CECECE00CECE
      CE00626262000000000000000000000000000000000000000000C2BBAC00BFBD
      BB00DEDEDD00CEB8A200C2482F00C2482F00C2482F00B54E2700B54E27009946
      2C0099462C00A382680000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA00CECE
      CE00CECECE00929292000092DC00006296000032500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      6200CECECE00FF8F6B00CECECE00DC490000CECECE00CECECE00626262000000
      000000000000000000000000000000000000000000000000000000000000D1C6
      BA00BE947A00A05A2A00AA4C1A00B54E2700B54E2700B54E270099462C009946
      2C00C09B91000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA00CECE
      CE00B6B6B600000000006BC6FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00DC490000CECECE00CECECE006262620000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DED2CE00CEBBAF00A05A2A00863D1C0099462C0099462C0099462C00C07E
      7400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000062626200CECECE0062626200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E6E700CD77500099462C00DED2CE00D1C6BA00CEB8A2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DED2CE00DED2CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800000008000000080000000800000008000000080000000
      000000000000000000000000000000000000000000009AA0A3009CA2A5009CA2
      A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2
      A5009CA2A5009CA2A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B88B
      8100D2AEA500C79F9C00C4C3C300C3B2B400DBB3AA00E4BCAE00DDB2A600C4AF
      B100C4C4C400CCA4A400D6A78D00B78A7D000000000000000000000000000000
      8000000080000000FF000000FF000000FF000000FF000000FF000000FF000000
      800000008000000000000000000000000000000000006481A7006481A7006481
      A7006481A7006481A7006481A7006481A7006481A7006481A7006481A7006481
      A7006481A7006481A7000000000000000000B6887F00C0968C00C3989000C6B9
      B90000000000C9AFAE00D7AEA600D8AEA700D7ACA400C9AEAD0000000000C5BC
      BC00CCA5A200C2928200B6887D0000000000000000000000000000000000C49B
      9100FFFFFF00F3DED700CCA6A500D1ABA800FBE5CB00FFEFCE00FEE4C100D6AE
      A400C9A5A600EDC4A800FFEDB400C59A84000000000000000000000080000000
      80000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000008000000080000000000000000000000000006481A700E5EBF300E5EB
      F300D8E4F000D8E4F000202E9200202E9200202E9200D8E4F000D8E4F000D8E4
      F000D8E4F0006481A7000000000000000000C3988E00FDEEE400F5DED200CBA5
      A400C6B0B000D2A9A600F8DAC400FBDDC200F9D9BB00D9AFA500C5AFB100C9A8
      A800EEC0A300FFD5A900C796810000000000000000000000000000000000C197
      8F00FFFFF900FFFEF000FCF1E100FDF0DC00FFEFD700FFE8CE00FFE8C900FDE4
      C100FCDCB800FFDFB500FFE4B300C39682000000000000008000000080000000
      80008000000080000000000080000000FF000000FF000000FF000000FF000000
      FF000000FF00000080000000800000000000000000006481A700E5EBF300A3B9
      D3008FA6C500D8E4F000202E9200354B9B00202E9200D8E4F0007E95BD007E96
      BC00D8E4F0006481A7000000000000000000C39B9100FFF6EC00FFF4E700F3DB
      D000E9C9BF00F6DBCA00FFE9D000FFE5CB00FFE4C500F9D6BA00E9C0AC00F0C7
      AC00FFD7AF00FFDBAC00C898830000000000000000000000000000000000C297
      9000FFFFFF00FFFFF800FFFFF300FFFDEC00FFF6E300FFF2DA00FFEFD300FFEE
      CC00FFECC600FFE3BB00FFE6BA00C396850000000000000080000000FF000000
      8000000000008000000080000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000800000000000000000006481A700E5EBF300B1C7
      DC00A4B8D200D8E4F000202E9200202E920049B4C100D8E4F0008EA3C4008DA2
      C400D8E4F0006481A7000000000000000000C39A9100FFF6F000FFF7ED00FFF5
      E800FFF2E300FFEFDD00FFEAD500FFE6CF00FFE4C900FFE3C500FFE1BF00FFDF
      B900FFDAB400FFDCB100C898850000000000000000000000000000000000C59E
      9600FFFFFF00E6CECC00DDB9B400DFBDB700DFBBB500DFBAB300DFB9AF00DFB6
      AC00DDB1A800EAC2AE00FFEDC400C3998700000080000000FF000000FF000000
      FF000000FF000000000080000000800000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF0000008000000000006481A700E5EBF300BCCF
      E200B2C6DC00D8E4F000202E9200354B9B00202E9200D8E4F00099AFCD009AAE
      CB00D8E4F0006481A7000000000000000000C49B9400FFF9F600FFFCF400FFF9
      EE00FFF5E800FFF3E300D1C5B500CBC0B100FFEAD000FFE7CB00FFE5C600FFE2
      BF00FFDDB900FFE0B700C89A870000000000B88B8100D2AEA500C79F9C00CAA1
      9C00FFFFFF00ECD6D600E5C6C400E7CAC600E7C7C200E7C5BE00E7C4BC00E7C3
      B900E4BDB300EEC9B700FFF0CA00C3998900000080000000FF000000FF000000
      FF000000FF000000FF000000000080000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000008000000000006481A700E5EBF300C3D4
      E700C1D2E500D8E4F000202E9200354B9B00202E9200D8E4F000ADC1D800AEC2
      D800D8E4F0006481A7000000000000000000C79E9800FFFDFC00EDD9D600DFBB
      B800E0BDB800E0BBB6008D7574002C5A73008A9EB000D1AEA300E0B5AA00DEB3
      A800F2CCB300FFE4BD00C89A880000000000C49B9100FFFFFF00F3DED700CDA5
      9F00FFFFFF00ECD9D900E0BEBD00E3C3C000E3C1BB00E3BFB800E3BFB600E3BC
      B300E0B6AC00EBC6B600FFF4D100C39A8A00000080000000FF000000FF000000
      FF000000FF000000FF0000000000800000008000000080000000800000000000
      FF000000FF000000FF000000FF0000008000B2B9BD00738DAD00E4EAF300B9CA
      DD00C8D7E800D8E4F000202E9200202E9200202E9200D8E4F000C2D1E300ACC0
      D600D8E4F0006481A700B3BABE0000000000CAA29C00FFFEFF00EEDEDD00E2C4
      C200E3C4C100E3C3BE00D7B7B300418DB30077908100C2834500E2A47B00E2B9
      AF00F3D1B900FFE6C200C89B890000000000C1978F00FFFFF900FFFEF000D5AC
      A800FFFFFF00ECD8D800DFBEC000E1C3C500E1C2C000E1C2BF00E1C1BC00E1BF
      B800DFBAB300EBCABB00FFF6D700C39A8C00000080000000FF000000FF000000
      FF000000FF000000FF000000FF00000000008000000080000000000000000000
      FF000000FF000000FF000000FF00000080005C698B007686A100A6B2C400ADC0
      D600BFD1E300D8E4F000D8E4F000D8E4F000D8E4F000D8E4F000B5C9DC009AAF
      C900A4AFC4005B6C8C0039476C0000000000CDA6A100FEFEFE00F8F2F200ECD7
      D600EDD7D400EDD5CF00EDD2CB00C3AEA400C7945B00FFE9CB00E29A5600E6B6
      9400F6D7BF00FFE9C800C89B8A0000000000C2979000FFFFFF00FFFFF800DBB7
      B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFA00FFFFEF00FFFFED00C5A09200000080000000FF000000FF000000
      FF000000FF000000FF000000FF000000000080800000800000000000FF000000
      FF000000FF000000FF000000FF00000080008191AF005C698B007686A1009EAD
      C100B5C5DA00C2D3E400D0DDEC00CEDCEB00D0DDEC00BBCCDF0098ADC6009AAC
      C1005B6C8C0037466F006A7B9E0000000000D2ABA600FFFEFF00EFE1E100D6AE
      AE00D8B1B100D8B0AF00D8B0AE00D8B0AD00BA876E00ECC59C00FAE2C600E3A2
      6000E8B58D00FFECCF00C89C8C0000000000C59E9600FFFFFF00E6CECC00D6AB
      A700E6CCC800E4C6C300E1C4C000DFC3BE00DEC0BB00DBBBB600D9B9B400D8B9
      B200D3B2A900D2B4A700D5B8AB00BA8F840000008000000080000000FF000000
      FF000000FF000000FF000000FF00000080008000000080800000000080000000
      FF000000FF000000FF000000FF0000008000000000008191AF005C698B007686
      A100A1B0C400B7C7D900C9D7E700DBE8F200D0DDEA00B3C4D600AAB7CA006B7B
      980046537A00687A9D000000000000000000D4B0AC00FDFBFC00FEFDFD00FCFA
      FA00FDFAF900FDF8F600FDF5F000FDF3EA00F9EADD00E8B37C00F1CFAC00FFE3
      C600E59B5300E1CBAF00C89C8E0000000000CAA19C00FFFFFF00ECD6D600E5C6
      C400E7CAC600E7C7C200E7C5BE00E7C4BC00E7C3B900E4BDB300EEC9B700FFF0
      CA00C399890000000000000000000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000000080000000808000008080
      00000000FF000000FF00000080000000000000000000000000008191AF005C69
      8B007686A100A4B2C400BACADB00C8D7E700BCCBDC00AFBCCF007686A1005C69
      8B008191AF00000000000000000000000000D9B3B000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFA00FFFEF500FBEFDD00E4AD7400EFCE
      AC00C4B7A9009A978D00BCA29500C3C2C400CDA6A100FFFFFF00ECD9D900E0BE
      BD00E3C3C000E3C1BB00E3BFB800E3BFB600E3BCB300E0B6AC00EBC6B600FFF4
      D100C39A8A000000000000000000000000000000000000008000000080000000
      FF000000FF000000FF000000FF000000FF000000FF0000000000000000008080
      00000000FF000000800000008000000000000000000000000000000000008191
      AF005C698B007686A100A9B5C800B8C6D700B5C1D1007686A1005C698B008191
      AF003A4DA900000000000000000000000000D2AAA600DAB9B600DAB9B500D8B6
      B300D7B5B000D5B2AE00D2B0AB00D0ACA600CEA9A100CCA69E00D0A79700CA8F
      5800BCB8B1009FA4D300383B9F009C9ABC00D2AAA600FFFFFF00ECD8D800DFBE
      C000E1C3C500E1C2C000E1C2BF00E1C1BC00E1BFB800DFBAB300EBCABB00FFF6
      D700C39A8C000000000000000000000000000000000000000000000080000000
      80000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000080000000800000000000000000000000000000000000000000000000
      00008191AF00566080007686A100B3BFD0007686A1005C698B008191AF003F5C
      BF003F5CBF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7BD
      B200919299002D4ABE00003CD2006062B400D8B4B100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFA00FFFFEF00FFFF
      ED00C5A092000000000000000000000000000000000000000000000000000000
      800000008000000080000000FF000000FF000000FF000000FF00000080000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000000008191AF00535C79007686A1005F6983008191AF00000000006A6F
      A1006A6FA1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BEB9C1005A65B900325BCE008583BA00D3ACA900E5CDC900E3C7C400E0C4
      C100DEC4BF00DDC0BC00DABCB800D7B9B500D5B6B200D3B4AC00D2B4A700D5B8
      AB00BA8E84000000000000000000000000000000000000000000000000000000
      0000000000000000800000008000000080000000800000008000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008191AF00525A71008191AF000000000000000000B7BD
      C800B7BDC8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD846300BD734200B56B
      3100B56B3100B5633100B5633100B5633100AD633100AD633100AD633100AD63
      3100AD633100A5633100AD633900AD7B52000000000000000000000000000000
      0000D4C8BE00CBBBAB00D6CECA00E9E5E700F4F4F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001991210003AA160003A4
      180001A11500009D110000990F0000960D000092080000900700008E0500008A
      030000890100008A0000106E120000000000BD734A00E7C6AD00E7C6AD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C69C7B0000000000AD6B39000000000000000000000000000000
      0000D8C5AD00E3CD8A00DAC38B00CBB28800C5AD9000C7B19F00CBB9B000D0C3
      BE00D5CCCA00DED7D600E4DFDE00F5F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008AE18005FCB7A005BCC
      770051C96D0049C6630038BF4F002BBB45002CBC450029BA410022B738001CB4
      300015B2290010AE23000090000000000000BD6B3900EFCEB500E7A57B00FFFF
      FF0063C68C0063C68C0063C68C0063C68C0063C68C0063C68C0063C68C0063C6
      8C00FFFFFF00CE8C6300C69C7B00A56331000000000000000000000000000000
      0000D9C7B000EAD99400EFE29E00EDDF9E00EEDEA000E8D69D00E1CD9B00DEC7
      9A00D9C19A00D6BF9C00CDB29200D1C4BD000000000000000000000000000000
      0000000000000000000000000000BFBFBF000000000000000000000000000000
      000000000000000000000000000000000000000000000FAE1F006BD0860068D1
      85005ECD7B0051C96D0084D89000BBE9C30054CA6E002EBD49002BBB410024BA
      3B001DB7330016B229000090050000000000BD6B3900EFCEB500E7A57B00FFFF
      FF00BDDEC600BDDEC600BDDEC600BDDEC600BDDEC600BDDEC600BDDEC600BDDE
      C600FFFFFF00CE946B00CE9C8400AD633100000000000000000000000000F7F6
      F800CFB39500AA9F7300B6AB7F00F7E8A900ECE0AB00EEE3B100F0E6B600F2E9
      BB00F4ECC000F7F1C800ECDFBB00D4C9C3000000000000000000E3E3E3000000
      000000000000E3E3E300000000000000000000000000E3E3E300000000000000
      0000E3E3E300000000000000000000000000000000000FB1220073D28E0071D4
      8E0066D0840059CC7600BBEAC40000000000D9F4E00059CC7B0030BF4D002BBD
      410025BB3B001CB530000092050000000000BD6B3900EFCEB500E7A57B00FFFF
      FF0063C68C0063C68C0063C68C0063C68C0063C68C0063C68C0063C68C0063C6
      8C00FFFFFF00CE946B00CEA58400AD633100000000000000000000000000DBDA
      DA00C7BC9C00ABA17C003D414400D2CCA800FDEEB500F0E5B800F0E6BD00F1E8
      C100F2EAC600F5EFCD00E9DCC000D7CFCC00000000000000000000000000E3E3
      E300E3E3E300E3E3E30000000000E3E3E30000000000E3E3E300E3E3E300E3E3
      E300000000000000000000000000000000000000000011B323007AD5950076D6
      94006BD289005ECD7D006AD18500D8F3E00000000000DCF5E6005FD0880031C0
      52002BBC400022B737000094070000000000BD6B3900EFCEBD00E7A57B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6946B00D6A58C00AD6331000000000000000000FEFBFB00BBCD
      CC00C4CCB100E9D59C007895A900699BDE00BDBBB900FEF0C700F5ECC800F3EB
      CA00F4EDCF00F9F3D800E7DBC400DDD8D600000000000000000000000000E3E3
      E300E3E3E300E3E3E30000000000FFFFFF0000000000E3E3E300E3E3E300E3E3
      E300000000000000000000000000000000000000000011B5240082D89C008CDD
      A40088DBA10082D99A0075D5910087DBA300EBF9F00000000000DDF5E80064D2
      910034C0550028B93F0000960A0000000000BD6B3900EFCEBD00E7A57B00E7A5
      7B00E7A57B00E7A57B00E7A57B00E7A57B00D69C7300D69C7300D69C7300D69C
      7300D69C7300D69C7300D6AD8C00AD6331000000000000000000E7E1DF00AAD8
      D600CCCDB100FAEAB300D0CFC4007DA9E6002D60BA00869B8F00F8EFCA00F9F2
      D800F5F0D700FBF8E200E5D9C700E8E3E3000000000000000000E3E3E300E3E3
      E300E3E3E30000000000FFFFFF007F7F7F00FFFFFF0000000000E3E3E300E3E3
      E300E3E3E3000000000000000000000000000000000011B6240092DCA800E1F6
      E500F2FBF300F1FAF300F1FAF400EDFAF100F3FCF6000000000000000000E4F8
      EF005DCE83002CBB440000980C0000000000BD6B3900EFD6C600E7A57B00E7A5
      7B00E7A57B00E7A57B00E7A57B00E7A57B00E7A57B00DE9C7300D69C7300D69C
      7300D69C7300D69C7300DEB59400AD63310000000000FEFBFB00C4CDC900B2F1
      F100D6CCAD00F8ECBF00E8DEC1007FA1B400488F3600367F0E0082A85400F7F0
      DE00FCF7E500FEFCEB00DCD2C600EFECEC000000000000000000E3E3E300E3E3
      E30000000000FFFFFF00E3E3E3007F7F7F00E3E3E300FFFFFF0000000000E3E3
      E300E3E3E3000000000000000000000000000000000012B8250098DEAF00E5F7
      EB00F4FCF800F4FCF800F3FCF700EFFBF400F9FEFB000000000000000000E5F8
      EF0063CF880034BE4C00009B0F0000000000BD6B3900F7D6C600E7A57B00E7A5
      7B00E7A57B00E7A57B00E7A57B00E7A57B00E7A57B00DE9C7300D69C7300D69C
      7300D69C7300D69C7300DEB59C00B563310000000000E6DFDD00B9E1DD00BDF0
      F000DFD0B000F6EDC900FBF1D000AEBA96008EBB6E005AA819003C8804008FB1
      6A00FEFAF300FFFFF600D7CCC400F4F2F200E3E3E300E3E3E300E3E3E300E3E3
      E30000000000E3E3E300FFFFFF007F7F7F00FFFFFF00E3E3E30000000000E3E3
      E300E3E3E300E3E3E300E3E3E300000000000000000015BA280095DDAF00A1E4
      B9009DE2B60097E0B1008DDEAB00A9E6C300F6FDF90000000000E0F6EA0074D6
      9D004CC86D0040C25A00019D120000000000BD6B3900F7D6C600E7A57B00CE8C
      6300CE8C6300CE8C6300CE946B00CE946B00CE946B00CE8C6300CE8C6300CE8C
      6300CE8C6300D69C7300DEB59C00B5633100F6F3F200C5CECA00C6FDFD00C6E0
      DC00EAD8B900F6F0D200F8F0D600F7F0D500C1CAAF009AC679005CA62300438D
      0B009CBB8100FFFDFF00D5C8C300FBFAFA000000000000000000E3E3E300E3E3
      E30000000000FFFFFF00E3E3E300FFFFFF00E3E3E300FFFFFF0000000000E3E3
      E300E3E3E3000000000000000000000000000000000016BC2A0098DFB40098E2
      B50090DEAD0086DBA5009AE1B700ECFAF20000000000E4F7EC007FDAA5005ACD
      7D0054CA6F0049C6630002A0140000000000BD6B3900F7DECE00E7A57B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DE9C7300E7BDA500B5633100C3BFBA00CAF5F300D0FFFF00CFD7
      CD00F2E5C800F7F2DA00F7F3DD00FFF9E800E1E4CD00B6C6A800A2CB840079B5
      4B0072A74C00B5BA9A00D6C2BE00FFFFFF000000000000000000E3E3E300E3E3
      E300E3E3E30000000000FFFFFF00E3E3E300FFFFFF0000000000E3E3E300E3E3
      E300E3E3E3000000000000000000000000000000000017BE2B009EE1B800A0E4
      BB009AE2B5008FDEAD00C5EED70000000000E5F7EE008FDEB0006CD38D0066D0
      83005ECE7B0051CA6B0004A2160000000000BD6B3900F7DECE00E7A57B00FFFF
      FF00FFFFFF00CE8C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7A57B00E7C6AD00B56B3100C6BBB400CBDDD800D9FAFA00DDD5
      C700FCF6E000FBF9E700FBF8E900FBF9EC00FFFFF900CBD6C000AFC49F00A7CD
      8A00B0D29700A6B48E00B4B4A400FFFFFF00000000000000000000000000E3E3
      E300E3E3E300E3E3E300000000000000000000000000E3E3E300E3E3E300E3E3
      E300000000000000000000000000000000000000000017BE2B00A3E2BB00A8E6
      C100A2E3BB0099E1B500A4E4BD00BFECD0009BE1B60082D9A00077D6930071D4
      8D0068D185005BCB760006A5190000000000BD734200F7DECE00E7A57B00FFFF
      FF00FFFFFF00CE8C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7A57B00EFD6C600B56B3100FEFDFE00E6DDDA00CFC8C300C9A9
      9800E6D1BF00EEE1D200F4ECE000FAF6EE00FFFEFB00FFFFFF009FBD89005D9E
      2C00CDE0BC00D4E5C800A6B79B00DBDDD800000000000000000000000000E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300000000000000000000000000000000000000000011C224009FDEB400A3E2
      BA009DDFB60099DEB10093DCAB0089D9A40086D79F0081D59A007AD3940073D0
      8C006CCE850060CA790002AA150000000000BD7B4A00F7DECE00E7AD7B00FFFF
      FF00FFFFFF00CE8C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFCEBD00EFCEBD00BD7342000000000000000000FBF9F900DFD5
      D200D1C0B900DFCCC500E2CCC000DDC4B700D8C2BB00DED1CE00D8CDCA005F90
      2F007EB15700F9F9F800D7E1D000B8C2B0000000000000000000E3E3E3000000
      000000000000E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300000000000000
      0000E3E3E3000000000000000000000000000000000022A22A0013BB210018B8
      280018B7270017B6260016B5240015B2240014B1220014AF210013AD200012AB
      1F0012A81E000BAA17001B8F220000000000C6947300F7DECE00F7DECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFCEBD00CE8C6300C6AD94000000000000000000000000000000
      0000FAFBFA00E8E4E200DACBC300DDD4CF00EEECEB00F5F4F400F8F4F500D1D7
      C90048901000AAC89200EFF1ED00BEC8B7000000000000000000000000000000
      0000000000000000000000000000E3E3E3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6A58C0000000000BD7B5200BD73
      4200BD6B3900BD6B3900BD6B3900BD6B3900BD6B3900BD6B3900BD6B3900BD6B
      3900BD734200BD845A00C6ADA500C0C0C0000000000000000000000000000000
      00000000000000000000FDFEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00AFC49E00608E3E00AFBCA500F0F2F0000000000000000000000000000000
      0000000000000000000000000000E3E3E3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009393C300A1A1C100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A2A9AC009CA2A5009CA2A5009CA2
      A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2
      A5009CA2A5009CA2A5009CA2A500A2A9AC000000000000000000000000000000
      0000E1E1E100D2D2D200C6C6C600C6C6C600C7C7C700C6C6C600C8C8C800D4D4
      D400E2E2E2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BBBBD5000000DD000808C500D5D5D8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A9814700BE7D2E00BA792A00B372
      2100B8782900B5742300B5742300B5742300B5742300B5742300B5742300B574
      2300B5742300B6742300B47C3700A98147000000000000000000000000000000
      0000699FE200095BDD000556D6002968CA00044FC700004CC600145AD100D7D7
      D700E4E4E4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D1E1000505E7000000ED009D9DC4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBDBB0099736E00000000000000
      000000000000000000000000000000000000D0863100E1E0DE00E1E0DE00E1E0
      DE00E1E0DE00E1E0DE00E1E0DE00E1E0DE00E1E0DE00E1E0DE00E1E0DE00E1E0
      DE00E1E0DE00E1E0DE00E1E0DE00D08631000000000000000000000000000000
      00001567E6001173F000025CE800206FE500045EEB00004CC600BCBCBC00D1D1
      D100DCDCDC00DBDBDB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002020DA000000FB006A6ABD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E700A69B9300C4A294000000
      000000000000000000000000000000000000CE883400FBFBFB00FBFBFB00FFFF
      FF00EEEBEA00EEEEEE00F3E3EA0088B78F00ADCBAF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE883400E6E6E600E2E2E200DEDEDE00DFDF
      DF001F71E9001579F0000760E7002B77E2000D6BF100004DCA00A8A8A800BDBD
      BD00C7C7C700C5C5C500CECECE00000000000000000000000000000000000000
      0000D5D5D5005353530091919000000000004646D3000F0FFF004848BF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D0CA00BB7C5E000000
      000000000000000000000000000000000000CD863300FFFFFF00FFFFFF00FFFF
      FF00D4D4D400D3D9DA00DDDDDC0055A06E00187F2700CFDFCF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CD863300E2E2E200D4D4D400CCCCCC00CECE
      CE00A2BCD9000E67E5000058E6000059E6001A81F8000051D200297F29002089
      20001D8C1D00218E2100C5C5C500000000000000000000000000000000000000
      00007A7A7A000000000016161500E3E3DB006565D6002D2DFF003535CB00E2E2
      E200000000000000000000000000000000000000000000000000000000000000
      000000000000BF9069000000000000000000D8A37700CB914400B7673B00CB91
      4400D8A37700000000000000000000000000CE873300FFFFFF00FFFFFF00FFFF
      FF0088B78F0055A06E0055A06E0042B56B0052D27C0042B56B00B7D4BC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE873300CDAC9700BA7A5000B5815D00B4A1
      94002470EA00146BE100616B80000C6ADD00167BF3000456D7001D8F1D0045B0
      450017BD17001D8C1D00C5C5C500000000000000000000000000000000000000
      0000909090000000000000000000C8C8BE008686DC004343FE003B3BDB00C0C0
      D000000000000000000000000000000000000000000000000000000000000000
      0000BF906900B7733C00BB8E4D0000000000D4A28E00B7733C00B7733C00B773
      3C00DED2CE00000000000000000000000000E8953300FFFFFF00FFFFFF00FFFF
      FF00ADCBAF0076B0790055A06E0042B56B006ED0820042B56B00B7D4BC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E8953300C2835700C48B5D00C28A6000BF7F
      52002E7AE900035DE700156AE000116FD8000B6AEC000B5EDE001F981F0054B9
      540031C531001D901D00C5C5C500000000000000000000000000000000000000
      00009F9F9E000000000000000000B4B4A300A1A1DA005858F5005B5BF1007B7B
      B100C5C5CF00B9B9CB00C4C4CF00F5F5F400000000000000000000000000CEB8
      A200CD946100C7903600CD946100D8A3770000000000E4B99700CB914400EAD9
      C90000000000000000000000000000000000F09B3300FFFFFF00FFFFFF00FFFF
      FF00D4D4D400DDDDDC00DDDDDC0055A06E00309B3900CFDFCF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F09B3300CA977400C17E4F00C8916800CA8C
      5800B29786004B87D8002673EA001969E8001D73E30047A3AB005FB95F0061BF
      61004ACC4A001F961F00C5C5C500000000000000000000000000000000000000
      0000A3A3A20000000900040434004E4E8F006262C4007B7BF7008C8CFF006565
      DA006969D5007171DA005A5ACA009191C2000000000000000000000000000000
      0000EAD9C900CB914400E3C9B900000000000000000000000000EAD9C9000000
      000000000000000000000000000000000000F5A23400FFFFFF00FFFFFF00FFFF
      FF00E9EAEA00EEEEEE00F3E3EA0088B78F00ADCBAF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F5A2340000000000D8C3B400C07B4C00C997
      6E00D2945F00C4875B00BF8056005AAA4E0069BA670086DA86007AC87A0076C9
      760064D36400209A2000C5C5C500000000000000000000000000000000000000
      0000A3A3B9003C3CB6008080FB008888FF008989F9008E8EF7008E8EF5009292
      F6008F8FF1007F7FE3006464CF00B2B3DA000000000000000000000000000000
      000000000000E1B87900DEC79D00000000000000000000000000000000000000
      000000000000000000000000000000000000EDAE0800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EDAE080000000000D5CBC400C27F5000DAA5
      7500C9946B00D5A37700C082580050B450009CD79C009DE49D0022A622007CC8
      7C007EDB7E00259F2500C5C5C500000000000000000000000000000000000000
      0000B0B0B90027276500393983004E4E95009B9BE0009F9FE200A4A4E000ABAB
      DE00B8B8DF00CCCCE500E8E8F100000000000000000000000000000000000000
      000000000000EBE2D700E0C06100EAD9C9000000000000000000000000000000
      000000000000000000000000000000000000E4AB0800E1E0DE00E1E0DE00E1E0
      DE00E1E0DE00E1E0DE00E1E0DE00E1E0DE00E1E0DE00E1E0DE00E1E0DE00E1E0
      DE00E1E0DE00E1E0DE00E1E0DE00E4AB0800D7BDAC00C58B6400CD997100D5A6
      7F00C0774600E1AE8100C17D500071A95A0068B76200A0DDA00094D294009FDA
      9F0097E2970029A42900CECECE00000000000000000000000000000000000000
      0000A8A8A70033332C003E3E38004A4A4400DEDED800EAEAE300F3F3EC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E700000000000000000000000000000000000000
      000000000000000000000000000000000000E9B50800D6D0CB00D6D0CB00D6D0
      CB00D6D0CB00D6D0CB00D6D0CB00D6D0CB00D6D0CB00D6D0CB00D6D0CB00D6D0
      CB00D6D0CB00D6D0CB00D6D0CB00E9B50800CA916B00DEB18A00E2B68E00DEB2
      8A00D9AC8600E9BA8D00DEB08900D8AD870067A64E0046B446003DB13D0039AF
      390034AC340035A93500DFDFDF0000000000C7C7C70077777700676767005D5D
      5D004C4C4C005959590069696900525252005050500055555500595959006464
      6400D7D7D7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0B42B00BC6D0800BC6D0800BC6D
      0800BC6D0800BC6D0800BC6D0800BC6D0800BC6D0800BC6D0800BC6D0800BC6D
      0800BC6D0800BC6D0800BC6D0800E0B42B00CC946F00D59F7700D39D7400D09A
      7200F6C89B00CF986F00D09A7200D19B7300B67C5400DDDDDD00E4E4E4000000
      0000000000000000000000000000000000007B7B7B003C3C3C00505050005858
      58005D5D5D006060600060606000656565006565650066666600676767004C4C
      4C00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EACA6200FDBA0800E2AA0800E2AA
      0800E2AA0800E2AA0800E2AA0800E2AA0800E2AA0800FDDCD100E2AA0800FDDC
      D100E2AA08000871FD00FDBA0800EACA6200E2D6CE00DCC6B700D3AE9600C98B
      6000EAC09900C27F5200CBB19F00D3C1B500DDDAD900E6E6E600000000000000
      00000000000000000000000000000000000000000000DBDBDB00C3C3C300B6B6
      B600A5A5A5009999990094949400949494009B9B9B00ABABAB00BDBDBD00D8D8
      D800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4CB6B00E4CB6B00E4CB
      6B00E4CB6B00E4CB6B00E4CB6B00E4CB6B00E4CB6B00E4CB6B00E4CB6B00E4CB
      6B00E4CB6B00E4CB6B00E8CD710000000000000000000000000000000000D0A3
      8300C9936E00D6BBAA00E2E2E200E6E6E6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000041393800B2AF
      AE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E9EA
      EA00D3D9DA00D4D4D400D4D4D400D3D9DA00E4E4E300EEEEEE00000000000000
      000000000000CCCDCB00181715006C6562000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A2A9AC009CA2A500312927004139
      3800CCCDCB009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2
      A5009CA2A5009CA2A5009CA2A500A2A9AC00000000000000000000000000CCCD
      CB00A6958C00B68E7100D2A38900897A4E006C656200DFCED600EEEEEE000000
      0000E9EAEA0031292700312927004139380000635A000000000052C6DE0052C6
      DE004AC6DE0052C6DE0042BDDE0042BDDE0042BDDE0039BDDE0031B5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A9814700BE7D2E006C6562001817
      1500534E4A00EEEEEE00B5742300B47C3700B47C3700B47C3700B47C3700B47C
      3700B47C3700B47C3700B47C3700A98147000000000000000000D2C0B600D191
      5600F7B85600FCD06B00FCD06B008A5B3400181715004A713E00BAABA300E9EA
      EA006C65620018171500534E4A00C4C4C30000635A008CFFFF000000000052C6
      DE0052C6DE0052C6DE0052C6DE004AC6DE004AC6DE0042BDDE0039BDDE0039BD
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0863100E1E0DE00CCCDCB006C65
      620031292700857F7B00EEEEEE00D7DDE200D7DDE200D7DDE200D7DDE200D3D9
      DA00CAD2D400DFFCFD00E1E0DE00D086310000000000D3CBC400C1723D00F295
      4A00FCD06B00FEEC8900BAC480002D5C7200187F2700187F2700489853006759
      4C0018171500534E4A0090909000EEEEEE0000635A008CFFFF0000CEFF000000
      000052C6DE0052C6DE0052C6DE0052C6DE004AC6DE004AC6DE0042BDDE0042BD
      DE0039BDD6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE883400FBFBFB00FBFBFB00C2BE
      BB006C656200000000009E9F9F00F1F2F200FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00E4E4E300FFFFFF00FFFFFF00CE883400E4E4E3009D7C4400D2792600F1B1
      6F00FCD06B00FEEC8900BAC480000ABC53000ABC53000ABC5300187F27000000
      0000413938006C656200E9EAEA000000000000635A008CFFFF00FFFFFF0000CE
      FF000000000063CEE70052C6DE0052C6DE0052C6DE004AC6DE004AC6DE004AC6
      DE0042BDDE0039BDDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CD863300FFFFFF00FFFFFF00FEFE
      FE00C2BEBB00534E4A0018171500E4E4E300FEFEFE00E9EAEA00E9EAEA00EEEE
      EE00FEFEFE00FFFFFF00FFFFFF00CD863300DDD6D300A5560F00D5833F00F7B8
      5600FCD06B00BAC48000729C680055A06E0052D27C0042B56B00181715004139
      38006C656200D4D4D400000000000000000000635A008CFFFF0000CEFF00EFFF
      FF0000CEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE873300FFFFFF00FFFFFF00FEFE
      FE00FEFEFE00D4D4D400909090009C8B80009090900090909000909090009090
      9000D3D9DA00FFFFFF00FFFFFF00CE873300A6958C00A5560F00D2792600B27D
      52007B726C00405C6B007B726C00857F7B006C6562007B726C00B3A399006759
      4C0067594C00E4E4E300000000000000000000635A008CFFFF00EFFFFF0000CE
      FF00FFFFFF0000CEFF00FFFFFF0000CEFF00EFFFFF0000CEFF00EFFFFF0000CE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8953300FFFFFF00FEFEFE00FEFE
      FE00FEFEFE00EEEEEE009E9F9F00534E4A009C8B8000FEFEFE00FEFEFE00B2AF
      AE009E9F9F00DDDDDC00FFFFFF00E8953300897A4E00A5560F008A5B34006C65
      620090909000BFB7C000DBD3CC00E4CDC200B3A399006C6562006C6288008A5B
      34008A5B3400D3D9DA00000000000000000000635A008CFFFF0000CEFF00FFFF
      FF0000CEFF00EFFFFF008CFFFF008CFFFF008CFFFF008CFFFF008CFFFF008CFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F09B3300FFFFFF00FEFEFE00FEFE
      FE00FEFEFE00E4E4E3007B726C00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00F2EAEE009E9F9F00DDDDDC00F09B33009E7B700070211300534E4A00A4AD
      B500FEFAFA00CEF6F600ADCBAF00F5CAA000F5CAA000DCB8A5007B726C007B72
      6C00857F7B00DDDDDC00000000000000000000635A008CFFFF00FFFFFF0000CE
      FF00EFFFFF0000CEFF008CFFFF0000635A0000635A0000635A0000635A000063
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5A23400FFFFFF00FFFFFF00FEFE
      FE00FEFEFE00A4ADB500A6958C00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00EFFEFE00DDD6D300B7BAB800F5A23400C5B5AD0070211300857F7B00F0F1
      F600F8FEF9008CD4A6006ED082009D9C6000BF805F00B68E7100B6A08800857F
      7B00B7BAB800EEEEEE0000000000000000000000000000635A008CFFFF008CFF
      FF008CFFFF008CFFFF0000635A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDAE0800FFFFFF00FFFFFF00FEFE
      FE00FEFEFE00A4ADB500C2A89D00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FDF4FC00C2BEBB00EDAE0800DDDDDC00702113009C8B8000FFFF
      FF00E4EBEE008CD4A6007FDB94006ED08200897A4E00AA653E00CD9578009E9F
      9F00CCCDCB00000000000000000000000000000000000000000000635A000063
      5A0000635A0000635A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4AB0800E1E0DE00F8FEFE00F4F9
      FE00F1F2F200B2AFAE00C2BEBB00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00EEEEEE00C4C4C300E4AB0800F1F2F200B6A088009C8B8000FFFF
      FF00F1F7F700B3DF9D00B3DF9D00B3DF9D009D9C6000D1915600DAC5BA00B2AF
      AE00C4C4C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9B50800D6D0CB00D6D0CB00D6D0
      CB00D6D0CB00B7BAB800B7BAB800FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00D4D4D400D4D4D400E9B5080000000000EEEBEA00B7BAB800E4E4
      E300FFFFFF00EBE4DB00EAD4C600EBD0B800F5CAA000C8C4A800D3D9DA009E9F
      9F00CCCDCB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0B42B00BC6D0800BC6D0800BC6D
      0800BC6D0800DDDDDC00ACA7A500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00DDDDDC00B7BAB800E9EAEA00E0B42B000000000000000000DDDDDC00B7BA
      B800F9FAF900FFFFFF00F8FEF900EBE4DB00D3CBC400EEEEEE00CCCDCB009E9F
      9F00EEEBEA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EACA6200FDBA0800E2AA0800E2AA
      0800E2AA0800EEEEEE00D4D4D400ACA7A500D4D4D400E9EAEA00E4E4E300CCCD
      CB00B2AFAE00E4E4E300FDBA0800EACA6200000000000000000000000000C4C4
      C300B7BAB800EEEEEE00FFFFFF00FDFAFE00F1F2F200D4D4D4009E9F9F00E4E4
      E300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4CB6B00E4CB6B00E4CB
      6B00E4CB6B00E4CB6B00E4CB6B00CCCDCB009E9F9F00ACA7A500ACA7A500ACA7
      A500DDDDDC00E4CB6B00E8CD7100000000000000000000000000000000000000
      0000C4C4C300ACA7A500B7BAB800C4C4C300ACA7A500ACA7A500DDDDDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CADACA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B4B50098918700817C76008A8B8E00ACAFB200B9B8B700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BEC6BE009DA59D00CADACA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008CAD94005A94630039844200317B390029733100296B2900296B2900216B
      2900216B2900216321000000000000000000000000000000000000000000AAAC
      AF00C2A28400FFFBDA00F8DCC400DDC2A900CAAF99008D817500817A70009595
      9500C8CACA00C0BFBE000000000000000000000000000000000000000000241C
      ED00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009DA59D004444F6009DA59D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADC6B5006BA5
      73005AA563006BB5730073BD7B007BBD7B0073BD7B0073BD7B0073BD730073BD
      73006BB57300216B290000000000000000000000000000000000A5A8AB00C3A6
      8400FFD09900FFEBD700FFF1E000FFF5DE00FFEBCD00FFE8C200DF8C45008D37
      0000AA8367009E8C7C0091949400000000000000000000000000241CED00241C
      ED00241CED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BEC6BE004461E6000808F6008581C6000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006BAD7B006BB5
      730084C68C007BBD7B007BC684007BC684007BC6840073BD7B0073BD7B0073BD
      7B0073BD7300216B29000000000000000000000000009FA0A400CBB28F00FFD7
      9B00F5C99C00FEF2E600F5DFC900E6B99300F3D6C000FFEAD300D6893900AD1B
      0000EC9B6B00FFDCA200847E7800000000000000000000000000241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007D857D000808F6000808F6004461E600BEC6BE0000000000000000000000
      0000000000000000000000000000000000000000000094BD9C006BB573008CCE
      94008CCE94007BC684005AA563003984420031843900317B3900317B3900317B
      3900296B2900296B29000000000000000000B8B8BA00CCB99800FFECA900FDD2
      9D00F8CFA200FFFFFD00F0CCAA00B7270000B5521A00F1DDCB00DD944500B227
      0000DD9D6F00FFDFAD0089847E0000000000000000000000000000000000241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000241CED000000000000000000000000000000000000000000000000000000
      000085A1E6000808F6008581E6000808F6009DA59D0000000000000000000000
      0000000000000000000000000000000000000000000073B57B007BC6840084C6
      8C0084C68C00529C5A007BAD8400000000000000000000000000000000000000
      000000000000000000000000000000000000DEDBD600FFF4B900FFECA900FFE1
      9D00FFDCA200FFFFFF00F9D9B700C73A0000AF3F0000EFD8C700E2973F00B420
      0000DCA17600FFE3B9008B888200000000000000000000000000000000000000
      0000241CED00241CED00241CED0000000000000000000000000000000000241C
      ED00241CED000000000000000000000000000000000000000000000000000000
      00004444F600C6A1E600C6A1E6000808F6004461E6009DA59D00000000000000
      000000000000000000000000000000000000000000005AAD6B0094CE9C0094CE
      9C0073BD7B0084B58C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDBD200FFFFBB00FFE5A500988E
      A7008F89B100FFFFFD00FFFFFF00FFEDD700F0D8C200F7E9DD00EBB78000D275
      1800EAB68E00FFE5BC00918C8600000000000000000000000000000000000000
      000000000000241CED00241CED00241CED000000000000000000241CED00241C
      ED00000000000000000000000000000000000000000000000000000000000000
      0000C6A1E60000000000000000000808F6000808F6008581C600CADACA000000
      0000000000000000000000000000000000000000000063B56B0094CE9C0094CE
      9C0073BD7B0084B58C00000000000000000000000000000000000000000084AD
      8C0000000000000000000000000000000000D3D1D000F9D6AF006775BD000033
      D600002AD1005985DA00FFFFFF00FFFFFF00FFFEF000FCEDDF00FBEEE300FEEB
      D900FFE3C300FFEABA007B727600686C73000000000000000000000000000000
      00000000000000000000241CED00241CED00241CED00241CED00241CED000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008581E6000808F6004444F6009DA59D00CADA
      CA0000000000000000000000000000000000000000007BBD84008CCE940094CE
      9C0094CE9C005AA5630084B58C00000000000000000000000000000000005294
      5A006BA573000000000000000000000000005A7AD3003E62CE000845DB00134B
      D3000D44CC00002AC400567DD500FFFFFD00FFFFF400FFF7E500FFEEDA00FFEC
      D500FFF8CD00CBBEC2001C3B8C0088888D000000000000000000000000000000
      0000000000000000000000000000241CED00241CED00241CED00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008581E6000808F6000808F6004444F600BEC6
      BE009DA59D00000000000000000000000000000000009CC6A5007BC6840094D6
      A50094D6A50094CE9C006BB5730052A55A004A9C520042944A0042944A005AA5
      63005AA5630073A57B000000000000000000255AE100184FDF002455D7002152
      D2001A4ECC001045C8000026BF006686D400FFFFFF00FFFFF400FFFBE600FFFF
      E000C9C4D10011429D008A919A00000000000000000000000000000000000000
      00000000000000000000241CED00241CED00241CED00241CED00241CED000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808F6000808F6000808F6000808
      F60085A1E600BEC6BE000000000000000000000000000000000084C68C008CCE
      94009CD6A50094D69C0094D6A50094D6A50094CE9C0094CE9C0094CE9C008CCE
      94008CCE94005AA563007BA58400000000009FADD6003760D7002153D7002452
      D200204FCC001A4CC7000D41C1000026B9006785D000FFFFFF00FFFFFC00F1EB
      EC002854A3008A8F960000000000000000000000000000000000000000000000
      000000000000241CED00241CED00241CED000000000000000000241CED00241C
      ED00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6A1E6000808F6000808F6000808
      F6000808F600C6A1E600000000000000000000000000000000000000000084C6
      8C007BC684008CCE940094D6A50094D6A50094D6A50094CE9C0094CE9C0094CE
      9C008CCE94005AA5630084AD8C000000000000000000A3AFD100345ED400204F
      D100204FCB001D4CC7001749C2000A40BC000021B2006886CD00F7F7F8004266
      A9008E919400000000000000000000000000000000000000000000000000241C
      ED00241CED00241CED00241CED0000000000000000000000000000000000241C
      ED00241CED000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004444F6000808F6004444
      F600000000000000000000000000000000000000000000000000000000000000
      00009CC6A5007BBD840063B56B005AAD630052AD5A0052A55A0052A55A006BB5
      730063AD6B007BAD840000000000000000000000000000000000A8B2D200335D
      D0001B4BCB001C4BC6001747C1001145BC000740B7000033B100043EB500787D
      8200000000000000000000000000000000000000000000000000241CED00241C
      ED00241CED00241CED0000000000000000000000000000000000000000000000
      0000241CED00241CED0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6A1E6000808F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000063AD
      6B007BB58400000000000000000000000000000000000000000000000000AAB4
      D200315BCC001D4CC700234FC0002B54BE004C6ABB000C21A7001543D4007E83
      8A00000000000000000000000000000000000000000000000000241CED00241C
      ED00241CED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A1E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000094BD
      9C00000000000000000000000000000000000000000000000000000000000000
      0000B2BAD2008C9ECF009DA6CA0000000000000000003535AA002446DE00ADAF
      B300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737B7300BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFA56B00EFA56B0000000000EF9C6B00EF9C6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737B7300FFFFFF00FFFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFF
      FF008CFFFF00BDBDBD0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF0000000000BFBFBF00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFA56B00EFA56B0000000000EFA56B00EFA56B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990000000000000000000000
      000000000000000000000000000000000000737B7300BDBDBD00BDBDBD00BDBD
      BD00737B73008CFFFF00FF000000FF000000FF000000FF000000FF000000FFFF
      FF00FFFFFF00BDBDBD0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00000000007F7F7F00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFA56B00EFA56B0000000000EFA56B00EFA56B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990000000000000000000000
      000000000000000000000000000000000000737B7300FFFFFF00FFFFFF00FFFF
      FF00737B7300FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFF
      FF008CFFFF00BDBDBD0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF0000000000BFBFBF00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFA57300EFA56B0000000000EFA56B00EFA56B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      000000000000000000000000000000000000737B7300FFFFFF00FF000000FF00
      0000737B7300FFFFFF00FF632100FF632100FF632100FF632100FF632100FFFF
      FF00FFFFFF00BDBDBD0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00000000007F7F7F00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFA57300EFA5730000000000EFA56B00EFA56B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900000000000033CC000033CC009999990000000000000000000000
      000000000000000000000000000000000000737B7300FFFFFF008CFFFF00FFFF
      FF00737B7300FFFFFF00FFFFFF008CFFFF00FFFFFF00FFFFFF008CFFFF00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF0000000000BFBFBF00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFAD7300EFA5730000000000EFA57300EFA56B000000
      0000000000000000000000000000000000000000000000000000000000009999
      99006699FF006699FF006699FF000033CC009999990000000000000000000000
      000000000000000000000000000000000000737B7300FFFFFF00FF632100FF63
      2100737B7300FFFFFF00FF632100FF632100FF632100FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00000000007F7F7F00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFAD6B00EFAD730000000000EFA57300EFA573000000
      0000000000000000000000000000000000000000000000000000000000009999
      990066CCFF00CCFFFF006699FF000033CC009999990000000000000000000000
      000000000000000000000000000000000000737B7300FFFFFF008CFFFF00FFFF
      FF00737B7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00737B7300FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF0000000000BFBFBF00000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFB57B00EFAD7300F7BD7B00EFAD730000000000EFAD7300EFAD73000000
      0000000000000000000000000000000000000000000000000000000000009999
      990066CCFF00CCFFFF006699FF000033CC009999990000000000000000000000
      000000000000000000000000000000000000737B7300FFFFFF00FF632100FF63
      2100737B7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00737B7300FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00000000007F7F7F00000000007F7F7F000000
      000000000000000000000000000000000000000000000000000000000000EFAD
      7300F7BD7B00F7C68C00F7C68400EFAD730000000000EFAD7300EFAD73000000
      0000000000000000000000000000000000000000000000000000000000009999
      990066CCFF00CCFFFF006699FF000033CC009999990000000000000000000000
      000000000000000000000000000000000000737B7300FFFFFF00FFFFFF00FFFF
      FF00737B7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00737B73000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00000000007F7F7F00000000007F7F7F00000000007F7F7F000000
      000000000000000000000000000000000000000000000000000000000000EFB5
      6B00F7C69400F7C69400F7C68400EFAD730000000000EFAD7300EFAD73000000
      0000000000000000000000000000000000000000000000000000000000009999
      990066CCFF00CCFFFF006699FF000033CC009999990000000000000000000000
      000000000000000000000000000000000000737B7300FFFFFF00FFFFFF00FFFF
      FF00737B7300737B7300737B7300737B7300737B7300737B7300737B73000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFB5
      6B00F7C68400F7C69400F7C68400EFAD730000000000EFAD7300EFAD73000000
      0000000000000000000000000000000000000000000000000000000000009999
      990066CCFF00FFFFFF006699FF000033CC009999990000000000000000000000
      000000000000000000000000000000000000737B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008CFFFF00737B7300FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00BFBFBF00BFBFBF00BFBFBF007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000000000000000000FFE7
      D600EFB56B00EFB56B00EFB56B00EFB56B00EFB56B00EFB56B00EFAD73000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999000099FF006699FF000033CC009999990000000000000000000000
      000000000000000000000000000000000000737B7300FFFFFF00FFFFFF00FFFF
      FF008CFFFF00FFFFFF00737B7300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990099999900000000009999
      990000000000000000000000000000000000737B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00737B7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F007F7F7F007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000737B7300737B7300737B7300737B
      7300737B7300737B7300737B7300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6845A00BD6B3900C6632900BD6B3900BD6B3900BD6B
      3900BD6B3900C66B3100BD6B3900C6845A000000000000000000B2888300D6A6
      9700D2A09200CF9D9200CC9A9000C9978F00C7968E00C4948D00C2918A00BF8F
      8A00BD8C8800BA898200986A6600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD632900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C67342000000000000000000B7949100FFE8
      DD00FFE4D400FFE2D000FFE2CD00FFE0CB00FFE0C800FFDDC100FFDABD00FFD8
      B900FFD8B500FFD2B500A67673000000000000000000314C6500516271000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006E6E6E006E6E
      6E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CE6B3100FFFFFF00F7DECE00F7E7DE00FFE7D600F7DE
      CE00FFE7CE00F7DEC600FFFFFF00C67342000000000000000000B6979300FCF0
      DE00FFECD400FDE7D200FBDEC400B46740009A3D1100E1AE8B00FAD4B400F9D2
      B100FFD5A400FDCDAF00A6767A000000000000000000000000002E5B8300314C
      650070788F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000795FEA002900DF003F28
      A600656565000000000000000000000000000000000000000000000000000000
      00006250B2002E07D80000000000000000000000000000000000000000000000
      00000000000000000000C66B3100FFFFFF00F7DECE00F7E7DE00F7E7DE00F7DE
      CE00F7DECE00F7DEC600FFFFFF00C67342000000000000000000B6979300FCF1
      E300FFEDD900FDEAD700FBDEC700B46841009A3D1100E1AF8E00FAD6B800FAD5
      B500FFD8AC00FDCEB300A87879000000000000000000000000006B8EB1005586
      AE0049729C0031567B0087889400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000795FEA002900DF00300A
      DB00534E6A003F28A60000000000000000000000000000000000000000004629
      C3002900DF005A46B6000000000000000000C68C6300C6734200C66B3100BD6B
      3900BD6B3900BD6B3900C66B3100FFFFFF00F7DECE00F7E7DE00F7E7DE00F7E7
      DE00F7DECE00F7DEC600FFFFFF00C67342000000000000000000B89A9600FDF3
      E800FFEFE200FEE8D800FCE1CB00E9C1A500E1B29400F5D1B500FADABC00FBD7
      B900FFDBB100FED1B600AC7C7B0000000000A468680089454600706270007AA6
      CD0087B9E9002B86D3000C52A200341F2400341F2400341F24004C2929004C29
      29004C2929006E3E3E006E3E3E00A46868000000000000000000795FEA002900
      DF003D1CD2005F5F5F00000000000000000000000000000000003A18CD002E07
      D8005A46B600000000000000000000000000C67B5200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DEB58400FFFFFF00F7DECE00F7DECE00F7DECE00F7DE
      CE00FFE7CE00F7D6BD00FFFFFF00C67B42000000000000000000BD9D9800FDF7
      ED00FEF6EB00FDE8D900FCE3CE00B46943009A3D1100DBA88800FADCC100FBD9
      BE00FFDDB800FDD3B900AF7E7C0000000000A4686800FFFFFF00FFFFFF007AA6
      CD0088DFF40042BAFF00017DE0001555AC00A7B2C300DFDFDF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A46868000000000000000000000000007A60
      EB002900DF005238C3006464640000000000000000003A18CD002E07D8005A46
      B60000000000000000000000000000000000CE7B5200FFFFFF00F7DECE00F7E7
      DE00F7DECE00F7E7DE00DEAD7B00FFFFFF00F7DECE00F7DECE00F7DECE00F7DE
      C600F7DEC600F7D6B500FFFFFF00C67B42000000000000000000C1A29B00FEFA
      F200FFF5EB00FDEFE200FCE6D300CF9778009A3D1100AD5C3400EFCAAF00FBDC
      C200FFE0BD00FED5BD00B3807F0000000000B8767600FFFFFF0000000000D5ED
      FA0042B7EB0092FAFD0042BAFF00017DE0001555AC00A7B2C300DFDFDF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B87676000000000000000000000000000000
      00007A60EB002900DF005137C30053505E003312C7002C06D7005A46B6000000
      000000000000000000000000000000000000C6845200FFFFFF00F7DECE00F7E7
      DE00F7DECE00F7E7DE00DEAD7B00FFFFFF00FFE7CE00F7DECE00FFE7CE00F7DE
      C600F7D6B500F7C69C00FFFFFF00C67B42000000000000000000C7A79E00FEFD
      F800FFF8EF00FDEFE100FCE8D700FCE6D300C1805E009A3D1100A0481D00E9C1
      A400FFE3C300FED7C100B683800000000000C37C7C00FFFFFF0000000000FFFF
      FF00D5EDFA0042B7EB0092FAFD0042BAFF00017DE0001555AC00A7B2C300DFDF
      DF00FFFFFF00FFFFFF00FFFFFF00C37C7C000000000000000000000000000000
      000000000000795FEA002900DF002C06D7002B05D6006A628C00000000000000
      000000000000000000000000000000000000C6845200FFFFFF00F7DECE00F7E7
      DE00F7E7DE00F7E7DE00DEAD7B00FFFFFF00F7DEC600FFE7CE00F7DEC600F7D6
      B500F7E7DE00FFFFFF00FFFFFF00C67339000000000000000000CCADA100FEFF
      FD00FFFAF300FDECDF00FDEBDB00FDE9D800FCE6D500CF9879009A3D1100B569
      4300FFE5C800FED9C400B986820000000000CC838300FFFFFF0000000000FFFF
      FF00FFFFFF00D5EDFA0042B7EB0092FAFD0042BAFF00017DE0001555AC00A7B2
      C300DFDFDF00FFFFFF00FFFFFF00CC8383000000000000000000000000000000
      000000000000000000002F08D9002900DF00472BC4006A628C00000000000000
      000000000000000000000000000000000000C6845200FFFFFF00F7DECE00F7DE
      CE00F7DECE00F7E7D600DEAD7B00FFFFFF00F7D6BD00F7DEC600F7D6BD00F7CE
      A500FFFFFF00FFE7C600EFBD8400BD9C7B000000000000000000D2B3A400FFFF
      FF00FFFCFA00AD5F3900A7542C00FCEBDC00FDE9D900FDE7D6009A3D11009A3D
      1100FFE9CE00FED9C600BC88820000000000CC838300FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00D5EDFA0042B7EB0092FAFD0042BAFF00017DE0001555
      AC00A7B2C300DFDFDF00FFFFFF00CC8383000000000000000000000000000000
      0000000000003A18CD002E07D8005A46B600360FE000593DD6006A628C000000
      000000000000000000000000000000000000C6845200FFFFFF00F7DECE00F7DE
      CE00F7DECE00F7DECE00DEB58400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFB57300C6846300000000000000000000000000D8B8A700FFFF
      FF00FFFFFE00A7542D009A3D1100C2836400E3BDA700C18261009A3D1100B56B
      4500FFF0D800FFD7C500BF857F0000000000CC838300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D5EDFA0042B7EB0092FAFD0042BAFF001A7E
      D10070627000B8B3B300DFDFDF00CC8383000000000000000000000000000000
      00003A18CD002900DF005A46B6000000000000000000431FE2004A28DD006A62
      8C0000000000000000000000000000000000C6845200FFFFFF00F7DEC600F7DE
      CE00F7DEC600F7DEC600E7BD8C00DEAD7B00DEAD7B00E7BD8C00C68C5200CE8C
      5200C68C5200BD9C7B0000000000000000000000000000000000DEBDA900FFFF
      FF00FFFFFF00EAD2C300A7542D009A3D11009A3D11009A3D1100B56C4700F6DD
      CC00ECB6B900EEA3A400BD837A0000000000CC838300CC838300CC838300CC83
      8300CC838300CC838300CC838300CC838300AC88950049AFE60084ECFE00AA9A
      99009F8B86008E5252009A5E5E00AA8A89000000000000000000000000003917
      CC002900DF005A46B600000000000000000000000000000000005F40E700350E
      DF006A628C00000000000000000000000000C6845200FFFFFF00F7DEC600F7DE
      C600F7DEC600F7D6BD00EFEFE700FFFFFF00FFFFFF00C6845200000000000000
      0000000000000000000000000000000000000000000000000000E5C3AC00FFFF
      FF00FFFFFF00FEF6F000FEF4EC00EBD0C000E3C1AD00F1D9C800FFD5CC00BB86
      7400D4905000C6824D00BB897900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5B4C100F8EB
      E800ECEAE900AA9A9900706270000000000000000000000000003917CC002900
      DF005A46B6000000000000000000000000000000000000000000000000005F40
      E7002900DF00000000000000000000000000C6845200FFFFFF00F7D6BD00F7DE
      C600F7D6BD00EFCEAD00FFFFFF00F7DEC600E7BD8C00BD9C7B00000000000000
      0000000000000000000000000000000000000000000000000000EAC9AF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF900F4E6E000CEA4
      8A00FFC46C00DA9B6300C7B0A400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D3A1
      9D00F8EBE800CBC1C8003531BB004444A90000000000411DE0002900DF004629
      C300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6845A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7B58400C68C6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000F0CEB300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFEFE00EEE5E200C89E
      8600E2B69200CAB2A60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C9B2B500BDBDFA008686ED004444A900000000003610E1004D2CE1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6947B00C6845A00C6845200C684
      5A00C6845A00C6845A00C6845200C6A594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E9BF9C00E5C1
      AB00E5C2AB00E3C0A900E2BFA800E2BFA800E1BEA700E1BEA600D7B29D00C291
      7F00D0B4A8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007C7CD3007C7CD300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A73D6000029DE000029
      DE000029DE000029DE000029DE000029DE000029DE000029DE000029DE000029
      DE000029DE004263D60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5DFDC008F6E5B00E2DBD8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B1969600B2959600BEB1B7000000000000000000B3857200AD5F
      2E00B3826E00C4BDC200000000000000000000000000CEA38D00CC9F8900CCA3
      9000C9A69500CDAD9E00CCB1A400CDB6AA00D0BCB200D3C3BC00DBCDC900E2D9
      D600E8E1DF00000000000000000000000000637BDE003152E700849CFF00849C
      FF00849CFF00849CFF00849CFF00849CFF00849CFF00849CFF00849CFF00849C
      FF00849CFF00527BFF004263D600000000000000000000000000000000000000
      0000000000000000000000000000C4B6B200CE9F6F00AB784D00E3DEDB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9ACAC00CFBAA000F4F5CC00B18E880000000000B89C8F00BC580300FFA6
      0200BC570200BAA398000000000000000000E7D6CD00DA936F00F2D8CA00ECCD
      BC00E6C3AF00E1B79E00D9A88C00D0987900C7896800BC7B5E00B6715300AD62
      4500A6593600A35734009C4E2D00BC9885001039DE00738CFF003963FF00527B
      FF00DEDEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEFF00738C
      FF003963FF00849CFF001039DE00000000000000000000000000000000000000
      00000000000000000000CBC0C000966B4B00FFF7C40094634100C8BCBC000000
      00000000000000000000000000000000000000000000B8A4A400000000000000
      0000B39A9900F3F2D700FAF7E600B298960000000000BBA79E00B8540300FD97
      0000B54F0000BCAAA2000000000000000000E3D4CC00E4AD9100FFFFFF00FFFF
      F600FFFFF200FFFEEE00FFFEEB00FFFBE700FFFDE800F8E6A600DCAF6200EDCA
      9300FDEBCB00F7E3C800DCB09600B6826A000831DE00738CFF00527BFF00FFFF
      FF00FFFFFF00DEDEFF00849CFF00527BFF00849CFF00D6D6FF00FFFFFF00FFFF
      FF00527BFF00849CFF001039DE0000000000000000000000000000000000E5DF
      DE009274650089644B008C674A00CAAA8700FFDCB300AF87640054270D006744
      3600C3B5AF0000000000000000000000000000000000B48E8400B19997000000
      0000BB9D9500FFFEFE00D1BAB100BBB1B2000000000000000000AD7A62009943
      1D00B38D7B00000000000000000000000000E0CABF00ECB89F00FFFFFF00FFFA
      F200FFF9ED00FFF7E800FFF5E200FFF4E200FDEDBD00CB8D3D00D4AA9200CD97
      7100D3994D00FCE59400EDD5C000BF8F76000831DE00738CFF00DEDEFF00FFFF
      FF009CA5FF002952FF002952FF00527BFF002952FF002952FF009CA5FF00FFFF
      FF00E7EFFF00738CFF001039DE00000000000000000000000000B9A69C00A788
      6A00D2B69900E7CAA800FDE4BF00FFE9C700FFF8D100F5D6B300D8B89300AD89
      64005E2F150085685E00000000000000000000000000C5AA9A00DAC6A600A77D
      7F00DFCFBE00FEFEFE00B19092000000000000000000C4C3C300AC5F2F00BA55
      0200B6907A00000000000000000000000000E2C9BD00EFC3AC00FFFFFF00FFFC
      F700FFFBF200FFF9ED00FFF7E700FFFBEC00EAC47800D6AC9000FFFFFF00FFFF
      FF00E1C4B900C5844600D6A37200BE927B000831DE00738CFF00FFFFFF00D6D6
      FF002952FF002952FF003963FF00FFFFFF00738CFF002952FF002952FF00BDC6
      FF00FFFFFF00738CFF001039DE000000000000000000C8B5A600CAB59A00EDD5
      B800FFEBCC00F8D6B700C0704F00E9956300DD8D5C00DFA67B00FFE7C300F4D6
      B100D7B6940073472900896F65000000000000000000C4AA9900FFFFD500FBFF
      D500FFFFE900F3EEDE00B6939400B89A9800A0716F00BDB1AF00BA5C0F00F68F
      0200AF673900000000000000000000000000E1C0AE00F3CDBA00FFFFFF00FFFE
      FB00FFFCF600FFFBF100FFF9EE00FFF9DB00D7A15F00EAD8D200EFE1D900E7CF
      C200D2A79200F0E6E900BD774200C89E67000831DE00738CFF00FFFFFF00849C
      FF002952FF002952FF00527BFF00FFFFFF00738CFF002952FF002952FF00738C
      FF00FFFFFF00738CFF001039DE0000000000E5DEDA00CBB8A200EED8C100FFEF
      D100FFEECF00FFFFE200B4816200790000008F2E0600F7E5C400FFEDCB00FFE7
      C300F5D7B700DABD9B005B2D1400D7CDC90000000000C4A79700FEFECC00FFFF
      D600FFFFDF00FFFFEC00FBFDEA00D7C9BC00AF95950000000000AD4F0F00F993
      0200B04F0A00C2BDBB000000000000000000E9C2AE00F7D4C300FFFFFF00FFFF
      FF00FFFEFB00FFFDF600FFFDF600F4D69A00D4A98600E3CDC300C48C7000E1CB
      BC00C57C3600D5A17A00C8814C00CFA56F000831DE009CA5FF00F7FFFF00849C
      FF00527BFF00527BFF00738CFF00FFFFFF009CA5FF00527BFF00527BFF00849C
      FF00FFFFFF009CA5FF001842DE0000000000C5B19F00E8DBC700FFF0D700FFEC
      D200FFE7CE00FFFFED00CFB295006F000000A4583700FFFFF000FFE7C900FFE5
      C600FFEAC900FCE3C500AD8A6B0090756D0000000000C4A39500FEF9C200FFFF
      CE00FFFFD700FFFFE600ECE8CE00AE8E8C000000000000000000AA6B4B00D770
      0100D7710000A8623E000000000000000000EDC2AC00FBDECF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFB00FFFFFB00EAC8A600E0CEC400DCB69C00D4A07E00E2DA
      D100EBBF8700FADC9200E4B06F00C49A81000831DE009CA5FF00FFFFFF00ADBD
      FF00527BFF00527BFF00849CFF00FFFFFF009CA5FF00527BFF00527BFF009CA5
      FF00FFFFFF009CA5FF001039DE0000000000CFBFAE00F8E7D500FFF4DF00FFEC
      D600FFECD600FFFFF300CDAF940074000000A5573600FFFFF100FFE8CF00FFE5
      CA00FFEACF00FFEBD100E4CAAF00886A5B0000000000C4A49400FEEBB600FFF4
      C000FFFFD000F3F5CA00B1908900000000000000000000000000C0B8B500A446
      1000E6800000D26C0000A966440000000000EBBBA400FFE8DD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFD00FCF4E900EACBB900F1D1B600E6C2A500E0DE
      D300EDBF9900FFFEE400EDD4C200C4997F000831DE009CA5FF00FFFFFF00DEDE
      FF00738CFF00738CFF00849CFF00FFFFFF00ADBDFF00527BFF00738CFF00DEDE
      FF00FFFFFF00ADBDFF001842DE0000000000CFC2B700FDEFE000FFF4E300FFEF
      DE00FFF0DC00FFFFFF00D6C1AA0077000000A6583600FFFFF800FFEDD500FFE9
      D000FFECD200FFF2D900ECD7C00086695B0000000000C4A29200FEE2AC00FFEA
      B500F9EDB700B8958600BEB7B80000000000000000000000000000000000BEAF
      A800A74A1100E8820000CB6E1000CAB2AB00E7B9A100FFF3EB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFC00FFFFF600FFF5E700E7CAB800DFE0
      D100F4D2BA00FFFCE600EED2BD00C89F87000831DE009CA5FF00E7EFFF00FFFF
      FF00BDC6FF00738CFF00738CFF00ADBDFF00849CFF00738CFF00BDC6FF00FFFF
      FF00F7F7FF00ADBDFF001842DE0000000000D0C7BD00FDF5E900FFF8EB00FFF2
      E600FFFDEF00EFE6DA008C3D1E00650000008C3C2300FFFFFE00FFF0DD00FFEB
      D600FFEED900FFFAE500F2DEC900977D710000000000C4A09000FFDAA000FFDF
      A600C2978400B8AAAC0000000000000000000000000000000000000000000000
      0000BCAAA100B34D0000EB8D0F00BB8D7500E8BBA300FFF5F000FFFEFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBF700E7D9C900DFE1
      CE00FCE6D300FFFFED00F0D5C300C9A18B000831DE00ADBDFF009CA5FF00F7FF
      FF00FFFFFF00E7EFFF00BDC6FF009CA5FF00ADBDFF00E7EFFF00F7FFFF00F7FF
      FF009CA5FF00ADBDFF001842DE0000000000DED3C700F7F4EF00FFFFF900FFF6
      EC00FFFFF900E6D9C900B3938200BAA59A00C2AEA300FFFFF800FFF4E300FFEE
      DC00FFFAEB00FFFFFC00E2CAB400D6CCC90000000000C4A39300FFE8A500CE9C
      8100B4A1A30000000000000000000000000000000000B38C7900A3563000BEB1
      AB00B4938400B44E0000E1830F00BB8D7500E2AA8700FFAA7300FAAB7E00F7AC
      8600F4B29000F3B79B00F1BEA700F1C6B200F0CDBC00F0CEC100E6E8D900E1DF
      D000F2DDCC00F7F8EA00EBD4BF00CBA28C001039DE00ADBDFF00849CFF009CA5
      FF00E7EFFF00F7FFFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00E7EFFF00ADBD
      FF00849CFF00BDC6FF001842DE0000000000F5EDE500E4E5E500FFFFFF00FFFF
      FA00FFFBF300FFFFFF00FFFFFA00F9C8A600FFFEEE00FFFFFF00FFF5E800FFFA
      EF00FFFFFF00FFFFFF00AE9686000000000000000000C6A79700DCBC9700B097
      980000000000000000000000000000000000B28A7700AA4D1000BF5B0300AF4A
      0200B6510200DD780200BC5C0C00CAB2AB00E6B47600FFBD0300FEAD0600FC9D
      0800FB8F0A00F9800B00F6730C00F3670E00F15E1000ED531000EE7F5A00EE83
      6900E44B2300E14B2B00D6492700D6AC9200637BDE00527BFF00BDC6FF00BDC6
      FF00BDC6FF00BDC6FF00BDC6FF00BDC6FF00BDC6FF00BDC6FF00BDC6FF00BDC6
      FF00BDC6FF00849CFF004263D6000000000000000000EBE7E100EDEDEF00FFFF
      FF00FFFFFF00FFFFFF008E574E005D0000009A452800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D1BCAD00000000000000000000000000B58F8700B19896000000
      000000000000000000000000000000000000BCAAA100A44C1C00B6591100C364
      0E00C4650E00B3540E00AF7C6100C3C1C000F9B56E00FFC80000FFBB0000FFA9
      0000FF9B0000FF8A0000FF7A0000FF690000FF590000FF490000FF370000FF27
      0000FF170000FF000000EE080000D1AF9C00000000005A73D6000029DE000029
      DE000029DE000029DE000029DE000029DE000029DE000029DE000029DE000029
      DE000029DE004263D60000000000000000000000000000000000F0EBE500F2F4
      F500FFFFFF00FFFFFF00D7CEC90062414400C5B5AF00FFFFFF00FFFFFF00FFFF
      FE00E8DED50000000000000000000000000000000000BCB1B100C3C2C2000000
      00000000000000000000000000000000000000000000C3C1BF00B99F9200B285
      6D00B2887200BBA69C00C3BFBE0000000000EFB68F00FDB41000FFB30000FFA5
      0100FF980100FF890100FF7A0000FF6B0000FF5C0000FF4E0000FF3F0000FF2F
      0000FF200000FD100000D9452400E0D8CF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F8F7
      F500E9E2DB00F5F2EF00FFFFFF00FFFFFF00FFFFFF00FBF8F300D7CBC200E7E0
      DC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1C6AF00F0C4A200F3C2
      9F00F1BE9D00ECB89600E8B19100E3A98900DFA28300DB9C7D00DD987A00DD94
      7500D9896C00D6917500E1CFC200000000000000000000000000BB8B8B007030
      30007038380070474700705151007054540070525200704A4A00703C3C007030
      30006334340040404000ABABAB000000000000000000000000008B8BBB003030
      700037377000464670004F4F70005252700051517000494970003C3C70003030
      70003434630040404000ABABAB00000000000000000000000000000000000000
      000000000000EFE7E400CBC9C100D4CDCA00DFD8D400D8D1CE00CFC9C500D1CB
      C700D9D2CE00E3DBD80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8F8F00FF000000FF05
      0500FF434300FF7F7F00FFA2A200FFAEAE00FFA7A700FF8A8A00FF555500FF0E
      0E00FF000000932424009F9F9F0000000000000000008F8FFF000000FF000404
      FF004040FF007B7BFF009C9CFF00A8A8FF00A1A1FF008585FF005151FF000D0D
      FF000000FF00242493009F9F9F00000000000000000000000000000000000000
      00000000000075AF800043C675004DB57000609A6A0081907B00AFA9A600B5AF
      AD00B5AFAD00C9C2BF00D1CBC700DED7D300CC66660066333300663333006633
      3300663333006633330066333300663333006633330066333300663333006633
      33006633330066333300663333006633330000000000FF7F7F00FF000000FF17
      1700FF686800FFA2A200FFC1C100FFE9E900FFC5C500FFACAC00FF797900FF2A
      2A00FF0000009F202000C3C3C30000000000000000007F7FFF000000FF001616
      FF006464FF009C9CFF00B9B9FF00E7E7FF00BDBDFF00A5A5FF007575FF002929
      FF000000FF0020209F00C3C3C300000000000000000000000000000000000000
      00009BBF9B0057D68B0068FAAF0069FBB00068F8A80055D0820065AD7300A9B6
      A100EEE7E300E8E1DD00EAE3DF0000000000DDDDDD00A4A0A000F0FBFF00CCCC
      CC00A4A0A000A4A0A00099999900999999009999990099999900C0C0C0009999
      9900CCCCCC00DDDDDD00CCCCCC006633330000000000FFAFAF00FF000000FF22
      2200FF777700FFAEAE00FFDBDB00FFFDFC00FFDEDE00FFB7B700FF878700FF39
      3900FF0000008C3C3C00000000000000000000000000AFAFFF000000FF002121
      FF007272FF00A7A7FF00D8D7FE00FFFDFC00DBDAFE00B1B1FF008282FF003737
      FF000000FF003C3C8C000000000000000000000000000000000000000000BACB
      B3006BCF890081FFB90083F7B60085F6B7007CF6B40073FAB10075FBAB0063CB
      7F0093BB9200000000000000000000000000DDDDDD00C0C0C00099999900F0FB
      FF00444444000000000000000000000000000000000000000000555555009999
      9900CCCCCC00DDDDDD00CCCCCC00663333000000000000000000FF202000FF1C
      1C00FF6F6F00FFA7A700FFECE600FFF3ED00FFEEE900FFB1B100FF7F7F00FF30
      3000E80A0A00DBDBDB00000000000000000000000000000000002020FF001B1B
      FF006A6AFF00A1A1FF00F6EBEE00FFF3ED00F7EDF000AAAAFF007A7AFF002E2E
      FF000A0AE800DBDBDB0000000000000000000000000000000000DADACF0070C0
      840094FFC30090FBBF00A3FCC800A6FDCB009BFBC50085F7B90072F3A80078F7
      A6006BDB880080B482000000000000000000DDDDDD00A4A0A000CCCCCC000000
      0000FFFFFF00FFFFFF000000000099CCFF0099CCFF0099CCFF00000000007777
      7700A4A0A000C0C0C000C0C0C000663333000000000000000000FFCFCF00FF19
      1900FF4F4F00E6A0A3009DCCE3006EC5EF009DCDE400E6A9AC00FF616100F51B
      1B00ECBCBC000000000000000000000000000000000000000000CFCFFF001818
      FF004C4CFF00979DEF009DCCE3006EC5EF009DCDE4009EA5F0005D5DFF001A1A
      F500BCBCEC0000000000000000000000000000000000F1E9E50082B8880094F5
      BC0094FCC50099FAC400AEFDD000B0FDD300A7FDD00092F6BF0077EEA50061E9
      8A005CE27C0059CC6F008BB7890000000000DDDDDD00A4A0A000C0C0C00099CC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006699CC004444
      4400C0C0C000A4A0A0007777770066333300000000000000000000000000FFDF
      DF00D966720057B8EC0057C2F60058C3F60051BFF50041BAF6009D5F72006143
      4300F3F3F300000000000000000000000000000000000000000000000000DFDF
      FF004F65FB004CB8F70057C2F60058C3F60051BFF50041BAF600375ED7004343
      6100F3F3F30000000000000000000000000000000000B4C8AD0089D69E00A2FB
      CC008BF5C1008EF8C200A6FDD100ABFDD400A4FBCF0093F5BF0074EA9D0057E2
      7C003ACF55003ABE4C0046A95000BECCB600DDDDDD00A4A0A000DDDDDD00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099CCFF000000
      00007777770077777700C0C0C00066333300000000000000000000000000F2FA
      FE0051BCF1006AC8F60079CEF70076CEF7006CC9F6005AC2F60042B2EA003F47
      4B00ABABAB00000000000000000000000000000000000000000000000000F2FA
      FE0051BCF1006AC8F60079CEF70076CEF7006CC9F6005AC2F60042B2EA003F47
      4B00ABABAB00000000000000000000000000EEEAE30090BD9000BBF5CD00A6F4
      C9007FF2BB006CF2B40081F5BE0088F5C1007EEEB3006FE8A2005BE68F0040E1
      6F001FC73D00159E21003DA7470070AB7000DDDDDD00FFFFFF00C0C0C000CCFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006699
      CC0044444400C0C0C000DDDDDD0066333300000000000000000000000000ACE0
      FA0069C7F60087D3F70091D7F70090D7F70084D3F80071CAF70054C0F6003D74
      8F0094949400000000000000000000000000000000000000000000000000ACE0
      FA0069C7F60087D3F70091D7F70090D7F70084D3F80071CAF70054C0F6003D74
      8F0094949400000000000000000000000000DBD9D100A4C8A500D0F4DA00B1F0
      CB007FEFB8003BE7970041E1920041D988003AD87E0033D9760027D76D001DD2
      58000DB92E000B90170037963D0055A15A00DDDDDD00A4A0A000CCCCCC00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000099CC
      FF006666CC00C0C0C000CCCCCC006633330000000000000000000000000082D1
      F80081D0F700A0DDF700A7E0F700A5DFF70096D9F70081D0F70060C3F6003E84
      A5007070700000000000000000000000000000000000000000000000000082D1
      F80081D0F700A0DDF700A7E0F700A5DFF70096D9F70081D0F70060C3F6003E84
      A50070707000000000000000000000000000C8D0BF00BDD7BF00DCF2E000BDE8
      CA00A2EBC1004CE08E0012D0600011CB56000EC44C0009C347000ACD4B000BC9
      40000CAC2B000F83180048934B0062A66700DDDDDD00CCCCCC00CCCCCC00CCCC
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0099CCFF0000000000FFFF
      FF0099CCFF00A4A0A000A4A0A000663333000000000000000000000000007DCF
      F8008FD6F700B4E4F700BEE7F700B8E5F600A8DFF6008ED4F60069C5F400378D
      B500707070000000000000000000000000000000000000000000000000007DCF
      F8008FD6F700B4E4F700BEE7F700B8E5F600A8DFF6008ED4F60069C5F400378D
      B50070707000000000000000000000000000C9D0C000C1D9C200ECF8ED00C6E1
      CA00B5DFBE00A3DEB20071D5890061D47A003EC4590000A81F0000A6170000A1
      17000E911E003E8F420083B3850077B07B00DDDDDD00CCCCCC00C0C0C000F0FB
      FF003333660099CCFF000000000099CCFF000000000099CCFF00000000007777
      7700A4A0A000CCCCCC00CCCCCC006633330000000000000000000000000090D2
      F30070C1E5006EBEDC0079C2DD00A7D7E900ACD9EC008ECCE90054AFDA00196A
      8B00ABABAB0000000000000000000000000000000000000000000000000090D2
      F30070C1E5006EBEDC0079C2DD00A7D7E900ACD9EC008ECCE90054AFDA00196A
      8B00ABABAB00000000000000000000000000E0DCD500A8C7A800FFFFFF00D9E7
      D900BED9C000B0D1B20099C699006ACB6E004EC9570049AB520036973D003894
      3F0062A165009FC09F00CAE4CC0083B38400DDDDDD00CCCCCC00A4A0A000FFFF
      FF003333660099CCFF000000000099CCFF000000000099CCFF00000000007777
      7700F0FBFF00A4A0A000C0C0C000663333000000000000000000000000008AC8
      E20053B1D60094D1E8007EC3DF0056AED1004AA7CC0049A2C6003391B600396C
      8000000000000000000000000000000000000000000000000000000000008AC8
      E20053B1D60094D1E8007EC3DF0056AED1004AA7CC0049A2C6003391B600396C
      800000000000000000000000000000000000F3ECE700A2BD9D00D5EBD600FFFF
      FF00EDF2EC00E4EDE300C8EBC80054A655003696370078CC7D00C5E4C700D0E2
      D100DFEDDF00E9FBEB00A0C69F00BDCBB500DDDDDD00A4A0A000DDDDDD003333
      66003333660099CCFF000000000099CCFF000000000099CCFF00000000007777
      7700C0C0C00099999900A4A0A00066333300000000000000000000000000DFF0
      F6007AC3E000D4F0FA00D5EDF600BFDCE80099C6D90070B0CA002D88AB00F3F3
      F30000000000000000000000000000000000000000000000000000000000DFF0
      F6007AC3E000D4F0FA00D5EDF600BFDCE80099C6D90071B0CA002D88AB00F3F3
      F3000000000000000000000000000000000000000000F2EAE6009EBB9900A2C7
      A300C2DCC300BCDABD008CBC8B00C1CBB800E3DBD8008EB88A0093C39300A9CD
      A900A4C8A4009ABD9700C9CEBF0000000000DDDDDD00A4A0A000C0C0C000A4A0
      A000A4A0A00099CCFF000000000099CCFF0000000000FFFFFF0000000000A4A0
      A000A4A0A000C0C0C000A4A0A000663333000000000000000000000000000000
      0000DDEFF6006EBEDC007BC3DF008DC6DD006AB3D1004EA6C800EFF7FA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDEFF6006EBEDC007BC3DF008DC6DD006AB3D1004EA6C800EFF7FA000000
      000000000000000000000000000000000000000000000000000000000000E9E2
      DE00CBD1C100CCD1C200F0E8E40000000000000000000000000000000000EDE6
      E20000000000000000000000000000000000DDDDDD00CCCCCC00DDDDDD00C0C0
      C000DDDDDD00999999006699CC002222220099999900DDDDDD00A4A0A000DDDD
      DD00CCCCCC00A4A0A000C0C0C000663333000000000000000000000000000000
      00000000000000000000BFE1EE00C4E3EF00D1E9F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFE1EE00C4E3EF00D1E9F30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD00CCCCCC00DDDDDD006666
      6600C0C0C000A4A0A000CCCCCC00C0C0C000CCCCCC0077777700A4A0A000CCCC
      CC00CCCCCC00A4A0A000CCCCCC00663333000000000000000000000000000000
      0000000000000000000044444400444444004444440000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0092816F0092816F0092816F0092816F0092816F0092816F0092816F009281
      6F00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000B2888300D6A6
      9700D2A09200CF9D9200CC9A9000C9978F00C7968E00C4948D00C2918A00BF8F
      8A00BD8C8800BA898200986A6600000000000000000000000000000000000000
      00000000000000000000000000005A005A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004444440044444400444444004444440044444400000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00735D4600735D
      460092816F00E2DCDC00EEEEEE00FFFFFF00FFFFFF00EEEEEE00E2DCDC009281
      6F00735D4600735D4600FFFFFF00FFFFFF000000000000000000B7949100FFE8
      DD00FFE4D400FFE2D000FFE2CD00FFE0CB00FFE0C800FFDDC100FFDABD00FFD8
      B900FFD8B500FFD2B500A6767300000000000000000000000000000000000000
      0000000000005A005A005A005A009C00CE008400840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000444444004444440044444400444444004444440044444400444444000000
      000000000000000000000000000000000000FFFFFF00735D4600735D4600B2A6
      9900D2CBC700EEEEEE00DDDDDD00E2DCDC00E2DCDC00E2DCDC00EEEEEE00EEEE
      EE0092816F00735D4600735D4600FFFFFF000000000000000000B6979300FCF0
      DE00FFECD400FDE7D200FBDEC400B46740009A3D1100E1AE8B00FAD4B400F9D2
      B100FFD5A400FDCDAF00A6767A00000000000000000000000000000000005A00
      5A005A005A009400D600CE63CE00C6D6EF00BDBDBD0084008400000000000000
      0000000000000000000000000000000000000000000000000000000000004444
      44004444440044444400444444000000FF000000FF0044444400444444004444
      440000000000000000000000000000000000FFFFFF00735D4600B2A69900897B
      6A00512F03004C2C0300927E6800EEEEEE00DBD2CE00E2DCDC00E2DCDC00E2DC
      DC00EEEEEE0092816F00735D4600FFFFFF000000000000000000B6979300FCF1
      E300FFEDD900FDEAD700FBDEC700B46841009A3D1100E1AF8E00FAD6B800FAD5
      B500FFD8AC00FDCEB300A878790000000000000000005A005A005A005A009C00
      CE00CE63CE00D6D6D600D6E7E700D6D6D600BDBDBD00BDBDBD00840084000000
      0000000000000000000000000000000000000000000000000000000000004444
      4400444444004444440044444400444444004444440044444400444444004444
      44000000000000000000000000000000000082705C007F6A5500D2CBC7008C7E
      6E00472B0200513003004E2E0300937F6800FFFFFF00DBD2CE00E2DCDC00E2DC
      DC00E2DCDC00DBD2CF0084705C0082705C000000000000000000B89A9600FDF3
      E800FFEFE200FEE8D800FCE1CB00E9C1A500E1B29400F5D1B500FADABC00FBD7
      B900FFDBB100FED1B600AC7C7B0000000000840084009400D600CE63CE00D6E7
      E700D6E7E700BDBDBD00BDBDBD0084008400A5A5A50094ADAD00BDBDBD008400
      8400000000000000000000000000000000000000000000000000000000004444
      44004444440044444400444444000000FF000000FF0044444400444444004444
      44000000000000000000000000000000000082705C00D4C8C100DBD2CE00DBD2
      CE00D2CBC7004926000053320300512F0300C1B5AA00EEEBE800E2DCDC00E2DC
      DC00E2DCDC00E1DBDB00C4B5AA0082705C000000000000000000BD9D9800FDF7
      ED00FEF6EB00FDE8D900FCE3CE00B46943009A3D1100DBA88800FADCC100FBD9
      BE00FFDDB800FDD3B900AF7E7C000000000084008400A5A5A500D6E7E700BDBD
      BD0094ADAD00840084009C009C009C009C000000000084848400A5A5A500BDBD
      BD00840084000000000000000000000000000000000000000000444444004444
      44004444440044444400444444000000FF000000FF0044444400444444004444
      44004444440000000000000000000000000082705C00DBD2CE00DBD2CE00E2DC
      DC00E6E0E000D2CBC70049260000573504008F785B00FFFFFF00FFFFFF00E7E3
      E300E2DCDC00E2DCDC00D4C8C10082705C000000000000000000C1A29B00FEFA
      F200FFF5EB00FDEFE200FCE6D300CF9778009A3D1100AD5C3400EFCAAF00FBDC
      C200FFE0BD00FED5BD00B3807F000000000084008400A5A5A500BDBDBD008400
      840084008400CE00CE00CE00CE00CE00CE009C009C00000000005A635A00A5A5
      A50094ADAD008400840000000000000000000000000000000000444444004444
      44004444440044444400444444000000FF000000FF0044444400444444004444
      44004444440000000000000000000000000082705C00DDD5D300E6E0E000F7F5
      F400FFFFFF00FFFFFF00492600005B3906005936040055330300512F0300EEEB
      E800E2DCDC00E2DCDC00D7CDC70082705C000000000000000000C7A79E00FEFD
      F800FFF8EF00FDEFE100FCE8D700FCE6D300C1805E009A3D1100A0481D00E9C1
      A400FFE3C300FED7C100B683800000000000840084008400840084008400CE00
      CE00CE00CE009C009C009C009C00CE00CE00CE00CE009C009C00000000005A63
      5A00A5A5A5008484840084008400000000000000000000000000444444004444
      4400444444004444440044444400444444000000FF000000FF00444444004444
      44004444440000000000000000000000000082705C00DCD3CF00EAE6E300F8F7
      F600FFFFFF00FFFFFF00C9C2BA0049260000623F0B005B38050057340400EEEB
      E800E2DCDC00E2DCDC00D7CCC60082705C000000000000000000CCADA100FEFF
      FD00FFFAF300FDECDF00FDEBDB00FDE9D800FCE6D500CF9879009A3D1100B569
      4300FFE5C800FED9C400B98682000000000084008400FF9CFF00CE00CE00CE00
      CE00CE00CE0000FFFF0029CEFF0029639C009C009C00840084009C009C000000
      00005A635A00A5A5A50084008400000000000000000000000000000000004444
      440044444400444444004444440044444400444444000000FF000000FF004444
      44004444440000000000000000000000000082705C00D5CBC200E6E2DE00F5F2
      F100FEFEFE00FFFFFF00FFFFFF0049260000825B120070501F00C5BBB000D4CD
      C900E2DCDC00E2DCDC00CDBFB60082705C000000000000000000D2B3A400FFFF
      FF00FFFCFA00AD5F3900A7542C00FCEBDC00FDE9D900FDE7D6009A3D11009A3D
      1100FFE9CE00FED9C600BC888200000000000000000084008400FF9CFF00CE00
      CE00CE00CE00CE00CE00CE00CE0000FFFF0000FFFF0029CEFF0029639C008400
      8400000000005A635A0084008400000000000000000000000000000000004444
      4400444444000000FF000000FF004444440044444400444444000000FF004444
      44004444440000000000000000000000000082705C008F7C6900E0DAD600EEEB
      E800FAF9F800FFFFFF00FFFFFF00A89E90005D3A0200825B1200A18B6B00E4DE
      DE00E2DCDC00DFD8D7008F7C690082705C000000000000000000D8B8A700FFFF
      FF00FFFFFE00A7542D009A3D1100C2836400E3BDA700C18261009A3D1100B56B
      4500FFF0D800FFD7C500BF857F0000000000000000000000000084008400FF9C
      FF00CE00CE00CE00CE00CE00CE00CE00CE00CE00CE0029CEFF0000FFFF005A00
      5A00840084000000000084008400000000000000000000000000000000004444
      440044444400444444000000FF000000FF000000FF000000FF000000FF004444
      44004444440000000000000000000000000082705C007F6A5500D6CCC400E5E0
      DD00F0EDEB00F9F7F600FDFDFD00F4F2F000553715006C480400825B1200825B
      1200E4DEDE00D4C8C1007F6A550082705C000000000000000000DEBDA900FFFF
      FF00FFFFFF00EAD2C300A7542D009A3D11009A3D11009A3D1100B56C4700F6DD
      CC00ECB6B900EEA3A400BD837A00000000000000000000000000000000008400
      8400FF9CFF00CE00CE00CE00CE0000FFFF0000FFFF0000FFFF00299CCE005A00
      5A00840084008400840000000000000000000000000000000000000000004444
      4400444444004444440044444400444444004444440044444400444444004444
      440044444400000000000000000000000000FFFFFF00735D460089766200D8CF
      C800E4DFDB00ECE8E500F1EEEC00F3F1EF00D6D0CA004926000049260000825B
      1200CDBFB60089766200735D4600FFFFFF000000000000000000E5C3AC00FFFF
      FF00FFFFFF00FEF6F000FEF4EC00EBD0C000E3C1AD00F1D9C800FFD5CC00BB86
      7400D4905000C6824D00BB897900000000000000000000000000000000000000
      000084008400FF9CFF00CE00CE00CE00CE0029639C0029639C005A005A008400
      8400840084005A005A0000000000000000000000000000000000000000000000
      0000444444004444440044444400444444004444440044444400444444004444
      440000000000000000000000000000000000FFFFFF00735D4600735D46008976
      6200C3B4A800D4C8C100E2DDD900E4E0DC00E4DFDB00D9D3CD00C3B4A800B2A6
      990089766200735D4600735D4600FFFFFF000000000000000000EAC9AF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF900F4E6E000CEA4
      8A00FFC46C00DA9B6300C7B0A400000000000000000000000000000000000000
      00000000000084008400FF9CFF00CE00CE00CE00CE00CE00CE009C009C005A00
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000004444440044444400444444004444440044444400444444000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00735D4600735D
      46007F6A550092816F00A6978900C4B5AA00C4B5AA00A697890092816F007F6A
      5500735D4600735D4600FFFFFF00FFFFFF000000000000000000F0CEB300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFEFE00EEE5E200C89E
      8600E2B69200CAB2A60000000000000000000000000000000000000000000000
      0000000000000000000084008400FF9CFF00CE00CE005A005A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00735D4600735D4600735D4600735D4600735D4600735D4600735D4600735D
      4600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000E9BF9C00E5C1
      AB00E5C2AB00E3C0A900E2BFA800E2BFA800E1BEA700E1BEA600D7B29D00C291
      7F00D0B4A8000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B007B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00C7C7C700AFAFAF00B6B6
      B600939393006969690086868600B1B1B1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BA9395008C7774009481
      8500BEBCBF00CAC5C800ECECEC00EBECEC00FAFAFA0000000000000000000000
      000000000000000000000000000000000000FEFFFF0000000000EFEFEF00DCDC
      DC00D5D5D500D9D9D900E9E9E900F8F8F800D0D0D000B2B2B200BABABA009C9C
      9C00636363007B7B7B00A1A1A100B2B2B2000000000000000000000000008080
      800080808000808080008080800080808000808080000000000000FFFF000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDA8A100FBC9A400EFC1
      9B00D9A89400C3978F00A8908F00928184009E959800A3A5A900D4D0D2000000
      000000000000000000000000000000000000FDFFFF00E5E5E500C6C6C600C6C6
      C600C9C9C900C1C1C100BEBEBE00C7C7C700C1C1C100C3C3C300A6A6A6006565
      650078787800A8A8A800B5B5B500C1C1C1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080000000000000000000A3777400C1939000CF9E9D000000
      000000000000D0A2A000C1939000C1939000C1939000D4B9B90000000000D5BD
      BD00C1939000C1939000A37774000000000000000000EDB99A00E7B69900FBE0
      AA00FFDFA400FFD39F00FFCDA000F8C09D00DEAB9700CA9B9100A88685008B78
      7D00927D8300A7A8A900D9D6D80000000000F0F5F700CFCECF00D0D0D000C9C9
      C900969696007B7B7B00777777007B7B7B0095959500A6A6A6006A6A6A007474
      7400ACACAC00C6C6C600CFCFCF00D1D1D1000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      000000000000000000008080800000000000A3777400FFF3E700EFD5CA00CFA7
      A700D1ABAB00E2BBB000FFE5CB00FFE1C400FFDFC000D6A69F00D3B4B400D0A1
      9F00FCCFA600FFD1A300A37774000000000000000000F6D4A500F5CC9D00E3BE
      A800FEF6C000FFEBB400FFE2AB00FFDEA700FFD7A000FFD39F00FFCB9F00FCC2
      A000E4B29800C79B9000AC868E0000000000E2E6E900D1D2D200D0D0D0008080
      8000727272009090900097979700919191007D7D7D006363630071717100B0B0
      B000D6D6D600E7E7E700DEDEDE00DBDDD90000000000000000000000000000FF
      FF000000000000000000000000008000000080000000000000000000000000FF
      FF0000000000000000008080800000000000A6797600FFF5EB00FFF3E700F9E5
      D700F5DECE00FFEBD500FFE6CE00FFE5CB00FFE1C400FFDFC000F2CBB100FCD5
      B200FFD6AD00FFD3A700A37774000000000000000000F3E4BB00FFF9BC00EDCA
      A900EBD9BC00FFFFD300FFFCC600FFF6C200FFEEB900FFE9B300FFE3AB00FFE5
      A700FFD9A300E8AE9D00C092990000000000DBDFE200DBDCDC00A4A4A4007171
      7100AAAAAA00B0B0B000B3B3B300B7B7B700B9B9B900A5A5A500B1B1B100E7E7
      E700FDFDFD00F4F4F400D6D6D600D6D8D5000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000FFFF00000000000000
      000000000000000000008080800000000000A97D7A00FFF8F1009EAB95008492
      7F00868B7E00AFA59E00EEDCCA00FFE6CE00FFE5CB00FFE1C400FFDFC000FFDB
      B900FFD9B400FFD6AD00A37774000000000000000000F3EAC800FFFFD200FEFB
      C800E4C8B000F3E8D100FFFFDF00FFFFD200FFFFCF00FFFDCA00FFFFCA00F8F0
      C300E4B79F00F5C29400C497950000000000DAE0E200DBDBDB00818181009292
      9200B7B7B700B9B9B900B3B3B300BCBCBC00C5C5C500C6C6C600C7C7C700E5E5
      E500FCFCFC00E4E4E400D5D5D500C7C8C70000000000000000000000000000FF
      FF000000000000000000000000008000000080808000000000000000000000FF
      FF0000000000000000008080800000000000AE817D00FFFAF6003D9F3E003B93
      3A003B87390048794800A4A29500FFEBD500FFE6CE00FFE5CB00FFE1C400FFDF
      C000FFDBB900FFD9B400A37774000000000000000000F3E9CE00FFFFDC00FFFF
      D900FEF9D200EBC7B500FEF4E700FFFFEE00FFFFE300FFFFE300FCF9DD00E3C3
      B100F4D4A600FFE9A700C599960000000000E1E6E900D1D1D10074747400AEAE
      AE00C3C3C300909090007171710077777700A6A6A600D2D2D200CFCFCF00D1D1
      D100DCDCDC00C8C8C8008E8E8E00757575000000000000000000000000000000
      00000000000000FFFF0000000000808080008000000000000000000000000000
      000000000000000000008080800000000000B2858200FFFEFD004FBD44009ECF
      8E0094D7860043AD44008EA18B00FFFAF600CC999900CC999900CC999900CC99
      9900F2CDB600FFDBB900A37774000000000000000000F3E9D700FFFFEF00FEFB
      DF00ECDFC500B5B8BA00C2C2C900F3E5E300FEF5ED00FCF1EA00E9C4B700F6EB
      BF00FFFFCA00FFFDC300C49E9A0000000000E4E9EC00C6C7C70076767600C6C6
      C6009898980079797900DDDDDD00C8C8C800717171009D9D9D00DFDFDF00DDDD
      DD00E1E1E100878787005D5D5D00A3A3A30000000000000000000000000000FF
      FF0000000000000000000000000000FFFF0080808000800000008080800000FF
      FF0000000000000000008080800000000000B78A8600FFFFFF006DB0A3005BA0
      DA0054999600A2BB9400F5F1EC00FFF0E000FFEDDA00FFEBD500FFE6CE00FFE5
      CB00FFE1C400FFDFC000A37774000000000000000000F8F3E900F8ECE100CCC8
      C000BDD7DA00D5FAFE00BCECF300ABD1DD00B4CCD700A9C8DA00AAAFBE00F6EB
      C300FFFFDA00FFFFD600C4A19E0000000000ECF1F400CBCBCB007E7E7E00A4A4
      A40072727200E2E2E2000000000000000000D2D2D2006C6C6C00B4B4B400ECEC
      EC00EFEFEF00BEBEBE0081818100FEFEFE000000000000000000000000000000
      0000000000008000000080808000000000000000000080000000800000000000
      000000000000000000008080800000000000BD8F8A00FFFFFF0059B0FB003AA6
      FF003992E300CDD3D300FFFAF600CC999900CC999900CC999900CC999900CC99
      9900F5D6C200FFE1C400A37774000000000000000000DFC0BD00A9BBCE00D2EE
      F700FFFFFF00FFFFFF00F7FFFF00EBFFFF00D7FAFD00D4FDFF00BFF4FB00B5BB
      C400FBEACB00FFFFE900C5A29F0000000000FCFFFF00E9E9E9006E6E6E006B6B
      6B00D3D3D3000000000000000000F3F3F300E4E4E400B4B4B40079797900E9E9
      E900F7F7F700EEEEEE007D7D7D00E3E3E30000000000000000000000000000FF
      FF0000000000800000008000000000FFFF0000000000800000008000000000FF
      FF0000000000000000008080800000000000C1939000FFFFFF0041ABF10051BA
      F90046B0EF00C1CDD500F2E1DC00F2DED700F2DDD400F2DACE00F2D8CB00F2D7
      C700FCE1CB00FFE5CB00A37774000000000000000000D3B9B80093D3E800E8FB
      FF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FFFFFF00F3FEFF00DBF8FD00A0E7
      FB009CAFC700FFF4DC00C8A8A7000000000000000000FDFDFD008B8B8B00BDBD
      BD0000000000FDFDFD00ECECEC00DBDBDB00DFDFDF00DADADA0072727200DBDB
      DB00FFFFFF00FEFEFE0087878700CFCFCF000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000000000000000
      000000000000000000008080800000000000C7989400FFFFFF005CBCE1006BDE
      F9003CABD800DEE8EC00FFFAF600FFF8F100FFF5EB00FFF3E700FFF0E000FFED
      DA00FFEBD500FFE6CE00A37774000000000000000000FCF9F900C0CCDB00BFED
      FF00E4F6FF00D4E7FC00B7D9F600A2CDF2008EC7F40098BCE300A1A4C20092A4
      CC007499E000BAB1C400C99D9900000000000000000000000000000000000000
      0000F8F8F800E6E6E600DEDEDE00E6E6E600D7D7D7008686860088888800F7F7
      F700FFFFFF00F6F6F60079797900E0E0E00000000000000000000000000000FF
      FF0000000000000000000000000000FFFF0000000000000000000000000000FF
      FF0000000000000000008080800000000000CB9C9700F2E6E600F2E6E600F2E6
      E600F2E6E600F2E6E600F2E5E400F2E2DE00F2E0DA00F2DED700F2DCD200F2DA
      CE00F2D7C900F2D6C600A3777400000000000000000000000000FBF8F900B8BD
      E00077DAF50074DDFF0085D8FD0087D1FE0085C8FE0089C4FD008AC2FD0084BE
      FB0089B9ED00BDA1C000EACFD800000000000000000000000000000000000000
      0000EBEBEB00E5E5E500EDEDED00C2C2C20077777700A0A0A000FCFCFC00FFFF
      FF00ECECEC009090900093939300FDFDFD000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000000000D1AFAB00CE9F9A00CA9C9700C698
      9300C1948F00BD8F8B00B78A8600B2858200AE817D00A97C7A00A57A7700A377
      7400A3777400A3777400BD9C9A0000000000000000000000000000000000FDFA
      FC00DEC8CA0096FCFB0093F8FF0098E4FF0098DDFF0093D7FF0087D5FF0094C2
      EB00CCB8CE00F9F5F90000000000000000000000000000000000000000000000
      0000FEFEFE00F5F5F500A3A3A30065656500B0B0B000E3E3E300C6C6C6009A9A
      9A00777777009B9B9B00F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEF8F900D7C6CF0094F6F7008DFDFF008DF3FF008EE1F800BCBAD700EDDB
      E000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F0009A9A9A007B7B7B00808080007E7E7E0089898900AEAE
      AE00E1E1E1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDF8FA00E0CBD400B2D2CE00B2CFD300D8CDCE00FAF3F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCBDAD00B5897300D9D3
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E700DCE2E600CCCB
      DE00BDC0DF00BCBDDA00D2D2E2000000000000000000B3664000F2CA8A00BC6D
      3600B98C7600E6E6E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000000000000000000000000000D5C5BF00BD958100C58B
      6E00C48D7300BFA29100E4D6D400C7C8E0004F70C900166CDF0046AADD0043AA
      E9002A8FEF00288BE8000F6AE000A3B3D60000000000B3664000FFD48B00FFD4
      8B00E5A66100AB5A2A00C6ADA000ECECEC000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080000000000000000000E2AF9500E96E2F00F78B6A00FB9C
      8300FD9F8900EF904B00B490AA000B6DDE00379CF10037B3F300DBEBF000CCE3
      EE0042BFF90048B2F6003D9CF0000B59D60000000000B3664000FFC97F00FFC6
      7600FFC67600FFC67600D2813C00AF6B4700D3C6C00000000000000000000000
      000000000000000000000000000000000000000000008080800000000000CE63
      1800D68C6B000000000000000000CE631800D68C6B0000000000000000000000
      0000000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080000000000000000000ECA37A00F88B6D00FFA89300FFB7
      9F00F3AE8600FAE2BD00B5A6BD00208BEB004CBBFA005FC6F300F8FBFA00FCFD
      FA006DCBF0004CC4FC003FB3F8005F85D60000000000B3664000FFC17600FFB8
      6200FFB86200FFB86200FFB86200F8B05B00C56A2500B27F6600DCD6D3000000
      000000000000000000000000000000000000000000008080800000000000CE6B
      2100CE733900D68C630000000000CE6B2100CE733900D68C6300000000000000
      0000000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080000000000000000000F1C7B200F9947300FFBBA500FABB
      9600F8D6AE00FFF6D800E4C5B7004271D60043BDFD0086D0F100FEF8EC00FBF3
      E900EAE9DE006DCDF20037A7F000D5D2E10000000000B3664000FFB56400FFAB
      4E00FFAB4E00FFAB4E00FFAB4E00FFAB4E00FFAB4E00F29A4100B5591E00BC96
      8300E6E6E600000000000000000000000000000000008080800000000000CE73
      3100E7A57B00D67B4200D68C6300CE733100E7A57B00D67B4200D68C63000000
      0000000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000000000000000000000000000F7C4A600FCB48F00E3A1
      8800D9BBBB00EBD2C100FDC28D00E59E8A007DABE2008EC0E200ABA4C3005763
      B7007976BF007D9CC700D4D4E2000000000000000000B3664000FFA95200FF9D
      3A00FF9D3A00FF9D3A00FF9D3A00FF9D3A00FF9D3A00FF9D3A00FF9D3A00DF7A
      2500AF5C2D00C6ADA000F0F0F00000000000000000008080800000000000D684
      4200E7A57300E7AD8400D67B4200D6844200E7A57300E7AD8400D67B4200D68C
      5A00000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000000000000000000000000000CDCAC700672B10001318
      7E00002EC000102FB900904C7900E2D3C000000000009C89BC000156D4001864
      D5001357D3001C4CC800C7C5D6000000000000000000B3664000FFAF6000FF99
      3400FF993400FF993400FF993400FF993400FF993400FF993400FF993300FF99
      3300FF993300CC661900B2735000E9E9E900000000008080800000000000DE8C
      5200E7AD8400E7B58C00D6844A00DE8C5200E7AD8400E7B58C00D6844A00CE73
      3100000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080000000000000000000C0C0C00000000000011C48002067
      CB002B77D7002876D8000034BA00D8DDEA0000000000336ECF002E8AE200338F
      E2003091DF002485DE003B6AC8000000000000000000B3664000FFB26700FF99
      3400FF993400FF993400FF993400FF993400FF993400FF993300FF993300FF99
      3300FFA85200F2953F00B9591C00F2ECE900000000008080800000000000DE94
      6300EFBD9C00DE946300DEA57300DE946300EFBD9C00DE946300DEA573000000
      0000000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000000000000000000042424200262016002864B3003B9A
      E9003A99E5003A97E5002884DD00639FCF00CBC9D4002380E00048A2EE003FA7
      EE003DA5EC003DA2EC001F7EDE00D3CBDA0000000000B3664000FFB76F00FF9F
      3F00FF9F3F00FF9F3F00FF9F3F00FF9F3F00FF9F3F00FF9F3F00FFAA5500F8B5
      7500CC6C2600BF806000F9F3F00000000000000000008080800000000000E79C
      6B00E7A57300E7B58C0000000000E79C6B00E7A57300E7B58C00000000000000
      0000000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080000000000000000000161616004C433700367ABB004BB7
      F7004EB8F5004CB7F5003BA8EE00739CC200CDCCE20036A9F00053C0F90056C3
      FA0050C3FA004EBDFA002AA4EC00B0B7D00000000000B3664000FFC38700FFAF
      5F00FFAF5F00FFAF5F00FFAF5F00FFAF5F00FFB87200FFC79100D88B5200B96D
      4400ECD9D000000000000000000000000000000000008080800000000000E7A5
      7B00EFC6A5000000000000000000E7A57B00EFC6A50000000000000000000000
      0000000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000003F3F3F006D696400436489003BAE
      F00054C5FF005ECDFF004FC5FE005FA9D100BFBFD40034B0F2005CC7FC0059C0
      F80040A5E90046A2E5002A64A5009194930000000000B3664000FFD0A000FFC0
      8000FFC08000FFC08000FFC38700FFD1A200E5AC7F00BF704100DFC0B0000000
      000000000000000000000000000000000000000000008080800000000000E7AD
      7B00000000000000000000000000E7AD7B000000000000000000000000000000
      0000000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080000000000000000000A3A3A30067676700868480008086
      99004863A5002F6ECD00185EB000B8C8D60000000000263D75003361B2004C5C
      9F00888697006E6369004F2F3300C1B7B40000000000B3664000FFE2C500FFD0
      A100FFD2A600FFDEBD00F2CBAB00C57C4F00CC99800000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000000000000000000000000000919191008B8A8A00CAC8
      C700D4D3CF00938E8900635C56000000000000000000B0ABB1005E535C00B1AE
      A400C1BFB9008E8E8D005F4C57000000000000000000B3664000FFECD900FFEC
      DA00FFEDDC00CC8C6600C68A6B00F3E6E0000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000CBCBCB009999
      9900868686007D7D7D0000000000000000000000000000000000A59EA300837D
      800096969E0096848300000000000000000000000000B3664000FFF6ED00DFB7
      A000BF7D5A00E6CDC00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BF806000BF7E5E00D9B3
      A000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7746D00D2A7
      9800D2A79800D2A79800D2A79800C9A49300C49A9200C49A9200C49A9200C49A
      9200B6918B00B489840066666600000000000000000000000000000000000000
      0000000000000000000000000000864949000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008348490000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8857400FBE1
      CB00FBE1CB00FADCC300FADCC300FAD9BC00FAD9BC00FAD2BB00F9D3B300F9D3
      B300FAD0AD00E6BCA30066666600000000000000000000000000000000000000
      0000000000000000000000000000884344007D46460000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000784141008346460000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000B8857400FBE1
      CB00FBE1CB00FBE1CB00FADCC300F3D8C300C8A18100DBB89F00F4CFB800F5CD
      AB00F5CDAB00E6BCA30066666600000000000000000000000000000000000000
      00000000000000000000000000008D464600B0767600773F3F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000078424200B07676008344440000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000C18E7900FBE5
      D200FBE5D200FBE1CB00EDD2C000B3592C00C4826100E1BEAA00E9D0BA00F8D6
      B700F5CDAB00F0C2AD0066666600000000000000000000000000000000000000
      000000000000000000000000000092494900C28C8C00B37B7B007B4242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D454400B37B7B00C28C8C008747470000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      00000000000000000000CE631800D68C6B000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000C5927A00FCEA
      DB00FBE5D200F8E4D400BF5D2000C47D5600FAE2CF00FADCC300F8D8BA00F5D8
      BE00F8D6B700F0C2AD0066666600000000000000000000000000A6787A00A158
      5900A1585900A1585900A1585900A1585900C6929200C38C8C00B98080008246
      4600000000000000000000000000000000000000000000000000000000000000
      000085484900B9808000C38C8C00C692920098575700A1585900A1585900A158
      5900A1585900A374750000000000000000000000000080808000000000000000
      00000000000000000000CE6B2100CE733900D68C630000000000000000000000
      0000000000008080800000000000000000000000000000000000CD9A8000FCEA
      DB00EFDCD000E0BEA600D15F0000CD957600F6DFCC00FBE2CC00D9B39C00B47B
      5D00F6DDCA00F1C9B600666666000000000000000000000000009D4E4E00D6A6
      A600D6A6A600D6A6A600D6A6A600D6A6A600D6A6A600CD929200D4A2A200C896
      96008A4B4B000000000000000000000000000000000000000000000000008C4D
      4D00C8969600D4A2A200CD929200D6A6A600D6A6A600D6A6A600D6A6A600D6A6
      A600D6A6A6009D4E4E0000000000000000000000000080808000000000000000
      00000000000000000000CE733100E7A57B00D67B4200D68C6300000000000000
      0000000000008080800000000000000000000000000000000000D4A18300FCEE
      E100D3AD9E00C4611B00E76F0B00AF430300DEBDAC00E9D1C000A7451200B03F
      0000D0A08500F1C9B60020194500000000000000000000000000A2515100E4B8
      B800DCA3A300DCA3A300DCA3A300DCA3A300DCA3A300DCA3A300DDA4A400E3B4
      B400D7A7A700914F4F000000000000000000000000000000000097545400D7A7
      A700E3B4B400DDA4A400DCA3A300DCA3A300DCA3A300DCA3A300DCA3A300DCA3
      A300E4B8B800A251510000000000000000000000000080808000000000000000
      00000000000000000000D6844200E7A57300E7AD8400D67B4200D68C5A000000
      0000000000008080800000000000000000000000000000000000DAA98300FDF0
      E500FCEFE200E1BBA500D3570300CA8A6000F9EADD00DEBAA800B6561D00BF51
      0A00CD987A00E1B59E0000000000000000000000000000000000A7535400F0C9
      C900EBB5B500EBB5B500EBB5B500EBB5B500EBB5B500EBB5B500EBB5B500ECB7
      B700F0C9C900D2999900A35D5E000000000000000000A95F6100D2999900F0C9
      C900ECB7B700EBB5B500EBB5B500EBB5B500EBB5B500EBB5B500EBB5B500EBB5
      B500F0C9C900A753540000000000000000000000000080808000000000000000
      00000000000000000000DE8C5200E7AD8400E7B58C00D6844A00CE7331000000
      0000000000008080800000000000000000000000000000000000DAA98300FDF3
      EB00FDF0E500FBEFE300D9AE9A00F7E6D900FCEADB00FCEBDE00C7815900B74B
      0900FAE5D400F1C9B60066666600000000000000000000000000AD565700FCD9
      D900FBC8C800FBC8C800FBC8C800FBC8C800FBC8C800FBC8C800FBC9C900FCD6
      D600F0C5C600AF60610000000000000000000000000000000000B1626300F0C5
      C600FCD6D600FBC9C900FBC8C800FBC8C800FBC8C800FBC8C800FBC8C800FBC8
      C800FCD9D900AD56570000000000000000000000000080808000000000000000
      00000000000000000000DE946300EFBD9C00DE946300DEA57300000000000000
      0000000000008080800000000000000000000000000000000000DAA98300FDF3
      EB00FDF0E500FDF0E500FCEBDC00FAEBDD00FAEBDE00E9D2C300B14A0F00CD92
      6F00FBE6D400F1C9B60066666600000000000000000000000000B2595900FFE4
      E000FFE4E000FFE4E000FFE4E000FFE4E000FFE4E000FFD7D100FFE1DD00F5D1
      CD00B6676600000000000000000000000000000000000000000000000000B966
      6700F5D1CD00FFE1DD00FFD7D100FFE4E000FFE4E000FFE4E000FFE4E000FFE4
      E000FFE4E000B259590000000000000000000000000080808000000000000000
      00000000000000000000E79C6B00E7A57300E7B58C0000000000000000000000
      0000000000008080800000000000000000000000000000000000DAA98300FEF8
      F300FDF0E500FDF0E500FDF1E600E7D2C800BF836700BA673400D6A98D00FAEA
      DD00FBE5D200F1C9B60066666600000000000000000000000000BD878900B75B
      5C00B75B5C00B75B5C00B75B5C00B75B5C00FFEDE400FFEADF00F7DAD300BE6A
      6A00000000000000000000000000000000000000000000000000000000000000
      0000C16B6B00F7DAD300FFEADF00FFEDE400A4585800B75B5C00B75B5C00B75B
      5C00B75B5C00BD87890000000000000000000000000080808000000000000000
      00000000000000000000E7A57B00EFC6A5000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000DAA98300FEF8
      F300E9E9E900E9E9E900E9E8E500E9E5E100E9E2DC00F4EBE200FFD5CC00FFD5
      CC00F8B1AB00B885740066666600000000000000000000000000000000000000
      0000000000000000000000000000BC5E5F00FFF5E900F8E3D800C5706F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C8707000F8E3D800FFF5E900A85A5B0000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      00000000000000000000E7AD7B00000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000DAA98300FDFB
      FA00FEF8F300FEF8F300FDF6F000FDF3EB00FDF3EB00FDF0E500F7A64300F7A6
      4300E09240006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000C2616200F9ECDC00C8737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CB737200F9ECDC00AF61620000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000DAA98300FDFB
      FA00FDFBFA00FDFBFA00FEF8F300FEF8F300FDF3EB00FDF3EB00DAA98300E8B0
      7A00666666000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C7636400CB72710000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CD717000C763640000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000DAA98300DAA9
      8300DAA98300DAA98300DAA98300DAA98300DBAA8800D4A18300DAA983006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC6C6D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC6C6D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F6F700E0D5D100D8CAC300DED2CC00EBE5E200FAFD
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A2A9AC009CA2A5009CA2A5009CA2
      A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2
      A5009CA2A5009CA2A5009CA2A500A2A9AC000000000000000000000000000000
      000000000000C7A79A00A45C4000A5522A00BF846700C18D7200B8846A00B07C
      6500DDD0CB000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A9814700BE7D2E00BA792A00B372
      2100B8782900B5742300B5742300B47C3700B47C3700B47C3700B47C3700B47C
      3700B47C3700B47C3700B47C3700A9814700000000000000000000000000E2D6
      D300AE6F5400C2866A00E9CEC200C58A6D00F2E4DD00F0DBD400F2DBD200E4C0
      AE00B2806A00F9FBFC0000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000008080800000000000000000000000
      000000000000000000000000000000000000D0863100E1E0DE00E1E0DE00FEFD
      F400FEFDF400FCF4F200F7F1EF00F7F1EF00F7F1EF00F7F1EF00F7F1EF00F7F1
      EF00F7F1EF00E1E0DE00E1E0DE00D08631000000000000000000C9AA9E00AC60
      3600E4C3A400FFFFF600FFFFE900CA946F00EFE0DA00E6B2A700F3BAB500F1DC
      D100BD8D7700EAE4E30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000808080000000000000000000000000008080
      800000000000000000000000000000000000CE883400FBFBFB00EEDAA900F0E0
      B600ECD7A300F4F9FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE88340000000000DAC5BE00B2632E00F4E4
      C900FFFFEB00FFF6CA00FFFABE00D29D6200E6D2CA00DF9F8F00F6919000ECC1
      A200CC9F7300D3C3BE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000008080800080808000000000000000
      000000000000000000000000000000000000CD863300FFFFFF00EEDCAD00F0E1
      B700EDDAA600F4F9FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CD86330000000000CFB3A400DFB97F00FFFF
      FA00FFF5CA00FFEFAE00FFF39900D9A54C00DBBB9B00DEA48300F9646B00EC8F
      6F00D7B26A00C5A69B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000808080008080800000000000000000000000
      000000000000000000000000000000000000CE873300FFFFFF00F2EEE100EBD5
      9E00EFE6CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE87330000000000D1BCAD00E0B97000FFFF
      F500FFF6C100FFEF9800FFF07000EEBB3000DEAC6600E3B57800DB4E4000D868
      4300E4B85000BD8D6D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      000080808000000000000000000000000000E8953300FFFFFF00FFFFFF00F7F1
      EF00F7F1EF00E9EAEA00E9EAEA00E9EAEA00E9EAEA00E9EAEA00E9EAEA00E9EA
      EA00E9EAEA00F8FEFE00FFFFFF00E895330000000000D9C0B300DDA53A00FCEF
      A300F6D66700ECC44100DAB42E00BC932600AE7C4600FFE27000EDCA5700F3D1
      5100F8D04500886C5E00AEB3C300D6D8DA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000808080000000
      000000000000808080008080800080808000F09B3300FFFFFF00BFC0BF00BFC0
      BF00BFC0BF00BFC0BF00BFC0BF00BFC0BF00BFC0BF00BFC0BF00BFC0BF00BFC0
      BF00BFC0BF00BFC0BF00FFFFFF00F09B3300BFB9BC008C8C98008E836500979D
      7F00859697006D90AF005387CA00307BE8000D5FDF007B888200FFE33D00FFE0
      3000EDC826001D63C8000051E3005976A6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800000000000000000000000000000000000F5A23400FFFFFF00F4F6F600F4F6
      F600F4F6F600F4F6F600F4F6F600F4F6F600F4F6F600F4F6F600F4F6F600F4F6
      F600F4F6F600F4F6F600F4F6F600F5A2340055739B0093CBEC00DEF7FF00BFE7
      FF00ABE0FF0096D4FF0080C7FF006DB8FF003297FF000060F50086906100FFDB
      0000D3B81E000563EE000059F9006488BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800080808000000000008080800000000000EDAE0800FFFFFF00EDDAA600F0E1
      B700EEDCAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EDAE0800CCD5E5004994D400CEF4FF00D0EF
      FF00AEE1FF0096D6FF007EC9FF0068BCFF0055B0FF00158EFF000467E400C9AF
      1F00C7B429000064FD000056DB00ADBCD5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800000000000808080000000000000000000E4AB0800E1E0DE00ECD7A300F0E0
      B600EEDAA900E9F7FD00F4EEE900EEEBEA00F0E9E300EBE4DB00F0E9E300EBE4
      DB00F0E9E300F1F6F100E1E0DE00E4AB080000000000A0B5D4003C9CDC00C6F5
      FF00B3E6FF0096DBFF007ED1FF0067C4FF0053B9FF0037AAFF00018BFF00347D
      AE008B9352000074FF001360C400E7E8EE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      000000000000000000000000000080808000E9B50800D6D0CB00D6D0CB00FEFE
      FA00FEFDF400F7F1EF00F7F1EF00F7F1EF00F4EEE900F9EBE200F4EEE900F9EB
      E200F4EEE900D6D0CB00D6D0CB00E9B5080000000000FFFFFC00719AC90045B5
      EA00B7F4FF009AE2FF0080D9FF0068CEFF0052C3FF003DB8FF001AA7FF000090
      FE000E74CF00007EF5004779B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800000000000E0B42B00BC6D0800BC6D0800BC6D
      0800BC6D0800BC6D0800BC6D0800BC6D0800BC6D0800BC6D0800BC6D0800BC6D
      0800BC6D0800BC6D0800BC6D0800E0B42B000000000000000000F8F3F6004387
      C3004DCCF50097F3FF007AE6FF0064DDFF004ED4FF0037C9FF0020BCFF0003AD
      FF0000A7FF00007BE200869CC200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080000000000000000000EACA6200FDBA0800E2AA0800E2AA
      0800E2AA0800E2AA0800E2AA0800E2AA0800E2AA0800FDDCD100E2AA0800FDDC
      D100E2AA08000871FD00FDBA0800EACA6200000000000000000000000000E2E0
      E8002A81C3001C9EDC001CA0DE00199CDE001598DE001195DE000C8FDD000688
      DB000389DF000A64BD00CACEDA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000000000000000000000000000E4CB6B00E4CB6B00E4CB
      6B00E4CB6B00E4CB6B00E4CB6B00E4CB6B00E4CB6B00E4CB6B00E4CB6B00E4CB
      6B00E4CB6B00E4CB6B00E8CD7100000000000000000000000000000000000000
      0000EBE8EE00C3C8DA00C3CADB00C4CBDB00C5CBDB00C6CBDB00C7CBDB00C8CC
      DB00C4CAD900CDD2DD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E4
      E300C1DAC2000000000000000000000000000000000000000000E8E8EA0092A9
      C500638CB9005982B100ACBACB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A2A9AC009CA2A5009CA2A5009CA2
      A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5009CA2A5006E8B
      4B0043CF4E00897A4E009CA2A500A2A9AC0000000000D8DEE400608FC40063A3
      E6006FACEB0080BBF7006594C600E2E4E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002222550000000000000000000000000000000000000000002222
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005284
      AD0021639C006394B5000000000000000000A9814700BE7D2E00BA792A00B372
      2100B8782900B5742300B5742300B5742300B5742300B574230076B0790043CF
      4E005AEB6C0043CF4E00897A4E00A9814700000000006E9BCC007BBDFD0088B5
      E300B8C4D2007BA2CD007CB1E80098ACC3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033336C005757C00033336C0000000000000000000000000033336C005757
      C00033336C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A8CB500528C
      BD008CB5DE00185A94000000000000000000D0863100E1E0DE00E1E0DE00E1E0
      DE00E1E0DE00E1E0DE00E1E0DE00E1E0DE00E1E0DE00309B390033BF3A007FFB
      950043CF4E007FFB95000BA72100D0863100AEC4D9006FADEE0089C7FF0079A2
      CD00FFFFF800E4E7EB0087B5E3007BA9D80091A7C100A9BDD30091AECD007898
      BD009CAFC5000000000000000000000000000000000000000000000000003333
      6C005757C0003C3CCF005757C00033336C000000000033336C005757C0003C3C
      CF005757C00033336C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B94BD006394C6009CC6
      E700639CC600296BA5000000000000000000CE883400FBFBFB00FBFBFB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FDFDFD0045B44F00309B390043CF
      4E007FFB95005CB15C00309B3900729C68008CB1D7007DBCFD008BC5FF006DA7
      E40092A7C000C6CED70086B6E700B0DAFF009CC7F300A9CFF500AFD8FF00D1E8
      FC00749ECD00839CBA000000000000000000000000000000000033336C006464
      D8003C3CCF003C3CCF003C3CCF006262CE00454587006262CE004848D7003C3C
      CF004848D7006868E40033336C0000000000000000000000000000000000D6BD
      AD00D6AD8C00D6A58400D6A57B00CEA58400A59C940073A5CE00ADCEEF0073A5
      CE00397BAD00000000000000000000000000CD863300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009BC79A0033BF
      3A007FFB950052D27C00FFFFFF00CD86330083ADD90082C0FF008CC7FF0093CB
      FF0076ADE70073AAE1009BCCFE009DCDFE00AED6FF00BADCFF00A4D0FE00DDEF
      FF00F1FBFF00618EC000C0CAD500000000000000000000000000000000002C38
      96006666FB004848D7004848D7005656DD006868E4005656DD004848D7004848
      D7006666FB002C38960000000000000000000000000000000000DEBDA500EFCE
      AD00F7DECE00F7E7D600F7E7D600F7DEC600DEBD9C00397B390029733100296B
      390000000000000000000000000000000000CE873300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009BC79A0033BF
      3A007FFB950052D27C00FFFFFF00CE87330089B0DB0085C5FF006A96F0007CAB
      E9009BCFFE009CCEFF009ECDFF009FCEFE00A8D2FE00B2D8FE00A5D1FE00D5E9
      FE00C3E2FF0094C0EE007091B600000000000000000000000000000000000000
      00004444A9007C7CF0005656DD005656DD005656DD005656DD005E5EE1007C7C
      F0004444A90000000000000000000000000000000000DECEB500EFCEB500FFEF
      DE00F7DEC600F7D6BD00F7D6B500F7DEC600F7E7D6003984420052AD73002973
      310000000000000000000000000000000000E8953300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009BC79A0045B4
      4F008FF8AA0052D27C00FFFFFF00E89533009ABADD0086C9FB004362F9001620
      DC006789DC00A2D6FF009DCCFE00A4D0FE00A4D0FE00AFD6FE00A7D1FE00B9DB
      FE00C6E2FF00B6DCFF004F84C000DBDEE2000000000000000000000000000000
      0000000000004444A9007C7CF0006868E4006868E4006868E4008686ED004444
      A9000000000000000000000000000000000000000000EFCEAD00F7E7D600F7DE
      CE00F7DEC600F7DEC600F7D6BD0063AD63004A9C520052A5630063B57B004294
      5200317B3100297331000000000000000000F09B3300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009BC79A0045B4
      4F008FF8AA0052D27C00FFFFFF00F09B3300BFD2E1006BA1E600525CF6002C2A
      FD005161DA0093C0EF00A8D5FF00A4D1FE00A6D1FF00AAD3FE00A4D0FE00BCDD
      FE00CFE7FE00CEE8FF0078A7DA00A6B6CA000000000000000000000000000000
      0000454587006262CE007171EB007171EB007171EB007171EB007171EB006464
      D8004545870000000000000000000000000000000000EFCEAD00FFEFDE00F7DE
      C600F7DEC600F7DEC600F7DEC6005AAD63007BC69C0073BD94006BBD8C0063B5
      84005AB57B00317B31000000000000000000F5A23400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009BC79A0045B4
      4F00A1FDBB006ED08200FFFFFF00F5A23400000000006389D30092A4FE00E5E2
      FF009B97F1006F8DDA00B2D9FF00B0D3FF00ABD1FF00A9D3FE00A7D2FF00C4E7
      FF00CDE8FF00E8F4FF00AAC9EB0087A3C3000000000000000000000000004545
      87006464D8007171EB007C7CF0008787F300C9C9FB008787F3007C7CF0007C7C
      F0006464D80045458700000000000000000000000000F7D6B500FFEFDE00F7DE
      CE00F7DEC600F7DEC600F7DEC6006BBD6B005AB5630063B57B007BC69C005AA5
      6B00428C4A00428C4A000000000000000000EDAE0800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0088B78F0045B4
      4F00A1FDBB0065C26C00FFFFFF00EDAE080000000000B5CAD8006E9AE8008C9E
      EF00819FF8007FB8C80059B5790065B98D005EB18900ABD2FE00A9D4FE00C9C6
      CC00BFD4EB00DCF2FF00C3DAF40082A0C3000000000000000000454587009F9F
      ED007C7CF0007C7CF0008787F300C9C9FB007C7CD300C9C9FB009696FA008787
      F3008787F3009F9FED00454587000000000000000000F7D6B500FFEFDE00F7E7
      D600F7DECE00F7DECE00F7DEC600F7DEC600F7DECE005AB5630084CEA5004AA5
      520000000000000000000000000000000000E4AB0800E1E0DE00E1E0DE00E1E0
      DE00E1E0DE00E1E0DE00E1E0DE00E1E0DE00E1E0DE00187F2700187F27006ED0
      8200B6FCD30065C26C00187F270076B079000000000000000000789ACC007CB2
      F200A1D3FF007FC4CB0028C3220020C1150067B89300B9D8FF00D79D8900F77B
      4200BDA39E00D2E2EB00C2D9F20080A0C6000000000000000000000000006D6D
      B700BDBDFA009696FA00C9C9FB006D6DB700000000006D6DB700C9C9FB009696
      FA00C9C9FB006D6DB700000000000000000000000000E7D6C600F7DECE00FFEF
      DE00F7E7D600F7DECE00F7DECE00F7E7D600FFEFDE006BBD73005AB563005AAD
      630000000000000000000000000000000000E9B50800D6D0CB00D6D0CB00D6D0
      CB00D6D0CB00D6D0CB00D6D0CB00D6D0CB00D6D0CB00626F0E007FDB9400B6FC
      D3006CF68100CEF6F60045B44F00ADCBAF000000000000000000E6E9EB00729D
      CD0095C6F4006DCC850091E489009FE89B007CC09500AACEE900E4B4A300FFA9
      7D00F5A17900CFBCBA0085B4E400A2B7CE000000000000000000000000000000
      00007676C000BDBDFA007676C0000000000000000000000000007676C000C9C9
      FB007676C0000000000000000000000000000000000000000000EFDEC600F7DE
      CE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00F7D6B500DEC6AD00000000000000
      000000000000000000000000000000000000E0B42B00BC6D0800BC6D0800BC6D
      0800BC6D0800BC6D0800BC6D0800BC6D0800BC6D0800BC6D0800626F0E007FDB
      9400A1FDBB0065C26C00A5560F00E0B42B00000000000000000000000000DFE3
      E800799FCA007DBACE00B0E5CC00CCECC9009ACDB900AACDDF00EDDAD500FFF5
      ED00FFE1CE00B8C8DB00578AC200ECEDEF000000000000000000000000000000
      0000000000006D6DB70000000000000000000000000000000000000000006D6D
      B70000000000000000000000000000000000000000000000000000000000E7D6
      C600F7D6BD00F7D6B500F7D6B500EFCEB5000000000000000000000000000000
      000000000000000000000000000000000000EACA6200FDBA0800E2AA0800E2AA
      0800E2AA0800E2AA0800E2AA0800E2AA0800E2AA0800FDDCD100E2AA0800729C
      680052D27C00897A4E00FDBA0800EACA62000000000000000000000000000000
      0000EFF0F1009CB1D5007BA4D5006FB3B100B7D7EC00C1E1FF00FAE4DA00F7E3
      D900B7B1BA006E8FB700C7D2DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4CB6B00E4CB6B00E4CB
      6B00E4CB6B00E4CB6B00E4CB6B00E4CB6B00E4CB6B00E4CB6B00E4CB6B00E4E4
      E300C1DAC200E4CB6B00E8CD7100000000000000000000000000000000000000
      00000000000000000000DFE3EA00A0B5D60080A0C700709BC7007CA3CE007993
      B50088A3C300DBE2EA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008F8D
      8C003942480075737100B9B5B200D6D1CE00DCD8D40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000737B7300BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000000000001C4E81001C4E81001C4E
      81001C4E81001C4E81001C4E81001C4E81001C4E81001C4E81001C4E81001C4E
      81001C4E81002E66950000000000000000000000000000000000CDC8C5003538
      3A00669AB7006E97AE004C5D670055555500898684009D9A9700ACA9A600C9C5
      C10000000000000000000000000000000000BAA5960063493500634935006349
      3500634935006349350063493500634935006349350063493500634935006349
      35000000000000000000000000000000000000000000737B73008CFFFF00FFFF
      FF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFF
      FF008CFFFF00BDBDBD00000000000000000031567B003691C200338AB90042B7
      EB0046ACE00046ACE00046ACE00046ACE00046ACE00046ACE00046ACE00046AC
      E00046ACE0004593C9004779AD000000000000000000D9D4D000807D7B005C5B
      5A006190AA0098CDEA009BCBE400749CB2003A484F005D5B5A007B7977007977
      750088858300ADAAA7000000000000000000BAA59600FCFAEF00FAF2E500F6E9
      DA00F3DECD00EED3BF00EAC8B200E6BEA500E3B49A00DFAD9000DDA789006349
      35000000000000000000000000000000000000000000737B7300FFFFFF008CFF
      FF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFF
      FF00FFFFFF00BDBDBD00000000000000000031567B0042A5D700366EA20067DF
      FF0064CAFD0064CAFD0064CAFD0064CAFD0064CAFD0064CAFD0064CAFD0064CA
      FD0064CAFD0066D5FF00366EA20000000000CCC8C400ABA8A500575655008F8D
      8C005480980095C8E3009CC3D700A5CFE5009ECCE5005775840047484800807D
      7B00767472007B797700B0ACA90000000000B8A59C00FFFFF600B8A59C00B7A6
      9C00F6E9DA00B39C9000B29A8D00B29A8D00B29A8D00B29A8D00DFAD90006349
      35000000000000000000000000000000000000000000737B73008CFFFF00FFFF
      FF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFF
      FF008CFFFF00BDBDBD0000000000000000002E5B830049AFE6003675A90084EC
      FE006ED4FF006ED4FF006ED4FF006ED4FF006ED4FF006ED4FF006ED4FF006ED4
      FF006ED4FF007DE5FF003675A90000000000CBC6C300A4A19E006C6C6C00A4A2
      A0004D78900095C7E200A0C6DA00A4C9DC00A4C9DC00ABD6EC007EA5BB004349
      4C007C7A780085828000BAB6B30000000000C0AA9C00FFFFF600FFFFF600FCFA
      EF00FAF2E500F6E9DA00F3DECD00EED3C000EAC8B200E6BEA500E3B49A006349
      35000000000000000000000000000000000000000000737B7300FFFFFF008CFF
      FF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFF
      FF00FFFFFF00BDBDBD0000000000000000002E5B830053B9EB003675A9008AF7
      FE0075DBFE0075DBFE0075DBFE0075DBFE0075DBFE0075DBFE0075DBFE0075DB
      FE0075DBFE008AF7FE003675A9000000000000000000B8B4B1009C9D9D009D9C
      9A00537F980093C7E2009DC4D800A6CADC00A7CBDD00A6C8DA00ADD4E9008DBB
      D50048525900C2BEBB00E3DEDA0000000000C3AE9E00FFFFF600B7A69C00B7A6
      9C00FCFAEF00B39C9000B29A8D00B29A8D00B29A8D00B29A8D00E6BEA5006349
      35000000000000000000000000000000000000000000737B73008CFFFF00FFFF
      FF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFF
      FF008CFFFF00BDBDBD0000000000000000002E66950053B9EB003280B5009AFD
      FF0084ECFE0084ECFE007DE5FF007DE5FF007DE5FF007DE5FF007DE5FF005DAD
      D8007DE5FF0092FAFD003280B5000000000000000000817E7C00C3C3C3008485
      8500598BA7008AC0DE0094C2D9009EC7DD009EC7DC00A0C8DC00A0C5D800A3CF
      E50083B4CE009B9A98000000000000000000C3AE9E00FFFFF600FFFFF600FFFF
      F600FFFFF600FCFAEF00FAF2E500F6E9DA00F3DECD00EED3C000EAC8B2006349
      35000000000000000000000000000000000000000000737B7300FFFFFF008CFF
      FF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFF
      FF00FFFFFF00BDBDBD0000000000000000002E66950056C8F100338AB900DEFF
      FF00DEFFFF00DEFFFF00DEFFFF009AE3F5009AE3F5009CF1FF009CF1FF002C38
      96009CF1FF00DEFFFF003280B500000000000000000071717000D7D6D5006F76
      7A0086B1C90080B7D50088BAD4008FBFD80093C2DB0096C4DC0097C4DC0097C2
      D80086BEDD0056646B000000000000000000C7B1A200FFFFF600FFFFF600FFFF
      F600FFFFF600FFFFF600FCFAEF00C1C4C500455D7100F3DECD00EED3C0006349
      35000000000000000000000000000000000000000000737B73008CFFFF00FFFF
      FF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFF
      FF008CFFFF00BDBDBD0000000000000000002E66950064CAFD0042A5D7003691
      C2003691C2003691C20070CDE600EFEFF60045458700B0B0D100DFDFEC000808
      7400DFDFEC00B0B0D1001225870000000000BDB9B60087878700C4C1BF006271
      7B00C5E1F00092C0DA007CB4D30085B9D50086B9D5008ABCD8008DBFD90091C1
      DC007EB8D90058798A00E4DFDB0000000000C7B1A200FEFDFC00E4EAEA005E75
      8400DFE3E300FFFFF600C2C8C9004B6170002EA9D60023354700AFA399006349
      350000000000000000000000000041824C0000000000737B7300FFFFFF00FFFF
      FF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFF
      FF00FFFFFF00BDBDBD0000000000000000002C75A10064CAFD0064CAFD0064CA
      FD0064CAFD0064CAFD0053B9EB0042A5D7002369B10008087400122587000000
      CC0012258700080874004779AD000000000067656300AFAFAF00959697008DA0
      AB00E3F3FB00B9D5E50082B8D60077B2D3007EB7D6007FB7D60080B7D50086BB
      D8006EADCF006790A700D8D3CF0000000000CBB5A600FEFDFC008FA4AC0086D3
      E5004B617000AFB8BD004B61700061C1DE004C616F0029B6E90015273300102C
      3A0017293500000000003D7443004BA7610000000000737B7300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008CFFFF00FFFFFF00FFFFFF00FFFFFF008CFFFF00BDBD
      BD00BDBDBD00BDBDBD0000000000000000002C75A10075DBFE0075DBFE0075DB
      FE0075DBFE0075DBFE0075DBFE0075DBFE0061C2EA002C38960014148E006666
      FB0014148E0012258700000000000000000040403F00BEBDBD00797C7E00ABB7
      BE00FFFFFF00D8E9F300AFD0E3006EACCF006FAED20078B4D60079B4D60080B7
      D70061A4CB00759CB100D9D4D00000000000CBB5A600FEFDFC00E4EAEA008FA4
      AC0083E1F6004B6170007ACDE2004C616F0065D2F200455D710032B2DF001D99
      C8001A88B3001F536D004F8458004CAC640000000000737B7300FFFFFF00FFFF
      FF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00000000000000
      0000000000000000000000000000000000005586AE00FFFFFF0084ECFE0084EC
      FE0084ECFE0084ECFE00C5C5E4002C38960014148E000000CC006666FB009696
      FA006666FB000000CC0014148E004444A90043434300C4C4C400B1B0B0005057
      5B0088959C00CCDAE100DAEFF900B6D9ED0072AED0006CAACE0076B2D4007BB3
      D2005FA5CD00819DAD00E2DDD90000000000CBB5A600CBB5A600CBB5A600BDB0
      A6008FA4AC0083E1F6004B61700083E1F6003C59730065D2F20050C9EF003BBF
      EB0027B2E4001CA3D60064956E0053B46C0000000000737B7300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008CFFFF00FFFFFF008CFFFF00FFFFFF00737B7300FFFF
      FF00FFFFFF00000000000000000000000000000000003691C200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF004593C90000000000000000004444A9002121A9006666
      FB002121A9004444A90000000000000000007573710074737300BABABA00D1D0
      CF008A8A8B00585E62007A899100A1B8C500ACD1E70084C1E20077B6D80071A6
      C40061A8D0008B99A00000000000000000000000000000000000000000000000
      0000000000008FA4AC0083E1F600455D710083E1F60077DBF40065D2F20050C9
      EF003BBFEB0029B6E90076A583005DC0780000000000737B7300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008CFFFF00FFFFFF00FFFFFF00737B7300FFFF
      FF00000000000000000000000000000000000000000000000000338AB900338A
      B900338AB900338AB9000000000000000000000000002121A9004444A9000000
      CC004444A9002121A900000000000000000000000000DCD8D4008E8B89007575
      7400737372007D7978005F5C5B00595C5E0068747A007895A6007AB0CF006BAB
      D00061A3C800A8A7A60000000000000000000000000000000000000000000000
      000000000000000000008FA4AC0083E1F60083E1F60083E1F60077DBF40065D2
      F2005FB2CF007A8B9600AEC1A60093D39A0000000000737B7300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00737B73000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005757C00000000000000000003531
      BB0000000000000000005757C00000000000000000000000000000000000E8E3
      DF00D8D3CF0000000000DFDAD600A29F9C0073706E005C5A5A005B6063003E62
      77006A818E00DCD8D40000000000000000000000000000000000000000000000
      00000000000000000000000000008FA4AC008FA4AC00889CA5008396A0007E90
      9A007A8B96000000000099B89C00AEC1A60000000000737B7300737B7300737B
      7300737B7300737B7300737B7300737B7300737B7300737B7300737B73000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005757
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEBAB70058555300524A
      4800D7D2CF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200100000100010000000000000900000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFDFFF3F00008007FF0FF81F0000
      8007FC0FC00700008007F007000300008007C007000100008007000300010000
      8007000300010000800780010001000080078001000000008007C00000000000
      8007C001800100008007E007C0030000801FE01FE0070000807FF07FF00F0000
      81FFF1FFF81F0000FFFFFFFFFCFF0000FFFFFFFFF81F8003FFFFE000E0078003
      0821E000C00380030001E000800180030001E000800180030001E00000008003
      0001000000008003000100000000000100010000000000010001000000000001
      0001000000008003000100078001C007000000078001E00700000007C003F007
      FFE00007E007F827FFF00007F81FFC67FFFF8000F07FFEFF80010002F000FC7F
      80010000F000FC7F80010000E000D83781010000E000E00F80810000C000E00F
      80410000C000C007806100008000C0078061000080000001804100000000C007
      808100000000C007810100000000E00F800100000000E00F80010000C000D837
      80010000F000FEFFFFFF4000FC00FEFFFFFFFFFFFFFFFFFFFF3FFFFF0000F007
      FE1FFFFF0000F007FE1FFF3F0000F003FF1FFF1F00000001F11FFF9F00000001
      F00FFB0700000001F00FF10700000001F000E08F00000001F000F1DF00008001
      F000F9FF00008001F001F8FF00000001F01FFDFF000000010007FFFF0000001F
      0007FFFF0000003F800FFFFF8001E0FFCFFFE038801FFFFF0000E010000FFFFF
      0000C0000007EFFD000080000003C7FF000000010001C3FB000000030000E3F7
      000000030007F1E7000000030007F8CF000000030007FC1F0000000381FFFE3F
      00000007C3E1FC1F00000007FFF1F8CF00008007FDF1E1E70000C007FDEDC3F3
      0000E00FFE1FC7FD8001F01FFFFFFFFFFFFFFDFFFFFFF03FFFFFF8FFF003E003
      EFFDF8FFC003C001C7FFF0FFC0038001C3FBF07F80030001E3F7F07F81FF0001
      F1E7F03F83FF0001F8CFF61F83EF0000FC1FFE0F81E70000FE3FFE0780030001
      FC1FFF03C0010003F8CFFF03E0018007E1E7FF8FF003C00FC3F3FF9FFFE7E00F
      C7FDFFDFFFEFF18FFFFFFFFFFFFFFFFFFFFFFFFFF001E00FFFFFFF5FF001E00F
      FC9FFF5F0001E00FFC9FFF5F0001E00FFC9FFF5F0001E00FFC9FFC5F0001E00F
      FC9FF05F0001E00FFC9FE05F0001A00BFC9FE05F0003C007F09FE05F0007E00F
      E09FE05F000FE00FE09FE05F001FC007E09FE05F003FC007E01FF05F007FC007
      FFFFF80F00FFF83FFFFFFFFF01FFF83FFC00C001FFFFFFFFFC00C0019FFFCFFF
      FC00C001C7FF87F3FC00C001C1FF83E30000C0010000C3C70000C0010000E18F
      0000C0010000F01F0000C0010000F83F0000C0010000FC3F0000C0010000F81F
      0001C0010000F18F0003C0010000E3C7003FC001FFC1C7E7003FC001FFE08FFF
      007FC003FFF09FFF00FFC007FFF9FFFF8003FF1FF8C380070001FE1FF0830000
      0001FC1FB08300000001E00790C700000001C003818700000001800180070000
      00010000804300000001000080C300000001000081C100000001000081E00000
      0001000083F000000001000087800000000100018F000000000180039F000000
      8003C0079F810000FFFFE00FFFFF8001C001C001F803FFFF80018001F8000000
      80018001F001000080038003E0070000C003C003C0030000C007C00780010000
      E007E00780000000E007E00700000000E007E00700000000E007E00700000000
      E007E00700000000E007E00700000000E00FE00F00000000E00FE00F80010000
      F01FF01FE1EF0000FC7FFC7FFFFF0000FC7F0000C001FE7FF83F0000C001F83F
      F01F0000C001E01FE00F0000C001800FE00F0000C0010007E00F0000C0010003
      C0070000C0010001C0070000C0010000C0070000C0010000E0070000C0018001
      E0070000C001C001E0070000C001E000E0070000C001F001F00F0000C001F807
      F81F0000C003FC1FFFFF0000C007FE7FFF00FFCFFFFF807F4000E007FFFF801F
      0000C063182180010000BAB9000180010000AE69000180010000BBB900018001
      0000AE69000180010000BA79000180010000AE09000180010300B99900018001
      0600A889000180018800BC3900018001F000AEE90001C001F000BBBB0001E003
      F001C007FFFFF00FF807FFFFFFFFF81FFFFFFFFFFFFF8FFFFFFFFFFFFF8183FF
      80038003800080FFBFFBBFFB0000807FA67BBFFB0000801FA23BB01B00008007
      A01BB01B80018001A00BB01B80818000A00BB01B00818000A01BB01B00008001
      A23BB01B00008007A67BB01B0000801FAEFBBFFB0080807FBFFBBFFB818180FF
      80038003C3C383FFFFFFFFFFFFFF8FFFE001FFFFFFFFFFFFC001FEFFFF7FFFFF
      C001FE7FFE7F8003C001FE3FFC7FBFFBC001FE1FF87FBCFBC001C00FF003BC7B
      C001C007E003BC3BC001C003C003BC1BC001C0018003BC1BC001C003C003BC3B
      C001C007E003BC7BC001C00FF003BCFBC001FE1FF87FBDFBC003FE3FFC7FBFFB
      C007FE7FFE7F8003C00FFEFFFF7FFFFFFFFFFC0FFFFF9FFF0000F807F83F8FFF
      0000E003F39FC71F0000C003F7DFE20F00008003F55FF00F00008003F55FF80F
      00008003F55FF90700008000F55FF30000000000F55FF64000000000F55FF0E4
      00000000F55FFEC800008000F55FFF9800008001FDDFFFB10000C001FDDFFFA3
      0000E001FE3FFF878001F003FFFFFFCFFFFFFFFFFFE7C1FFFFFFFFFF000080FF
      FBEFFFE3000080FFF1C7FFC300000007E083FF8300000003C001E00700000001
      E003C00F00000001F007800F00000000F80F800300000000F007800300008000
      E003800300008000C001800F0000C000E083800F0000C000F1C7C03F0000E000
      FBEFE0FF0000F001FFFFFFFF8001FC038001FFFFE07FFFFF80018003C00F000F
      800100018003000F800100010001000F800100010001000F800100018001000F
      800100018003000F800100018003000F800100010001000E8001000100010004
      80010003000100008001000000010000800381830003F8008007C3838003FC00
      800FFF6DE403FE04801FFFEFFF87FFFF00000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    Left = 128
    Top = 48
  end
  object T3: TTimer
    Enabled = False
    Interval = 1
    OnTimer = T3Timer
    Left = 96
    Top = 80
  end
  object ApplicationEvents: TApplicationEvents
    OnIdle = ApplicationEventsIdle
    OnRestore = ApplicationEventsRestore
    OnShortCut = ApplicationEventsShortCut
    Left = 32
    Top = 112
  end
  object T2: TTimer
    Interval = 500
    OnTimer = T2Timer
    Left = 64
    Top = 80
  end
  object SeekMenu: TPopupMenu
    Left = 128
    Top = 16
  end
  object ColorDlg: TColorDialog
    Color = clMoneyGreen
    CustomColors.Strings = (
      'ColorA=B2B2B2'
      'ColorB=E8BFF9'
      'ColorC=C1E9B6'
      'ColorD=CEBFAE'
      'ColorE=955826'
      'ColorF=E2E4E7'
      'ColorG=32C80D'
      'ColorH=E3C499'
      'ColorI=EDEDFA'
      'ColorJ=769276'
      'ColorK=C5CEE2'
      'ColorL=B9C6C1'
      'ColorM=8DEFBE'
      'ColorN=CED8B8'
      'ColorO=F5DE81'
      'ColorP=98CBB4')
    Options = [cdFullOpen, cdPreventFullOpen]
    Left = 64
    Top = 48
  end
end
