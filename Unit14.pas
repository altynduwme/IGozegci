unit Unit14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Samples.Spin;

type
  TForm14 = class(TForm)
    GroupBox1: TGroupBox;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    SpinEdit1: TSpinEdit;
    Label4: TLabel;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    SpinEdit2: TSpinEdit;
    GroupBox5: TGroupBox;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

uses Unit1, Unit4, Unit3;

function elip(sd:string):string;
label 1;
var q,g:integer;
b1:string; c:char;
begin    sd:=sd+' ';
g:=0;
1:case g of
0:c:='ç';
1:c:='ý';
2:c:='ü';
3:c:='ň';
4:c:='ö';
5:c:='ä';
6:c:='ž';
7:c:='ş';
8:c:='Ç';
9:c:='Ý';
10:c:='Ü';
11:c:='Ň';
12:c:='Ö';
13:c:='Ä';
14:c:='Ž';
15:c:='Ş';
end;

     q:=pos(c,sd);
     inc(g);
   while (q<>0) and (sd[q+1]<>'%') do
          begin
            b1:=copy(sd,1,q);
            delete(sd,1,q);
            case b1[q] of
            'ä':b1[q]:='a';
            'ň':b1[q]:='n';
            'ü':b1[q]:='u';
            'ç':b1[q]:='c';
            'ý':b1[q]:='y';
            'ž':b1[q]:='z';
            'ş':b1[q]:='s';
            'ö':b1[q]:='o';
            'Ä':b1[q]:='A';
            'Ň':b1[q]:='N';
            'Ü':b1[q]:='U';
            'Ç':b1[q]:='C';
            'Ý':b1[q]:='Y';
            'Ž':b1[q]:='Z';
            'Ş':b1[q]:='S';
            'Ö':b1[q]:='O';
            end;
            b1:=b1+'%';
            sd:=b1+sd;
            q:=pos(c,sd);
          end;
 if g<16 then goto 1;
         delete(sd,length(sd),1);
         result:=sd;
end;


procedure TForm14.BitBtn1Click(Sender: TObject);
var f:textfile;
begin
 assignfile(f,'szl.ini');
                 rewrite(f);
                 append(f);
                 writeln(f,elip(edit1.Text));
writeln(f,timetostr(datetimepicker2.Time)+'-'+timetostr(datetimepicker3.Time));
writeln(f,inttostr(spinedit1.Value));
writeln(f,inttostr(spinedit2.Value));
form1.SpinEdit1.Value:=spinedit1.Value;
form1.SpinEdit2.Value:=spinedit2.Value;
writeln(f,booltostr(checkbox1.Checked));
form1.gol.Checked:=checkbox1.Checked;
form1.gwez.Caption:=edit2.Text;
form1.gat.caption:=edit3.Text;
writeln(f,elip(edit2.Text));
writeln(f,elip(edit3.Text));
                 closefile(f);
                 form1.kateg.Caption:=edit1.Text;
form4.label16.caption:=timetostr(datetimepicker2.Time)+'-'+timetostr(datetimepicker3.Time);
with form3 do
begin
memo1.Lines.Text:='Ýatda saklandy!';
label1.Caption:='1';
showmodal;
end;
form14.Close;
end;

procedure TForm14.BitBtn2Click(Sender: TObject);
begin
form14.Close;
end;

procedure TForm14.CheckBox1Click(Sender: TObject);
var c:boolean;
begin
c:=checkbox1.Checked;
edit2.Enabled:=c;
edit3.Enabled:=c;
label6.Enabled:=c;
label7.Enabled:=c;
end;

function ters(sd:string):string;
var t:integer;
begin
t:=pos('%',sd);
while t>1 do
     begin
       delete(sd,t,1);  dec(t);
       case sd[t] of
       'a':sd[t]:='ä';
       'c':sd[t]:='ç';
       'u':sd[t]:='ü';
       'y':sd[t]:='ý';
       's':sd[t]:='ş';
       'z':sd[t]:='ž';
       'o':sd[t]:='ö';
       'n':sd[t]:='ň';
       'A':sd[t]:='Ä';
       'C':sd[t]:='Ç';
       'U':sd[t]:='Ü';
       'Y':sd[t]:='Ý';
       'S':sd[t]:='Ş';
       'Z':sd[t]:='Ž';
       'O':sd[t]:='Ö';
       end;
       t:=pos('%',sd);
     end;
     result:=sd;
end;


procedure TForm14.FormCreate(Sender: TObject);
var f:textfile;
st:string;
begin
if not fileexists('szl.ini') then
               begin
                 assignfile(f,'szl.ini');
                 rewrite(f);
                 append(f);
                 writeln(f,'');
                 form1.kateg.Caption:='Näbelli bölüm';
                 writeln(f,'8:30:00-15:00:00');
                 writeln(f,'0');
                 writeln(f,'0');
                 writeln(f,booltostr(false));
                 writeln(f,'');
                 writeln(f,'');
                 form4.label16.caption:='8:30:00-15:00:00';
                 closefile(f);
               end else
               begin
                assignfile(f,'szl.ini');
                reset(f);
                 readln(f,st);
                 form1.kateg.Caption:=ters(st);
                 readln(f,st);
                 form4.label16.caption:=st;
                 readln(f,st);
                 form1.SpinEdit1.Value:=strtoint(st);
                 readln(f,st);
                 form1.SpinEdit2.Value:=strtoint(st);
                 readln(f,st);
                 form1.gol.Checked:=strtobool(st);
                 readln(f,st);
                 form1.gwez.caption:=ters(st);
                 readln(f,st);
                 form1.gat.Caption:=ters(st);
                 closefile(f);
               end;
end;

procedure TForm14.FormShow(Sender: TObject);
var f:textfile;
st:string;
k:integer;
begin
   assignfile(f,'szl.ini');
   reset(f);
   readln(f,st);
   edit1.Text:=ters(st);
   readln(f,st);
    k:=pos('-',st);
    datetimepicker2.Time:=strtotime(copy(st,1,k-1));
    delete(st,1,k);
    datetimepicker3.Time:=strtotime(st);
    readln(f,st);
    spinedit1.Value:=strtoint(st);
    readln(f,st);
    spinedit2.Value:=strtoint(st);
    readln(f,st);
    checkbox1.Checked:=strtobool(st);
    readln(f,st);
    edit2.Text:=ters(st);
    readln(f,st);
    edit3.Text:=ters(st);
    closefile(f);
    CheckBox1Click(nil);
end;

end.
