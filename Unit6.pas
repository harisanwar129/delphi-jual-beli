unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    Button2: TButton;
    Button3: TButton;
    Button6: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button7: TButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBGrid2: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses DATAMODULE;

procedure TForm6.Button1Click(Sender: TObject);
begin
DATAMODULE2.ADOMASTERJUAL.Append;
DBEDIT1.SetFocus;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
DATAMODULE2.ADOQuery1.Close;
DATAMODULE2.ADOQuery1.SQL.Clear;
DATAMODULE2.ADOQuery1.SQL.Add('SELECT SUM(TOTAL_HARGAA) AS TOTAL_BELANJA');
DATAMODULE2.ADOQuery1.SQL.Add('FROM TDETAILJUAL');
DATAMODULE2.ADOQuery1.SQL.Add('WHERE NOTA_JUAL='+QUOTEDSTR(DBEDIT5.Text));
DATAMODULE2.ADOQuery1.Open;
DBEDIT3.Text:=DATAMODULE2.ADOQuery1['TOTAL_BELANJA'];
end;

procedure TForm6.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
if KEY=#13 then
BEGIN
  if STRTOINT(DBEDIT8.Text)>STRTOINT(DBEDIT7.Text) then
  BEGIN
    SHOWMESSAGE('STOK TIDAK CUKUP');
    DBEDIT8.SetFocus;
  END
  ELSE
  BEGIN
    DBEDIT10.Text:=INTTOSTR(STRTOINT(DBEDIT8.Text)*STRTOINT(DBEDIT9.Text));
    if APPLICATION.MessageBox('TAMBAH BARANG LAINNYA ?','KONFIRMASI',MB_YESNO)=IDYES then
    BEGIN
      DATAMODULE2.ADODETAILJUAL.Post;
      DATAMODULE2.ADOBARANG.Edit;
      DATAMODULE2.ADOBARANG['STOCK']:=DATAMODULE2.ADOBARANG['STOCK']-STRTOINT(DBEDIT8.Text);
    DATAMODULE2.ADOBARANG.Post;
    DATAMODULE2.ADODETAILJUAL.Append;
    DBLOOKUPCOMBOBOX2.SetFocus;
    
    END
    ELSE
    BEGIN
        DATAMODULE2.ADODETAILJUAL.Post;
    DATAMODULE2.ADOBARANG.Edit;
    DATAMODULE2.ADOBARANG['STOCK']:=DATAMODULE2.ADOBARANG['STOCK']-STRTOINT(DBEDIT8.Text);
    DATAMODULE2.ADOBARANG.Post;
    END;
    
    
  END;
  
END;

end;

procedure TForm6.DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if KEY =#13 then
begin 
   DATAMODULE2.ADOMASTERJUAL.Post;
   DATAMODULE2.ADODETAILJUAL.Append;
   DBLOOKUPCOMBOBOX2.SetFocus;
end;

end;

end.
