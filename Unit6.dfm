object Form6: TForm6
  Left = 293
  Top = 110
  Caption = 'Form6'
  ClientHeight = 532
  ClientWidth = 973
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 129
    Width = 90
    Height = 19
    Caption = 'NOTA_JUAL'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 7
    Top = 162
    Width = 73
    Height = 19
    Caption = 'TANGGAL'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 7
    Top = 202
    Width = 138
    Height = 19
    Caption = 'NAMA_KONSUMEN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 250
    Width = 63
    Height = 19
    Caption = 'ALAMAT'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 398
    Top = 129
    Width = 117
    Height = 19
    Caption = 'NAMA_BARANG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 408
    Top = 162
    Width = 50
    Height = 19
    Caption = 'STOCK'
    FocusControl = DBEdit7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 408
    Top = 202
    Width = 60
    Height = 19
    Caption = 'JUMLAH'
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 398
    Top = 250
    Width = 100
    Height = 19
    Caption = 'HARGA_JUAL'
    FocusControl = DBEdit9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 398
    Top = 298
    Width = 125
    Height = 19
    Caption = 'TOTAL_HARGAA'
    FocusControl = DBEdit10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 8
    Width = 90
    Height = 19
    Caption = 'NOTA_JUAL'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label11: TLabel
    Left = 397
    Top = 341
    Width = 126
    Height = 19
    Caption = 'TOTAL_BELANJA'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 751
    Top = 85
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 880
    Top = 85
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 1
  end
  object Button5: TButton
    Left = 880
    Top = 141
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 751
    Top = 141
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 751
    Top = 205
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 4
  end
  object Button6: TButton
    Left = 880
    Top = 205
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 5
  end
  object GroupBox1: TGroupBox
    Left = 772
    Top = 275
    Width = 206
    Height = 105
    Caption = 'Masukan Kode Barang'
    TabOrder = 6
    object Edit1: TEdit
      Left = 40
      Top = 42
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
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 404
    Width = 428
    Height = 120
    DataSource = DataModule2.DSMASTERJUAL
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 155
    Top = 126
    Width = 169
    Height = 27
    DataField = 'NOTA_JUAL'
    DataSource = DataModule2.DSMASTERJUAL
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit2: TDBEdit
    Left = 155
    Top = 159
    Width = 169
    Height = 27
    DataField = 'TANGGAL'
    DataSource = DataModule2.DSMASTERJUAL
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit4: TDBEdit
    Left = 155
    Top = 247
    Width = 225
    Height = 27
    DataField = 'ALAMAT'
    DataSource = DataModule2.DSKONSUMEN
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBEdit7: TDBEdit
    Left = 546
    Top = 159
    Width = 134
    Height = 27
    DataField = 'STOCK'
    DataSource = DataModule2.DSBARANG
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object DBEdit8: TDBEdit
    Left = 546
    Top = 202
    Width = 134
    Height = 27
    DataField = 'JUMLAH'
    DataSource = DataModule2.DSDETAILJUAL
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object DBEdit9: TDBEdit
    Left = 546
    Top = 247
    Width = 134
    Height = 27
    DataField = 'HARGA_JUAL'
    DataSource = DataModule2.DSDETAILJUAL
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnKeyPress = DBEdit9KeyPress
  end
  object DBEdit10: TDBEdit
    Left = 546
    Top = 295
    Width = 134
    Height = 27
    DataField = 'TOTAL_HARGAA'
    DataSource = DataModule2.DSDETAILJUAL
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object DBGrid2: TDBGrid
    Left = 454
    Top = 404
    Width = 417
    Height = 120
    DataSource = DataModule2.DSDETAILJUAL
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 155
    Top = 202
    Width = 185
    Height = 27
    DataField = 'NAMA_KONSUMEN'
    DataSource = DataModule2.DSMASTERJUAL
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnKeyPress = DBLookupComboBox1KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 155
    Top = 8
    Width = 142
    Height = 27
    DataField = 'NOTA_JUAL'
    DataSource = DataModule2.DSDETAILJUAL
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    Visible = False
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 546
    Top = 126
    Width = 186
    Height = 27
    DataField = 'NAMA_BARANG'
    DataSource = DataModule2.DSDETAILJUAL
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
  end
  object DBEdit5: TDBEdit
    Left = 546
    Top = 338
    Width = 134
    Height = 27
    DataField = 'TOTAL_BELANJA'
    DataSource = DataModule2.DSQUERY
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
  end
end