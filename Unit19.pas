unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.Grids, Vcl.DBGrids;

type
  TForm19 = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Image1: TImage;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    LabeledEdit5: TLabeledEdit;
    netije: TLabel;
    netat: TLabel;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure LabeledEdit5KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm19.BitBtn1Click(Sender: TObject);
begin
if form1.ADOTable2.RecordCount>0 then
begin
netat.Caption:=form1.ADOTable2.Fields[1].AsString;
netije.Caption:=form1.ADOTable2.Fields[0].AsString
end else
netije.Caption:='NETIJESIZ';
end;

procedure TForm19.DBGrid1DblClick(Sender: TObject);
begin
bitbtn1.Click;
end;

procedure TForm19.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.ADOTable2.Close;
form1.ADOConnection3.Connected:=false;
end;

procedure TForm19.FormShow(Sender: TObject);
begin
form1.adoconnection3.Connected:=true;
                form1.adotable2.Open;
                form19.Left:=1;
form19.Top:=1;
form19.Height:=screen.Height-45;
dbgrid1.Height:=form19.Height-50;
 dbgrid1.columns[1].FieldName:='FAA';
     dbgrid1.columns[0].FieldName:='ID';
     datasource1.DataSet:=form1.ADOTable2;
dbgrid1.DataSource:=datasource1;

end;

procedure TForm19.LabeledEdit5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var tt,filtr:string;
begin
with form1 do
begin
tt:=trim(labelededit5.Text);
if tt<>'' then
       begin
adotable2.Filtered:=false;
filtr:='(FAA LIKE ''%'+tt+'%'')';
adotable2.Filter:=filtr;
adotable2.Filtered:=true;
       end else  adotable2.Filtered:=false;
end;
end;

end.
