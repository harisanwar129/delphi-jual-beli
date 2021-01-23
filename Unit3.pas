unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button7: TButton;
    Button6: TButton;
    Button5: TButton;
    Button4: TButton;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses DATAMODULE;

procedure TForm3.Button1Click(Sender: TObject);
begin
     DATAMODULE2.ADOKONSUMEN.Append;
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

procedure TForm3.Button2Click(Sender: TObject);
begin
BUTTON1.Enabled:=TRUE;
DATAMODULE2.ADOKONSUMEN.Post;
SHOWMESSAGE('DATA SUKSES DISIMPAN');
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
DATAMODULE2.ADOKONSUMEN.EDIT;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
DATAMODULE2.ADOKONSUMEN.Delete;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
DATAMODULE2.ADOKONSUMEN.Cancel;

end;

procedure TForm3.Button6Click(Sender: TObject);
begin
CLOSE;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
if datamodule2.ADOKONSUMEN.Locate('KODE_KONSUMEN',EDIT1.TEXT,[])=FALSE then
BEGIN
  SHOWMESSAGE('DATA TIDAK DITEMUKAN');
  EDIT1.Clear;
  EDIT1.SetFocus;
end;
 END;
procedure TForm3.FormActivate(Sender: TObject);
begin
BUTTON1.Enabled:=TRUE;
BUTTON5.Enabled:=FALSE;
BUTTON6.Enabled:=TRUE;
BUTTON2.Enabled:=FALSE;
BUTTON3.Enabled:=FALSE;
BUTTON4.Enabled:=FALSE;

DBEDIT1.Enabled:=FALSE;
DBEDIT2.Enabled:=FALSE;
DBEDIT3.Enabled:=FALSE;
end;


end.
