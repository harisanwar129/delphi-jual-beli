object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 500
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 48
    Top = 48
    object INPUTDATA1: TMenuItem
      Caption = 'INPUT DATA'
      object DATABARANG1: TMenuItem
        Caption = 'DATA BARANG'
        OnClick = DATABARANG1Click
      end
      object DATASUPPLIER1: TMenuItem
        Caption = 'DATA SUPPLIER'
        OnClick = DATASUPPLIER1Click
      end
      object DATAKONSUMEN1: TMenuItem
        Caption = 'DATA KONSUMEN'
        OnClick = DATAKONSUMEN1Click
      end
    end
    object RANSAKSI1: TMenuItem
      Caption = 'TRANSAKSI'
      object PEMBELIAN1: TMenuItem
        Caption = 'PEMBELIAN'
        OnClick = PEMBELIAN1Click
      end
      object PENJUALAN1: TMenuItem
        Caption = 'PENJUALAN'
        OnClick = PENJUALAN1Click
      end
    end
    object LAPORAN1: TMenuItem
      Caption = 'LAPORAN'
      object DATABARANG2: TMenuItem
        Caption = 'DATA BARANG'
      end
      object DATASUPPLIER2: TMenuItem
        Caption = 'DATA SUPPLIER'
      end
      object DATAKONSUMEN2: TMenuItem
        Caption = 'DATA KONSUMEN'
      end
      object PEMBELIAN2: TMenuItem
        Caption = 'PEMBELIAN'
      end
      object PENJUALAN2: TMenuItem
        Caption = 'PENJUALAN'
      end
    end
    object KELUAR1: TMenuItem
      Caption = 'KELUAR'
    end
  end
end
