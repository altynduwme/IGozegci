unit Unit56;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,registry,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ImgList,pngimage;

type
  TForm56 = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    ButtonedEdit3: TButtonedEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    FontDialog1: TFontDialog;
    ListBox1: TListBox;
    ComboBox1: TComboBox;
    Label2: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ButtonedEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonedEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form56: TForm56;
        akt:boolean=false;
implementation

{$R *.dfm}

uses Unit3,Unit1, Unit58, unit57;

procedure TForm56.BitBtn1Click(Sender: TObject);
var r:tregistry;
i:integer;
tapdy:boolean;
ugr,jog:string;
begin
if combobox1.ItemIndex=-1 then   exit;

  r:=Tregistry.Create;
   r.RootKey:=Hkey_Current_User;
r.OpenKey('software\microsoft\windows\msexp',true);
tapdy:=false;
for i:=1 to 100 do
if r.ValueExists('KU'+inttostr(i)) then
if r.ReadString('KU'+inttostr(i))=combobox1.Items[combobox1.ItemIndex] then
if r.ValueExists('KPod'+inttostr(i)) then
   begin
   tapdy:=true;
   ugr:=r.ReadString('KPod'+inttostr(i));
   jog:=r.ReadString('KPodJ'+inttostr(i));
break;
   end;
  r.Free;
   if tapdy then
          begin
          form58.label1.Caption:=ugr;
          form58.label2.Caption:=jog;
          form58.label3.Caption:=inttostr(i);
          form58.showmodal;
          end else
          with form3 do
          begin
          memo1.Text:='Ugrukdyrma soragy ýok!';
          label1.Caption:='2';
          showmodal;
          end;

end;

procedure TForm56.BitBtn2Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm56.BitBtn3Click(Sender: TObject);
var i:integer;
r:tregistry;
tapdy:boolean;

function duzet(st:string):string;
begin
st[1]:=upcase(st[1]);
result:=st;
end;

begin
if combobox1.ItemIndex=-1 then exit;
       r:=Tregistry.Create;
   r.RootKey:=Hkey_Current_User;
r.OpenKey('software\microsoft\windows\msexp',true);
tapdy:=false;
for i:=1 to 100 do
if r.ValueExists('KU'+inttostr(i)) then
if r.ReadString('KU'+inttostr(i))=combobox1.Items[combobox1.ItemIndex] then
   begin
   tapdy:=true;
break;
   end;
            if tapdy then
      if buttonededit3.Text=r.ReadString('KP'+inttostr(i)) then
                   begin
                   form1.nobatcy.Caption:=combobox1.Items[combobox1.ItemIndex];
                   form1.nid.Caption:=inttostr(i);
                     form56.Hide;
                     form1.show;
                   end else begin
       with form3 do
       begin
       memo1.Text:='Parol nädogry!';
       label1.Caption:='2';
       showmodal;
       end;
          buttonededit3.SetFocus; end;
    r.Free;
end;

procedure TForm56.BitBtn4Click(Sender: TObject);
begin
form57.showmodAL;
end;

procedure TForm56.ButtonedEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=vk_down) or (key=vk_return) then  buttonededit3.SetFocus;

end;

procedure TForm56.ButtonedEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then bitbtn3click(bitbtn3);
if key=vk_up then combobox1.SetFocus;
end;

function bios:string;
var r:Tregistry;
st:string;

function isle(dd:string):string;
  var
    I: Integer;
    ss:string;
begin
ss:='';
  for I := 1 to length(dd) do
if dd[i] in ['0'..'9'] then  ss:=ss+dd[i];
isle:=ss;

end;

function rab(gh:string):string;
var uz,u:integer;
begin
  uz:=length(gh);
  for u := 1 to uz do
   if gh[u]='9' then gh[u]:='3' else gh[u]:=inttostr(strtoint(gh[u])+1)[1];
 result:=gh;
end;

begin
   r:=tregistry.Create;
   r.rootkey:=Hkey_Local_Machine;
   r.OpenKey('Hardware\description\System\BIOS',false);
      st:='';
      if r.ValueExists('BIOSMajorRelease') then
              begin
   st:=inttostr(r.ReadInteger('BIOSMajorRelease'));
   st:=st+inttostr(r.ReadInteger('BIOSMinorRelease'));
   st:=st+inttostr(r.ReadInteger('BIOSMajorRelease'));
   st:=st+isle(r.ReadString('BIOSReleaseDate'));
   end;
   if st='' then st:='55468579' else st:=rab(st);
     result:=st;
     r.CloseKey;
     r.Free;
end;


procedure TForm56.FormShow(Sender: TObject);
label 1;
var r:tregistry;
st:string;  n,i:integer;
f:textfile;
checkv:boolean;
begin
akt:=false;
//Checkv:= CrcKontrol(Application.ExeName);
buttonededit3.Text:='';
st:='';
r:=tregistry.Create;
   r.rootkey:=Hkey_Current_User;
   r.OpenKey('software\microsoft\windows\msexp',true);
   combobox1.Items.Clear;
   for i:=1 to 100 do
if r.ValueExists('KU'+inttostr(i)) then
combobox1.Items.Add(r.ReadString('KU'+inttostr(i))) else break;
   combobox1.ItemIndex:=combobox1.Items.Count-1;

   if r.ValueExists('ActT') then
   st:=r.ReadString('ActT');
   r.CloseKey;
   r.Free;
   //if st<>'5546'+bios+'8579' then
   if st<>'5546'+'8579' then
   begin
    r:=tregistry.Create;
   r.rootkey:=Hkey_Current_User;
   r.OpenKey('software\microsoft\windows\CurrentVersion\Explorer\SystemLib',true);
   if r.ValueExists('DisableAutoNavigates2') then
   begin
   n:=r.ReadInteger('DisableAutoNavigates2');
   listbox1.Items.Clear;
   listbox1.Items.LoadFromFile('C:\Windows\System\msiseq2.def');
   if listbox1.Items[0]<>inttostr(n) then
      begin
      r.CloseKey; r.Free;
      goto 1;
      end;
   r.WriteInteger('DisableAutoNavigates2',n+1);
   assignfile(f,'C:\Windows\System\msiseq2.def');
   rewrite(f); append(f); writeln(f,n+1); closefile(f);
   end else
   begin
     r.WriteInteger('DisableAutoNavigates2',1);
      assignfile(f,'C:\Windows\System\msiseq2.def');
   rewrite(f); append(f); writeln(f,1); closefile(f);
     n:=1;
   end;
   r.CloseKey;
   r.Free;
   akt:=true;
     if n<=100 then exit;
    1:with form3 do
       begin
       memo1.Lines.Clear;
       memo1.lines.add('Siz programmanyň aktiw däl režimini ulanýarsyňyz!');
       memo1.Lines.Add('Gaýrat edip, programmany aktiwasiýa ediň!');
memo1.lines.add('Goşmaça maglumat üçin: +99365891539');
       label1.Caption:='2';
       showmodal;
       end;
     application.Terminate;
   end else akt:=true;
end;

end.
