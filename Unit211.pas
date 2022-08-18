unit Unit211;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,dateutils;

type
  TForm211 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form211: TForm211;

implementation

{$R *.dfm}

uses Unit3, Unit22;

procedure TForm211.BitBtn1Click(Sender: TObject);
label 1;
var k,i,yyl,jem:integer;
st:string;
begin
 with form3 do
begin
  label1.Caption:='3';
  memo1.Lines.Text:='Siz hakykatdan hem bu amaly ýerine ýetirmekçimi?';
  if showmodal=mryes then
        begin
        yyl:=yearof(today); jem:=0;
       1: k:=adotable1.RecordCount;
        adotable1.First;
        for I := 1 to k do
        begin
        st:=adotable1.Fields[2].AsString;
        if pos('Diňe',st)<>0 then
        if strtoint(copy(st,6,4))<yyl then
            begin       inc(jem);
             adotable1.Delete; goto 1;
            end;
        adotable1.Next;
        end;
        label1.Caption:='1';
   memo1.Lines.Text:=inttostr(yyl)+'-ýyldan ozalky ýyllara degişli bolan jemi '+
   inttostr(jem)+' sany baýramçylyk maglumaty bozuldy!';
        showmodal;
        end;
end;
end;

procedure TForm211.BitBtn5Click(Sender: TObject);
begin
form22.Label2.Caption:='1';
form22.show;
end;

procedure TForm211.BitBtn6Click(Sender: TObject);
begin
with form3 do
begin
  label1.Caption:='3';
  memo1.Lines.Text:='Siz hakykatdan hem bu baýramçylygy sanawdan aýyrmakçymy?';
  if showmodal=mryes then
           adotable1.Delete;
end;
end;

procedure TForm211.BitBtn7Click(Sender: TObject);
begin
with form3 do
begin
  label1.Caption:='3';
  memo1.Lines.Text:='Siz hakykatdan hem baýramçylyk sanawyny DOLULYGYNA arasslamakçymy?';
  if showmodal=mryes then
         while adotable1.RecordCount>0 do
           adotable1.Delete;
end;
end;

procedure TForm211.BitBtn9Click(Sender: TObject);
var sen:string;
ps:integer;
begin
form22.Label2.Caption:='2';
form22.LabeledEdit1.Text:=adotable1.Fields[0].AsString;
  sen:=adotable1.Fields[1].AsString;
    ps:=pos('.',sen);
    form22.SpinEdit1.Value:=strtoint(copy(sen,1,ps-1));
    delete(sen,1,ps+1);
    form22.ComboBox1.ItemIndex:=form22.ComboBox1.Items.IndexOf(sen);
    if pos('Her',adotable1.Fields[2].asstring)<>0 then
    form22.RadioButton1.Checked:=true else
    form22.RadioButton2.Checked:=true;
    form22.Show;
end;

procedure TForm211.FormClose(Sender: TObject; var Action: TCloseAction);
begin
adotable1.Close;
adoconnection1.Connected:=false;
end;

procedure TForm211.FormShow(Sender: TObject);
var nm:string;
begin
nm:=extractfilepath(application.ExeName)+'Bayramcylyklar.mdb';
adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+
';Persist Security Info=False';
adoconnection1.LoginPrompt:=false;
  adoconnection1.Connected:=true;
          adotable1.Open;
          adotable1.First;
          dbgrid1.Columns[0].FieldName:='Ady';
dbgrid1.Columns[1].FieldName:='Gun';
dbgrid1.Columns[2].FieldName:='Gornush';
          datasource1.DataSet:=adotable1;
          dbgrid1.DataSource:=datasource1;
end;

end.
