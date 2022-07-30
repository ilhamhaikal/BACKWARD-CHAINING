object FormTabel: TFormTabel
  Left = 256
  Top = 30
  Width = 938
  Height = 595
  Caption = 'TABEL DATABASE'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 104
    Width = 137
    Height = 24
    Caption = 'TABEL GEJALA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 344
    Top = 104
    Width = 148
    Height = 20
    Caption = 'TABEL PENYAKIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 624
    Top = 104
    Width = 180
    Height = 20
    Caption = 'TABEL PERTANYAAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 472
    Width = 85
    Height = 13
    Caption = 'KODE GEJALA'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 512
    Width = 86
    Height = 13
    Caption = 'NAMA GEJALA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 304
    Top = 472
    Width = 100
    Height = 13
    Caption = 'KODE PENYAKIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 304
    Top = 512
    Width = 101
    Height = 13
    Caption = 'NAMA PENYAKIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 568
    Top = 472
    Width = 122
    Height = 13
    Caption = 'KODE PERTANYAAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 568
    Top = 512
    Width = 84
    Height = 13
    Caption = 'PERTANYAAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 256
    Top = 24
    Width = 361
    Height = 49
    Color = clGray
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 145
      Height = 33
      Caption = 'MENU UTAMA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 184
      Top = 8
      Width = 161
      Height = 33
      Caption = 'TABEL RULE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object SMDBNavigator1: TSMDBNavigator
    Left = 24
    Top = 144
    Width = 240
    Height = 33
    DataSource = DM1.Gejala_ds
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 1
  end
  object SMDBNavigator2: TSMDBNavigator
    Left = 304
    Top = 144
    Width = 240
    Height = 33
    DataSource = DM1.Penyakit_ds
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 2
  end
  object SMDBNavigator3: TSMDBNavigator
    Left = 600
    Top = 144
    Width = 240
    Height = 33
    DataSource = DM1.Pertanyaan_ds
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 3
  end
  object SMDBGrid1: TSMDBGrid
    Left = 24
    Top = 192
    Width = 241
    Height = 249
    DataSource = DM1.Gejala_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 24
    ScrollBars = ssHorizontal
  end
  object SMDBGrid2: TSMDBGrid
    Left = 296
    Top = 192
    Width = 249
    Height = 249
    DataSource = DM1.Penyakit_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
  end
  object SMDBGrid3: TSMDBGrid
    Left = 568
    Top = 192
    Width = 321
    Height = 249
    DataSource = DM1.Pertanyaan_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 24
    ScrollBars = ssHorizontal
  end
  object DBEdit1: TDBEdit
    Left = 120
    Top = 472
    Width = 121
    Height = 21
    DataField = 'KodeGejala'
    DataSource = DM1.Gejala_ds
    TabOrder = 7
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 512
    Width = 121
    Height = 21
    DataField = 'NamaGejala'
    DataSource = DM1.Gejala_ds
    TabOrder = 8
  end
  object DBEdit3: TDBEdit
    Left = 408
    Top = 472
    Width = 121
    Height = 21
    DataField = 'KodePenyakit'
    DataSource = DM1.Penyakit_ds
    TabOrder = 9
  end
  object DBEdit4: TDBEdit
    Left = 408
    Top = 512
    Width = 121
    Height = 21
    DataField = 'NamaPenyakit'
    DataSource = DM1.Penyakit_ds
    TabOrder = 10
  end
  object DBEdit5: TDBEdit
    Left = 704
    Top = 472
    Width = 121
    Height = 21
    DataField = 'KodePertanyaan'
    DataSource = DM1.Pertanyaan_ds
    TabOrder = 11
  end
  object DBEdit6: TDBEdit
    Left = 704
    Top = 504
    Width = 185
    Height = 21
    DataField = 'Pertanyaan'
    DataSource = DM1.Pertanyaan_ds
    TabOrder = 12
  end
end
