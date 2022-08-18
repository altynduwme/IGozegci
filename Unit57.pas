unit Unit57;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,registry;

type
  TForm57 = class(TForm)
    Label1: TLabel;
    ButtonedEdit1: TButtonedEdit;
    Label4: TLabel;
    ButtonedEdit3: TButtonedEdit;
    Label2: TLabel;
    ButtonedEdit2: TButtonedEdit;
    Label3: TLabel;
    ButtonedEdit4: TButtonedEdit;
    Label5: TLabel;
    ButtonedEdit5: TButtonedEdit;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form57: TForm57;

implementation

{$R *.dfm}

uses Unit3, Unit56;

procedure TForm57.BitBtn1Click(Sender: TObject);
begin
form57.Close;
end;

function dogry:boolean;
begin
  if (form57.buttonededit1.text='') or (form57.buttonededit2.text='') or (form57.buttonededit3.text='') then
  begin dogry:=false; exit; end;
if (form57.buttonededit2.text<>form57.buttonededit3.text) then
  begin dogry:=false; exit; end;
  dogry:=true;
end;

procedure TForm57.BitBtn4Click(Sender: TObject);
var r:Tregistry;
sonky:integer;
begin
if dogry then
        begin
   r:=Tregistry.Create;
   r.RootKey:=Hkey_Current_User;
r.OpenKey('software\microsoft\windows\msexp',true);
sonky:=1;
while r.ValueExists('KU'+inttostr(sonky)) do inc(sonky);

r.WriteString('KU'+inttostr(sonky),buttonededit1.Text);
r.WriteString('KP'+inttostr(sonky),buttonededit2.Text);
if (trim(buttonededit4.Text)<>'') and (trim(buttonededit5.Text)<>'') then
r.WriteString('KPod'+inttostr(sonky),buttonededit4.Text);
r.WriteString('KPodJ'+inttostr(sonky),buttonededit5.Text);
r.CloseKey;
r.Free;
form56.ComboBox1.Items.Add(buttonededit1.Text);
form56.ComboBox1.ItemIndex:=form56.ComboBox1.Items.Count-1;
 with form3 do
       begin
       memo1.Text:='Täze nobatçy hasaby açyldy';
       label1.Caption:='1';
       showmodal;
       end;
form57.Close;
        end else
         with form3 do
       begin
       memo1.Text:='Nädogry maglumat girizilen.';
       label1.Caption:='2';
       showmodal;
       end;

end;

procedure TForm57.FormShow(Sender: TObject);
begin
buttonededit1.Text:='';
buttonededit2.Text:='';
buttonededit3.Text:='';
buttonededit4.Text:='';
buttonededit5.Text:='';
end;

end.
