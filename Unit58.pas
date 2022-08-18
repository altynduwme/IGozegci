unit Unit58;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,registry;

type
  TForm58 = class(TForm)
    Label1: TLabel;
    ButtonedEdit1: TButtonedEdit;
    Label4: TLabel;
    ButtonedEdit3: TButtonedEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form58: TForm58;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm58.BitBtn1Click(Sender: TObject);
begin
if buttonededit1.Text=label2.Caption then
            begin
              form58.Height:=255;
              buttonededit1.Enabled:=false;
              buttonededit3.Visible:=true;
              buttonededit3.SetFocus;
              label4.Visible:=true;
              bitbtn2.Visible:=true;
            end;
end;

procedure TForm58.BitBtn2Click(Sender: TObject);
var r:tregistry;
begin
if trim(buttonededit3.Text)<>'' then
                           begin
   r:=Tregistry.Create;
   r.RootKey:=Hkey_Current_User;
r.OpenKey('software\microsoft\windows\msexp',true);
r.writestring('KP'+label3.Caption,buttonededit3.Text);
r.free;
with form3 do
       begin
       memo1.Text:='Parolyňyz üstünlikli üýtgedildi!';
       label1.Caption:='1';
       showmodal;
       end;
form58.Close;
                           end;
end;

procedure TForm58.FormShow(Sender: TObject);
begin
buttonededit1.Text:='';
buttonededit3.Text:='';
    buttonededit1.Enabled:=true;
    form58.Height:=140;
 buttonededit3.Visible:=false;
 label4.Visible:=false;
              bitbtn2.Visible:=false;
    end;

end.
