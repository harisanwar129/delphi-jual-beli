unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
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
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses DATAMODULE;

procedure TForm5.Button1Click(Sender: TObject);
begin
  DATAMODULE2.ADOBELI.Append;
         DBEDIT1.Enabled:=TRUE;
         DBEDIT1.SETFOCUS;

         DBEDIT2.Enabled:=TRUE;
         DBLOOKUPCOMBOBOX1.Enabled:=TRUE;
             DBLOOKUPCOMBOBOX2.Enabled:=TRUE;
         DBEDIT4.Enabled:=TRUE;
          DBEDIT6.Enabled:=TRUE;
           DBEDIT7.Enabled:=TRUE;
            DBEDIT8.Enabled:=TRUE;

         BUTTON1.Enabled:=FALSE;
         BUTTON5.Enabled:=TRUE;
          BUTTON6.Enabled:=TRUE;
          BUTTON2.Enabled:=TRUE;
          BUTTON3.Enabled:=TRUE;
          BUTTON4.Enabled:=TRUE;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin

DATAMODULE2.ADOBELI.Post;
DATAMODULE2.ADOBARANG.Edit;
DATAMODULE2.ADOBARANG['STOCK']:=DATAMODULE2.ADOBARANG['STOCK']+STRTOINT(DBEDIT7.Text);
DATAMODULE2.ADOBARANG.Post;
SHOWMESSAGE('DATA SUKSES DISIMPAN,STOK SUDAH BERTAMBAH');
 BUTTON1.Enabled:=TRUE;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
DATAMODULE2.ADOBELI.Edit;
DATAMODULE2.ADOBARANG.Edit;
DATAMODULE2.ADOBARANG['STOK']:=DATAMODULE2.ADOBARANG['STOK']-STRTOINT(DBEDIT7.Text);
DATAMODULE2.ADOBARANG.Post;
SHOWMESSAGE('DATA SUKSES DISIMPAN,STOK SUDAH BERUBAH');
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
DATAMODULE2.ADOBELI.Delete;
DATAMODULE2.ADOBARANG.Edit;
DATAMODULE2.ADOBARANG['STOK']:=DATAMODULE2.ADOBARANG['STOK']-STRTOINT(DBEDIT7.Text);
DATAMODULE2.ADOBARANG.Post;
SHOWMESSAGE('DATA SUKSES DISIMPAN,STOK SUDAH BERUBAH');
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
DATAMODULE2.ADOBELI.Cancel;
end;

procedure TForm5.Button6Click(Sender: TObject);
begin
CLOSE;
end;

procedure TForm5.Button7Click(Sender: TObject);
begin
if datamodule2.ADOBELI.Locate('NOTA_BELI',EDIT1.TEXT,[])=FALSE then
BEGIN
  SHOWMESSAGE('DATA TIDAK DITEMUKAN');
  EDIT1.Clear;
  EDIT1.SetFocus;
end;
END;
procedure TForm5.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
if KEY=#13 then

DBEDIT10.TEXT:=INTTOSTR(STRTOINT(DBEDIT7.TEXT)*STRTOINT(DBEDIT8.TEXT));
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
BUTTON1.Enabled:=TRUE;
BUTTON5.Enabled:=FALSE;
BUTTON6.Enabled:=TRUE;
BUTTON2.Enabled:=FALSE;
BUTTON3.Enabled:=FALSE;
BUTTON4.Enabled:=FALSE;



         DBEDIT2.Enabled:=FALSE;
         DBLOOKUPCOMBOBOX1.Enabled:=FALSE;
             DBLOOKUPCOMBOBOX2.Enabled:=FALSE;
         DBEDIT4.Enabled:=FALSE;
          DBEDIT6.Enabled:=FALSE;
           DBEDIT7.Enabled:=FALSE;
            DBEDIT8.Enabled:=FALSE;

end;

end.
