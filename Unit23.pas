unit Unit23;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls,dateutils, Data.DB, Data.Win.ADODB, Vcl.Samples.Spin;

type
  TForm23 = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;

implementation

{$R *.dfm}

uses Unit3, Unit24;

procedure TForm23.BitBtn1Click(Sender: TObject);
var
r:integer;
begin
  r:=form24.ValueListEditor1.Row;
  adotable1.Fields[0].AsString:=label4.Caption; // id
  adotable1.Fields[1].AsString:=datetostr(datetimepicker1.Date)+'-'+datetostr(datetimepicker2.Date); // dowur
  adotable1.Fields[2].AsString:=combobox1.Items[combobox1.ItemIndex]; // Sertlibelgi
  adotable1.Fields[3].AsInteger:=0; // minut
  adotable1.Post;
  adotable1.Close;
  adoconnection1.Connected:=false;
  if label5.Caption='1' then
  form24.ValueListEditor1.InsertRow(combobox1.Items[combobox1.ItemIndex],
  datetostr(datetimepicker1.Date)+'-'+datetostr(datetimepicker2.Date),true) else
  if label5.Caption<>'Z' then
  begin
  form24.ValueListEditor1.Cells[0,r]:=combobox1.Items[combobox1.ItemIndex];
  form24.ValueListEditor1.Cells[1,r]:=datetostr(datetimepicker1.Date)+'-'+datetostr(datetimepicker2.Date);
  end;

  if label5.Caption<>'Z' then
  begin
  with form3 do
  begin
    label1.Caption:='1';
    if label5.Caption='1' then
    memo1.Lines.Text:='Işgär üçin şertli belgi bellenen döwür üçin üstünlikli girizildi.'
    else memo1.Lines.Text:='Düzedildi!';
    showmodal;
  end;
  form23.Close;
  end;
end;

procedure TForm23.BitBtn2Click(Sender: TObject);
begin
form23.Close;
end;

procedure TForm23.FormClose(Sender: TObject; var Action: TCloseAction);
begin
adotable1.Close;
adoconnection1.Connected:=false;
end;

procedure TForm23.FormShow(Sender: TObject);
var nm:string;
r:integer;
begin
nm:=extractfilepath(application.ExeName)+'shertliBelgiler.mdb';
adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+
';Persist Security Info=False';
adoconnection1.LoginPrompt:=false;
  adoconnection1.Connected:=true;
  adotable1.Open;

  if label5.Caption='1' then adotable1.Append else
  begin
  adotable1.First;
  r:=form24.ValueListEditor1.Row;
  while (adotable1.Fields[0].AsString<>label4.Caption) or            //id
  (adotable1.Fields[1].AsString<>form24.ValueListEditor1.Cells[1,r]) or   //dowur
  (adotable1.Fields[2].AsString<>form24.ValueListEditor1.Cells[0,r]) do   //sbelgi
  adotable1.Next;
  adotable1.Edit;
  end;

if label5.Caption='2' then
begin
form23.Caption:='Düzetmek';
bitbtn1.Caption:='Düzet';
combobox1.SetFocus;
exit;
end;
form23.Caption:='Işgär üçin şertli belgi girizmek';
bitbtn1.Caption:='Giriz';
datetimepicker1.Date:=today;
datetimepicker2.Date:=today;
combobox1.SetFocus;
end;

end.
