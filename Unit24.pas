unit Unit24;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.ValEdit, Vcl.ExtCtrls;

type
  TForm24 = class(TForm)
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    ValueListEditor1: TValueListEditor;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn7: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    sid: TLabel;
    sat: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;

implementation

{$R *.dfm}

uses Unit23, Unit1, Unit3;

procedure TForm24.BitBtn1Click(Sender: TObject);
begin
with form23 do
begin
  label5.Caption:='1';
  label4.Caption:=sid.Caption;   // id
  panel1.Caption:=sat.Caption; //
  combobox1.ItemIndex:=0;
  show;
end;

end;

procedure TForm24.BitBtn5Click(Sender: TObject);
begin
bitbtn1.Click;
end;

procedure TForm24.BitBtn6Click(Sender: TObject);
label 1;
var filtr:string;
k,i,r:integer;
begin
with form3 do
begin
  label1.Caption:='3';
  memo1.Lines.Text:='Siz hakykatdan hem bu şertli belgini sanawdan aýyrmakçymy?';
  if showmodal=mryes then
      with form23 do
           begin
           adoconnection1.Connected:=true;
  adotable1.Open;
filtr:='(ID LIKE ''%'+form24.label1.Caption+'%'')';
adotable1.Filter:=filtr;
adotable1.Filtered:=true;
 adotable1.First;
 k:=adotable1.RecordCount;
 r:=valuelisteditor1.Row;
 for I := 1 to k do
   begin
   if adotable1.Fields[2].AsString=valuelisteditor1.Cells[0,r] then
   if adotable1.Fields[1].AsString=valuelisteditor1.Cells[1,r] then
             begin
             adotable1.Delete;
             goto 1;
             end;
   adotable1.Next;
   end;
  1: valuelisteditor1.DeleteRow(r);
  adotable1.Filtered:=false;
 adotable1.Close;
 adoconnection1.Connected:=false;
           end;
end;

end;

procedure TForm24.FormShow(Sender: TObject);
var nm,filtr:string;
k,i:integer;
begin
panel1.Caption:=sat.Caption;
valuelisteditor1.Strings.Clear;
nm:=extractfilepath(application.ExeName)+'shertliBelgiler.mdb';
with form23 do
begin
adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+
';Persist Security Info=False';
adoconnection1.LoginPrompt:=false;
  adoconnection1.Connected:=true;
  adotable1.Open;
filtr:='(ID LIKE ''%'+form24.label1.Caption+'%'')';
adotable1.Filter:=filtr;
adotable1.Filtered:=true;
 adotable1.First;
 k:=adotable1.RecordCount;
 for I := 1 to k do
   begin
   valuelisteditor1.InsertRow(adotable1.Fields[2].asstring,adotable1.Fields[1].asstring,true);
   adotable1.Next;
   end;
   adotable1.Filtered:=false;
 adotable1.Close;
 adoconnection1.Connected:=false;
end;

end;

procedure TForm24.BitBtn7Click(Sender: TObject);
label 1;
var filtr:string;
begin
with form3 do
begin
  label1.Caption:='3';
  memo1.Lines.Text:='Siz hakykatdan hem bu şertli belgiler sanawyny DOLULYGYNA arassalamakçymy?';
  if showmodal=mryes then
      with form23 do
           begin
           adoconnection1.Connected:=true;
  adotable1.Open;
filtr:='(ID LIKE ''%'+form24.label1.Caption+'%'')';
adotable1.Filter:=filtr;
adotable1.Filtered:=true;
 adotable1.First;
while adotable1.RecordCount>0 do
   adotable1.Delete;
   adotable1.Filtered:=false;
 adotable1.Close;
 adoconnection1.Connected:=false;
   end;
  valuelisteditor1.Strings.Clear;
end;

end;

procedure TForm24.BitBtn9Click(Sender: TObject);
var sb,dowur:string;
ps:integer;
begin
with form23 do
begin
  label5.Caption:='2';
  label4.Caption:=sid.Caption;   // id
  panel1.Caption:=sat.Caption;   // FAA
  ps:=valuelisteditor1.Row;
  sb:=valuelisteditor1.Cells[0,ps];
  dowur:=valuelisteditor1.Cells[1,ps];
  ps:=pos('-',dowur);
  datetimepicker1.Date:=strtodate(copy(dowur,1,ps-1));
  delete(dowur,1,ps);
  datetimepicker2.Date:=strtodate(dowur);
  combobox1.ItemIndex:=combobox1.Items.IndexOf(sb);
  show;
end;
end;

end.
