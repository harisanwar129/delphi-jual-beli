object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 425
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 264
    Top = 8
    Width = 141
    Height = 24
    Caption = 'DATA SUPLLIER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 88
    Width = 121
    Height = 19
    Caption = 'KODE_SUPPLIER'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 128
    Width = 125
    Height = 19
    Caption = 'NAMA_SUPPLIER'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 88
    Top = 168
    Width = 36
    Height = 19
    Caption = 'TELP'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 239
    Width = 474
    Height = 120
    DataSource = DataModule2.DSSUPPLIER
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 554
    Top = 257
    Width = 206
    Height = 105
    Caption = 'Masukan Kode Barang'
    TabOrder = 1
    object Edit1: TEdit
      Left = 40
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Button7: TButton
      Left = 64
      Top = 77
      Width = 75
      Height = 25
      Caption = 'Cari'
      TabOrder = 1
      OnClick = Button7Click
    end
  end
  object Button6: TButton
    Left = 664
    Top = 184
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 2
    OnClick = Button6Click
  end
  object Button5: TButton
    Left = 664
    Top = 120
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 3
    OnClick = Button5Click
  end
  object Button4: TButton
    Left = 664
    Top = 64
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button3: TButton
    Left = 535
    Top = 184
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button2: TButton
    Left = 536
    Top = 120
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 536
    Top = 64
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 7
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 248
    Top = 80
    Width = 199
    Height = 27
    DataField = 'KODE_SUPPLIER'
    DataSource = DataModule2.DSSUPPLIER
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit2: TDBEdit
    Left = 248
    Top = 120
    Width = 199
    Height = 27
    DataField = 'NAMA_SUPPLIER'
    DataSource = DataModule2.DSSUPPLIER
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 248
    Top = 160
    Width = 199
    Height = 27
    DataField = 'TELP'
    DataSource = DataModule2.DSSUPPLIER
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
end
