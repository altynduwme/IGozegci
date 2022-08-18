unit Unit26;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TForm26 = class(TForm)
    dt1: TDateTimePicker;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;
   faylady,konewagt,blms,gorc:string;
implementation

{$R *.dfm}

uses Unit25, Unit3, Unit1;

function sekunt(wgt:ttime):integer;
var sw:string;
sag,mn,po:integer;
begin
 sw:=timetostr(wgt);
 po:=pos(':',sw);
 sag:=strtoint(copy(sw,1,po-1));
  delete(sw,1,po);
  po:=pos(':',sw);
 mn:=strtoint(copy(sw,1,po-1));
  delete(sw,1,po);
  result:=sag*3600+mn*60;//+strtoint(sw)
end;

procedure TForm26.BitBtn1Click(Sender: TObject);
label 1;
var k,i,ps:integer;
dzt,boz:boolean;
ws:string;
begin
dzt:=false;
with form25  do
begin
lb1.Items.LoadFromFile(faylady);
k:=lb1.Items.Count-1;
for I := 0 to k do
  if pos('>'+konewagt+'>',lb1.items[i])<>0 then
    begin   boz:=false;
    if gorc[1]='G' then
     if sekunt(strtotime(blms)+strtotime(inttostr(form1.spinedit1.Value div 60)+
     ':'+inttostr(form1.spinedit1.Value mod 60)+':00'))>=sekunt(dt1.Time) then boz:=true;

    if gorc[1]<>'G' then
    if sekunt(strtotime(blms)+strtotime(inttostr(form1.spinedit2.Value div 60)+
     ':'+inttostr(form1.spinedit2.Value mod 60)+':00'))<=sekunt(dt1.Time) then boz:=true;

      if  boz then
            begin
              lb1.Items.Delete(i); goto 1;
            end;
    ws:=lb1.Items[i];
    ps:=pos('>'+konewagt,ws)+1;
    delete(ws,ps,length(konewagt));
    insert(timetostr(dt1.Time),ws,ps);
    lb1.Items[i]:=ws;
    1:lb1.Items.SaveToFile(faylady);
     dzt:=true;
     if boz then   break;
    end;
  if dzt then
  begin
        with form3 do
        begin
        memo1.Lines.Text:='Düzedildi:'+#13+'Ozalky wagt: '+konewagt+#13+
        'Täze wagt: '+timetostr(dt1.Time);
        label1.Caption:='1';
        showmodal;
        end;
  form25.BitBtn1Click(nil);
  form26.Close;
  end else
      with form3 do
        begin
        memo1.Lines.Text:='Sebäbi anyklanylmadyk bir näsazlyk ýüze çykdy.'+#13+
        'Amal ýerine ýetirilmedi.';
        label1.Caption:='2';
        showmodal;
        end;
end;

end;

procedure TForm26.BitBtn2Click(Sender: TObject);
begin
form26.Close;
end;

procedure TForm26.FormShow(Sender: TObject);
begin
dt1.Time:=strtotime(konewagt);
end;

end.
