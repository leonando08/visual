unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
    dbgrd1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Unit5;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule5.Zkategori.Insert;
DataModule5.Zkategori.SQL.Clear;
DataModule5.Zkategori.SQL.Add('insert into kategori values(null,"'+edt1.Text+'")');
DataModule5.Zkategori.ExecSQL;

DataModule5.Zkategori.SQL.Clear;
DataModule5.Zkategori.SQL.Add('select * from kategori');
DataModule5.Zkategori.Open;
ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule5.Zkategori.Fields[1].AsString;
a := DataModule5.Zkategori.Fields[0].AsString;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin               //kode update
  with DataModule5.Zkategori do
  begin
     SQL.Clear;
     SQL.Add('update kategori set name="'+edt1.Text+'" where id="'+a+'"');
     ExecSQL;

     SQL.Clear;
     SQL.Add('select * from kategori');
     Open;

  end;
  ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin                   //kode delete
with DataModule5.Zkategori do
begin
     SQL.Clear;
     SQL.Add('delete from kategori where id="'+a+'"');
     ExecSQL;

     SQL.Clear;
     SQL.Add('select * from kategori');
     Open;
end;
   ShowMessage('Data Berhasil DiDelete!');

end;
end.
