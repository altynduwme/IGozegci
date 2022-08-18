unit Unit22;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Samples.Spin,dateutils;

type
  TForm22 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    RadioButton1: TRadioButton;
    GroupBox1: TGroupBox;
    RadioButton2: TRadioButton;
    SpinEdit1: TSpinEdit;
    Label13: TLabel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Label2: TLabel;
    procedure BitBtn11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;
   sene:string;
implementation

{$R *.dfm}

uses Unit211, Unit3;

procedure TForm22.BitBtn10Click(Sender: TObject);
begin
if label2.Caption='1' then form211.ADOTable1.Append else form211.ADOTable1.Edit;
form211.ADOTable1.Fields[0].AsString:=labelededit1.Text;
form211.ADOTable1.Fields[1].AsString:=inttostr(spinedit1.Value)+'. '+
combobox1.Items[combobox1.ItemIndex];
if radiobutton1.Checked then
form211.ADOTable1.Fields[2].AsString:=radiobutton1.Caption else
form211.ADOTable1.Fields[2].AsString:='Diňe '+sene+'. ýyla degişli baýramçylyk.';
form211.ADOTable1.Post;
with form3 do
begin
  label1.Caption:='1';
  if form22.label2.Caption='1' then
  memo1.Lines.Text:='Goşuldy!' else memo1.Lines.Text:='Düzedildi!';
  showmodal;
end;
 if form22.label2.Caption='2' then
 begin
 form22.Close; exit;
 end;
labelededit1.Text:='';
labelededit1.SetFocus;
end;

procedure TForm22.BitBtn11Click(Sender: TObject);
begin
form22.Close;
end;

procedure TForm22.FormShow(Sender: TObject);
begin
if label2.Caption='1' then
begin
labelededit1.Text:='';
radiobutton1.Checked:=true;
  sene:=datetostr(today);
  spinedit1.Value:=strtoint(copy(sene,1,2));
  delete(Sene,1,3);
  combobox1.ItemIndex:=strtoint(copy(sene,1,2))+1;
  delete(sene,1,3);
  bitbtn10.Caption:='Goş';
end else
begin
sene:=datetostr(today);
  delete(Sene,1,6);
bitbtn10.Caption:='Düzet';
end;
  labelededit1.SetFocus;
end;

end.
