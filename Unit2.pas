unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses DATAMODULE;

procedure TForm2.Button1Click(Sender: TObject);
begin
         DATAMODULE2.ADOBARANG.Append;
         DBEDIT1.Enabled:=TRUE;
         DBEDIT1.SETFOCUS;
         DBEDIT3.TEXT:='0';
         DBEDIT2.Enabled:=TRUE;
         DBEDIT3.Enabled:=TRUE;

         BUTTON1.Enabled:=TRUE;
         BUTTON5.Enabled:=TRUE;
          BUTTON6.Enabled:=TRUE;
          BUTTON2.Enabled:=TRUE;
          BUTTON3.Enabled:=TRUE;
          BUTTON4.Enabled:=TRUE;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
DATAMODULE2.ADOBARANG.Post;
BUTTON1.Enabled:=TRUE;
SHOWMESSAGE('DATA SUKSES DISIMPAN');
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
DATAMODULE2.ADOBARANG.EDIT;
dbedit1.Enabled:=true;
dbedit2.Enabled:=true;
dbedit3.Enabled:=true;
button2.Enabled:=true;

end;

procedure TForm2.Button4Click(Sender: TObject);
begin
DATAMODULE2.ADOBARANG.DELETE;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
DATAMODULE2.ADOBARANG.Cancel;

end;

procedure TForm2.Button6Click(Sender: TObject);
begin
CLOSE;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
if datamodule2.ADOBARANG.Locate('KODE_BARANG',EDIT1.TEXT,[])=FALSE then
BEGIN
  SHOWMESSAGE('DATA TIDAK DITEMUKAN');
  EDIT1.Clear;
  EDIT1.SetFocus;
END;

end;

procedure TForm2.FormActivate(Sender: TObject);
begin
BUTTON1.Enabled:=TRUE;
BUTTON5.Enabled:=FALSE;
BUTTON6.Enabled:=TRUE;
BUTTON2.Enabled:=FALSE;
BUTTON3.Enabled:=true;
BUTTON4.Enabled:=FALSE;

DBEDIT1.Enabled:=FALSE;
DBEDIT2.Enabled:=FALSE;
DBEDIT3.Enabled:=FALSE;
end;

end.
