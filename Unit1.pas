unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    INPUTDATA1: TMenuItem;
    DATABARANG1: TMenuItem;
    DATASUPPLIER1: TMenuItem;
    DATAKONSUMEN1: TMenuItem;
    RANSAKSI1: TMenuItem;
    PEMBELIAN1: TMenuItem;
    PENJUALAN1: TMenuItem;
    LAPORAN1: TMenuItem;
    DATABARANG2: TMenuItem;
    DATASUPPLIER2: TMenuItem;
    DATAKONSUMEN2: TMenuItem;
    PEMBELIAN2: TMenuItem;
    PENJUALAN2: TMenuItem;
    KELUAR1: TMenuItem;
    procedure DATABARANG1Click(Sender: TObject);
    procedure DATAKONSUMEN1Click(Sender: TObject);
    procedure DATASUPPLIER1Click(Sender: TObject);
    procedure PEMBELIAN1Click(Sender: TObject);
    procedure PENJUALAN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses DATAMODULE, Unit2, Unit3, Unit4, Unit5, Unit6;

procedure TForm1.DATABARANG1Click(Sender: TObject);
begin
FORM2.ShowModal;
end;

procedure TForm1.DATAKONSUMEN1Click(Sender: TObject);
begin
FORM3.SHOWMODAL;
end;

procedure TForm1.DATASUPPLIER1Click(Sender: TObject);
begin
FORM4.SHOWMODAL;
end;

procedure TForm1.PEMBELIAN1Click(Sender: TObject);
begin
FORM5.SHOWMODAL;
end;

procedure TForm1.PENJUALAN1Click(Sender: TObject);
begin
FORM6.SHOWMODAL;
end;

end.