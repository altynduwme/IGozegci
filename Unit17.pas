unit Unit17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm17 = class(TForm)
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LabeledEdit1: TLabeledEdit;
    DBGrid1: TDBGrid;
    ListBox1: TListBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ListBox2: TListBox;
    BitBtn6: TBitBtn;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ComboBox1: TComboBox;
    Label17: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure LabeledEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

uses Unit3, Unit18;

procedure TForm17.BitBtn1Click(Sender: TObject);
begin
if LISTbox1.Items.Count>0 then
                         begin
form18.show;
form17.Close;
        end else
         with form3 do
        begin
        memo1.Lines.Text:='Heniz şahs sanawy boş!';
        label1.Caption:='2';
        showmodal;
        end;

end;

procedure TForm17.BitBtn2Click(Sender: TObject);
begin
form17.Close;
end;

procedure TForm17.BitBtn3Click(Sender: TObject);
var st:string;
ind:integer;
begin
st:=adotable1.Fields[1].AsString;
ind:=listbox1.Items.IndexOf(st);
if ind=-1 then
begin
   listbox1.Items.Add(st);
   listbox2.Items.Add(adotable1.Fields[0].AsString); // id
   end else
   listbox1.ItemIndex:=ind;

end;

procedure TForm17.BitBtn4Click(Sender: TObject);
var ind:integer;
begin
ind:=listbox1.ItemIndex;
if ind<>-1 then
          begin
           with form3 do
           begin
             memo1.Lines.Text:='Siz hakykatdan hem bu şahsy sanawdan aýyrmak isleýärsiňizmi?';
             label1.Caption:='3';
           end;
          if form3.ShowModal=mryes then
                  begin
                    listbox1.Items.Delete(ind);
                    listbox2.Items.Delete(ind);
                  end;
          end;

end;

procedure TForm17.BitBtn5Click(Sender: TObject);
begin
with form3 do
begin
memo1.Lines.Text:='Siz hakykatdan hem bu sanawy dolulygyna arassalamak isleýärsiňizmi?';
label1.Caption:='3';
end;
if form3.ShowModal=mryes then
                  begin
                    listbox1.Items.clear;
                    listbox2.Items.clear;
                  end;

end;

procedure TForm17.BitBtn6Click(Sender: TObject);
var st:string;
ind,k,i:integer;
begin
with form3 do
begin
  memo1.Lines.Text:='Siz hakykatdan hem, şahslaryň ählisini saýlamak isleýarsiňizmi?';
  label1.Caption:='3';
end;
if form3.ShowModal=mryes then
                        begin
listbox1.Items.Clear;
listbox2.Items.Clear;
  adotable1.First;
   k:=adotable1.RecordCount;
   for I := 1 to k do
                  begin
st:=adotable1.Fields[1].AsString;
   listbox1.Items.Add(st);
   listbox2.Items.Add(adotable1.Fields[0].AsString); // id
   adotable1.Next;
                  end;
                  adotable1.First;
                        end;

end;

procedure TForm17.ComboBox1CloseUp(Sender: TObject);
var filtr,tt:string;
begin
labelededit1.Text:='';
adotable1.Filtered:=false;
if combobox1.ItemIndex<>0 then
         begin
         tt:=trim(combobox1.Items[combobox1.ItemIndex]);
adotable1.Filtered:=false;
filtr:='(kat LIKE ''%'+tt+'%'')';
adotable1.Filter:=filtr;
adotable1.Filtered:=true;
         end;
end;

procedure TForm17.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then bitbtn3.Click;
end;

procedure TForm17.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
adotable1.Close;
adoconnection1.Connected:=false;
end;

procedure TForm17.FormShow(Sender: TObject);
var nm:string;
begin
form17.Left:=1;
form17.Top:=1;
form17.Height:=screen.Height-45;
dbgrid1.Height:=form17.Height-250;
listbox1.Height:=dbgrid1.Height+75;
bitbtn1.Top:=dbgrid1.Height+dbgrid1.Top+20;
bitbtn2.Top:=bitbtn1.Top;
      listbox1.Items.Clear; //ady
      listbox2.Items.Clear; // id
  nm:=extractfilepath(application.ExeName)+'Baza.mdb';
 adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection1.LoginPrompt:=false;
          adoconnection1.Connected:=true;
          adotable1.Open;
          datasource1.DataSet:=adotable1;
dbgrid1.DataSource:=datasource1;
dbgrid1.Columns[0].FieldName:='FAA';

end;

procedure TForm17.LabeledEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var t,filtr:string;
begin
adotable1.Filtered:=false;
t:=trim(labelededit1.Text);
if t<>'' then
       begin
filtr:='(FAA LIKE ''%'+t+'%'')';
adotable1.Filter:=filtr;
adotable1.Filtered:=true;
dbgrid1.DataSource:=datasource1;
       end;

end;

end.
