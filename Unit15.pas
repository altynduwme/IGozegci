unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.ExtDlgs, Data.DB,
  Data.Win.ADODB;

type
  TForm15 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    LabeledEdit2: TLabeledEdit;
    GroupBox3: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    GroupBox4: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    LabeledEdit3: TLabeledEdit;
    GroupBox5: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CheckBox1: TCheckBox;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    CheckBox2: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    CheckBox3: TCheckBox;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    CheckBox4: TCheckBox;
    DateTimePicker7: TDateTimePicker;
    DateTimePicker8: TDateTimePicker;
    CheckBox5: TCheckBox;
    DateTimePicker9: TDateTimePicker;
    DateTimePicker10: TDateTimePicker;
    CheckBox6: TCheckBox;
    DateTimePicker11: TDateTimePicker;
    DateTimePicker12: TDateTimePicker;
    CheckBox7: TCheckBox;
    DateTimePicker13: TDateTimePicker;
    DateTimePicker14: TDateTimePicker;
    GroupBox6: TGroupBox;
    LabeledEdit4: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    LabeledEdit5: TLabeledEdit;
    BitBtn5: TBitBtn;
    opd: TOpenPictureDialog;
    ADOConnection2: TADOConnection;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    ADOTable1: TADOTable;
    ADOConnection3: TADOConnection;
    ComboBox1: TComboBox;
    Label17: TLabel;
    Image3: TImage;
    Label1: TLabel;
    Image4: TImage;
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure LabeledEdit4Enter(Sender: TObject);
    procedure LabeledEdit4Exit(Sender: TObject);
    procedure LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;
         suratly:boolean;
         ID:string;
implementation

{$R *.dfm}

uses Unit4, Unit7, Unit3, Unit1, Unit16;

procedure TForm15.BitBtn1Click(Sender: TObject);
 var rs,k:integer;
   f:textfile;

   st,nm:string;
          s : TFileStream;
  c : TADOCommand;
                 bmp:tbitmap;
  H: integer;

   function dogry:integer;
   begin
     if trim(labelededit2.Text)='' then begin result:=0; exit; end;
     if trim(labelededit1.Text)='' then begin result:=1; exit; end;
     if trim(labelededit3.Text)='' then begin result:=2; exit; end;
     result:=-1;
   end;

   procedure bmpgecir(fil:string);
var bmap:Tbitmap;
         begin
         bmap:=Tbitmap.Create;
           Bmap.Width := image1.Width;
      Bmap.Height := image1.Height;
 with Bmap do
begin
  TransparentMode := tmAuto;
  Canvas.CopyMode := cmSrcCopy;
  Canvas.FillRect(Rect(0, 0, Width, Height));
  Canvas.StretchDraw(Rect(0, 0, Width, Height), image1.Picture.Graphic);
end;
      Bmap.SaveToFile(fil);
      bmap.free;
         end;

         function yasa:string;
         var bw,sw,rs:string;
         begin
          rs:='';
          if checkbox1.Checked then
                   begin
                   bw:=timetostr(datetimepicker2.Time);
                   sw:=timetostr(datetimepicker3.Time);
                   rs:=rs+'1>'+bw+'-'+sw+';';
                   end;
            if checkbox2.Checked then
                   begin
                   bw:=timetostr(datetimepicker4.Time);
                   sw:=timetostr(datetimepicker1.Time);
                   rs:=rs+'2>'+bw+'-'+sw+';';
                   end;
              if checkbox3.Checked then
                   begin
                   bw:=timetostr(datetimepicker6.Time);
                   sw:=timetostr(datetimepicker5.Time);
                   rs:=rs+'3>'+bw+'-'+sw+';';
                   end;
                if checkbox4.Checked then
                   begin
                   bw:=timetostr(datetimepicker8.Time);
                   sw:=timetostr(datetimepicker7.Time);
                   rs:=rs+'4>'+bw+'-'+sw+';';
                   end;
                  if checkbox5.Checked then
                   begin
                   bw:=timetostr(datetimepicker9.Time);
                   sw:=timetostr(datetimepicker10.Time);
                   rs:=rs+'5>'+bw+'-'+sw+';';
                   end;
                  if checkbox6.Checked then
                   begin
                   bw:=timetostr(datetimepicker11.Time);
                   sw:=timetostr(datetimepicker12.Time);
                   rs:=rs+'6>'+bw+'-'+sw+';';
                   end;
                    if checkbox7.Checked then
                   begin
                   bw:=timetostr(datetimepicker13.Time);
                   sw:=timetostr(datetimepicker14.Time);
                   rs:=rs+'7>'+bw+'-'+sw+';';
                   end;
                   result:=rs;
         end;

begin
rs:=dogry;
if rs=-1 then
         begin
form7.Show;
 nm:=extractfilepath(application.ExeName)+'Baza.mdb';
 adoconnection3.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
 adoconnection3.LoginPrompt:=false;
with form1 do
begin
     adoconnection3.Connected:=true;
                adotable2.Open;
                adotable2.First;
                k:=adotable2.RecordCount;
                for H := 1 to k do
                       begin
                       if adotable2.Fields[0].AsString=ID then  break;
                       adotable2.Next;
                       end;
                adotable2.Edit;
                adotable2.Fields[0].AsString:=labelededit2.text;  //ID
                adotable2.Fields[1].AsString:=labelededit1.text; //faaa
                adotable2.Fields[2].AsString:=combobox1.Items[combobox1.ItemIndex];
                adotable2.Fields[3].AsInteger:=0;  //Gadaganlyk
bmpgecir('buf.bmp');
   image1.Picture.SaveToFile(extractfilepath(application.exename)+'buf.bmp');
   s := TFileStream.Create( extractfilepath(application.exename)+'buf.bmp', fmOpenRead );
  TBlobField(ADOtable2.FieldByName('Surat')).LoadfromStream(s);
  s.Free;
 deletefile(extractfilepath(application.exename)+'buf.bmp');
                adotable2.Fields[5].AsString:=labelededit3.text;  //Wezipesi
                adotable2.Fields[6].AsString:=yasa;
                adotable2.Post;
                adotable2.Close;
                 adoconnection3.Connected:=false;
                     end;
form7.Close;
with form3 do
begin
  memo1.Lines.Text:='Şahs maglumatnamasy üstünlikli üýtgedildi!';
  label1.Caption:='1';
  showmodal;
end;
 form15.formshow(form15);
         end else
         begin
 case rs of
 0:begin st:='Şahs ID belgisi okadylmady!'; labelededit2.SetFocus; end;
 1:begin st:='Şahs hakyndaky maglumatlar doly girizilmedi!'; labelededit1.SetFocus; end;
 2:begin st:='Şahs hakyndaky maglumatlar doly girizilmedi!'; labelededit3.SetFocus; end;
 end;
   with form3 do
begin
  memo1.Lines.Text:=st;
  label1.Caption:='2';
  showmodal;
end;

         end;

end;

procedure TForm15.BitBtn2Click(Sender: TObject);
begin
if opd.Execute then
             begin
               image1.Picture.LoadFromFile(opd.FileName);
               suratly:=true;
               bitbtn3.Enabled:=true;
             end;

end;

procedure TForm15.BitBtn3Click(Sender: TObject);
begin
image1.Picture:=image2.Picture;
bitbtn3.Enabled:=false;

end;

procedure TForm15.BitBtn4Click(Sender: TObject);
var nm:string;
k,h:integer;
tap,t:boolean;

procedure tersiniyasa(st:string);
label 1;
var kr,gun:integer;
bw,aw:string;
begin
 1:kr:=pos('>',st);
 if kr>0 then
      begin
       gun:=strtoint(st[1]);
       delete(st,1,2);
       kr:=pos('-',st);
       bw:=copy(st,1,kr-1);
       delete(st,1,kr);
       kr:=pos(';',st);
       aw:=copy(st,1,kr-1);
       delete(st,1,kr);
       case gun of
       1:begin checkbox1.Checked:=true;
       checkbox1click(checkbox1);
       datetimepicker2.Time:=strtotime(bw);
       datetimepicker3.Time:=strtotime(aw);
       end;
       2:begin checkbox2.Checked:=true;
       checkbox1click(checkbox2);
       datetimepicker4.Time:=strtotime(bw);
       datetimepicker1.Time:=strtotime(aw);
       end;
       3:begin checkbox3.Checked:=true;
       checkbox1click(checkbox3);
       datetimepicker6.Time:=strtotime(bw);
       datetimepicker5.Time:=strtotime(aw);
       end;
       4:begin checkbox4.Checked:=true;
       checkbox1click(checkbox4);
       datetimepicker8.Time:=strtotime(bw);
       datetimepicker7.Time:=strtotime(aw);
       end;
       5:begin checkbox5.Checked:=true;
       checkbox1click(checkbox5);
       datetimepicker9.Time:=strtotime(bw);
       datetimepicker10.Time:=strtotime(aw);
       end;
       6:begin checkbox6.Checked:=true;
       checkbox1click(checkbox6);
       datetimepicker11.Time:=strtotime(bw);
       datetimepicker12.Time:=strtotime(aw);
       end;
       7:begin checkbox7.Checked:=true;
       checkbox1click(checkbox7);
       datetimepicker13.Time:=strtotime(bw);
       datetimepicker14.Time:=strtotime(aw);
       end;
       end;
       goto 1;
      end;
end;

begin
form7.Show;
tap:=false;
with form1 do
begin
     adoconnection3.Connected:=true;
                adotable2.Open;
                adotable2.First;
                k:=adotable2.RecordCount;
                for H := 1 to k do
                       begin
                       if adotable2.Fields[0].AsString=labelededit4.Text then
                       begin
                       tap:=true;
                       ID:=labelededit4.Text;
                        break;
                       end;
                       adotable2.Next;
                       end;
end;
  if tap then
         begin
         with form1 do
         begin
          form15.labelededit1.Text:=adotable2.Fields[1].AsString;
          form15.labelededit3.Text:=adotable2.Fields[5].AsString;
          form15.ComboBox1.ItemIndex:=form15.ComboBox1.Items.IndexOf(adotable2.Fields[2].AsString);
          tersiniyasa(adotable2.Fields[6].AsString);
            adotable2.close;
          adoconnection3.Connected:=false;
         end;

           labelededit2.Text:=id;
           t:=true;
labelededit1.Enabled:=t;
labelededit2.Enabled:=t;
labelededit3.Enabled:=t;
checkbox1.enabled:=t;
checkbox2.enabled:=t;
checkbox3.enabled:=t;
checkbox4.enabled:=t;
checkbox5.enabled:=t;
checkbox6.enabled:=t;
checkbox7.enabled:=t;
bitbtn1.Enabled:=t;
bitbtn2.Enabled:=t;
labelededit1.SetFocus;
     form7.Close;
         end else
         begin
         with form3 do
         begin
         memo1.Text:='Beýle şahs barada maglumatlar binýadynda hasap tapylmady!';
         label1.Caption:='2';
         showmodal;
         end;
         form7.Close;
         end;
end;

procedure TForm15.BitBtn5Click(Sender: TObject);
label 1;
var tt,filtr:string;
      t:boolean;
procedure tersiniyasa(st:string);
label 1;
var kr,gun:integer;
bw,aw:string;
begin
 1:kr:=pos('>',st);
 if kr>0 then
      begin
       gun:=strtoint(st[1]);
       delete(st,1,2);
       kr:=pos('-',st);
       bw:=copy(st,1,kr-1);
       delete(st,1,kr);
       kr:=pos(';',st);
       aw:=copy(st,1,kr-1);
       delete(st,1,kr);
       case gun of
       1:begin checkbox1.Checked:=true;
       checkbox1click(checkbox1);
       datetimepicker2.Time:=strtotime(bw);
       datetimepicker3.Time:=strtotime(aw);
       end;
       2:begin checkbox2.Checked:=true;
       checkbox1click(checkbox2);
       datetimepicker4.Time:=strtotime(bw);
       datetimepicker1.Time:=strtotime(aw);
       end;
       3:begin checkbox3.Checked:=true;
       checkbox1click(checkbox3);
       datetimepicker6.Time:=strtotime(bw);
       datetimepicker5.Time:=strtotime(aw);
       end;
       4:begin checkbox4.Checked:=true;
       checkbox1click(checkbox4);
       datetimepicker8.Time:=strtotime(bw);
       datetimepicker7.Time:=strtotime(aw);
       end;
       5:begin checkbox5.Checked:=true;
       checkbox1click(checkbox5);
       datetimepicker9.Time:=strtotime(bw);
       datetimepicker10.Time:=strtotime(aw);
       end;
       6:begin checkbox6.Checked:=true;
       checkbox1click(checkbox6);
       datetimepicker11.Time:=strtotime(bw);
       datetimepicker12.Time:=strtotime(aw);
       end;
       7:begin checkbox7.Checked:=true;
       checkbox1click(checkbox7);
       datetimepicker13.Time:=strtotime(bw);
       datetimepicker14.Time:=strtotime(aw);
       end;
       end;
       goto 1;
      end;
end;


begin
with form1 do
begin

tt:=trim(labelededit5.Text);
//if tt<>'' then
       begin
       adoconnection3.Connected:=true;
                adotable2.Open;
                adotable2.Filtered:=false;
  if tt<>'' then
           begin
filtr:='(FAA LIKE ''%'+tt+'%'')';
adotable2.Filter:=filtr;
adotable2.Filtered:=true;
           end;
adotable2.First;
if adotable2.RecordCount>0 then form16.showmodal else
if adotable2.RecordCount=0 then
                       begin
                        with form3 do
                        begin
memo1.Text:='Beýle şahs barada maglumatlar binýadynda hasap tapylmady.';
                        label1.Caption:='2';
                        showmodal;
                        end;
                        goto 1;
                       end;
id:=adotable2.Fields[0].AsString;
  labelededit1.Text:=adotable2.Fields[1].AsString;
          labelededit3.Text:=adotable2.Fields[5].AsString;
form15.ComboBox1.ItemIndex:=form15.ComboBox1.Items.IndexOf(adotable2.Fields[2].AsString);
          tersiniyasa(adotable2.Fields[6].AsString);
                    labelededit2.Text:=id;
           t:=true;
           form1.adotable2.filtered:=false;
labelededit1.Enabled:=t;
labelededit2.Enabled:=t;
labelededit3.Enabled:=t;
checkbox1.enabled:=t;
checkbox2.enabled:=t;
checkbox3.enabled:=t;
checkbox4.enabled:=t;
checkbox5.enabled:=t;
checkbox6.enabled:=t;
checkbox7.enabled:=t;
bitbtn1.Enabled:=t;
bitbtn2.Enabled:=t;
label1.Enabled:=t;
labelededit1.SetFocus;
 1:adotable2.Close;
       adoconnection3.Connected:=false;
       end;

end;
end;

procedure TForm15.CheckBox1Click(Sender: TObject);
var t:boolean;
begin
t:=(sender as Tcheckbox).Checked;
 if (sender as Tcheckbox).Tag=1 then
              begin
         datetimepicker2.visible:=t;
         datetimepicker3.visible:=t;
         label2.visible:=t;
         label3.visible:=t;
              end else
   if (sender as Tcheckbox).Tag=2 then
              begin
         datetimepicker4.visible:=t;
         datetimepicker1.visible:=t;
         label4.visible:=t;
         label5.visible:=t;
              end else
 if (sender as Tcheckbox).Tag=3 then
              begin
         datetimepicker5.visible:=t;
         datetimepicker6.visible:=t;
         label6.visible:=t;
         label7.visible:=t;
              end else
 if (sender as Tcheckbox).Tag=4 then
              begin
         datetimepicker7.visible:=t;
         datetimepicker8.visible:=t;
         label8.visible:=t;
         label9.visible:=t;
              end else
 if (sender as Tcheckbox).Tag=5 then
              begin
         datetimepicker9.visible:=t;
         datetimepicker10.visible:=t;
         label10.visible:=t;
         label11.visible:=t;
              end else
 if (sender as Tcheckbox).Tag=6 then
              begin
         datetimepicker11.visible:=t;
         datetimepicker12.visible:=t;
         label12.visible:=t;
         label13.visible:=t;
              end else
       if (sender as Tcheckbox).Tag=7 then
              begin
         datetimepicker14.visible:=t;
         datetimepicker13.visible:=t;
         label14.visible:=t;
         label15.visible:=t;
              end;

end;

procedure TForm15.FormShow(Sender: TObject);
var t:boolean;
ibw,isw,st:string;
ibw2,isw2:TTime;
k:integer;
begin
form15.Top:=0;
form15.Left:=1;
labelededit4.SetFocus;
t:=false;
labelededit1.Enabled:=t;
labelededit2.Enabled:=t;
labelededit3.Enabled:=t;
checkbox1.Checked:=t;
checkbox2.Checked:=t;
checkbox3.Checked:=t;
checkbox4.Checked:=t;
checkbox5.Checked:=t;
checkbox6.Checked:=t;
checkbox7.Checked:=t;
checkbox1.enabled:=t;
checkbox2.enabled:=t;
checkbox3.enabled:=t;
checkbox4.enabled:=t;
checkbox5.enabled:=t;
checkbox6.enabled:=t;
checkbox7.enabled:=t;
bitbtn1.Enabled:=t;
bitbtn2.Enabled:=t;

image1.Picture:=image2.Picture;
labelededit1.Text:='';
labelededit3.Text:='';
bitbtn3.Enabled:=false;
suratly:=false;
st:=form4.label16.Caption;
k:=pos('-',st);
ibw:=copy(st,1,k-1);
delete(st,1,k);
isw:=st;
ibw2:=strtotime(ibw);
isw2:=strtotime(isw);
datetimepicker2.Time:=ibw2;
datetimepicker4.Time:=ibw2;
datetimepicker6.Time:=ibw2;
datetimepicker8.Time:=ibw2;
datetimepicker9.Time:=ibw2;
datetimepicker11.Time:=ibw2;
datetimepicker13.Time:=ibw2;

datetimepicker1.Time:=isw2;
datetimepicker3.Time:=isw2;
datetimepicker5.Time:=isw2;
datetimepicker7.Time:=isw2;
datetimepicker10.Time:=isw2;
datetimepicker12.Time:=isw2;
datetimepicker14.Time:=isw2;

checkbox1click(checkbox1);
checkbox1click(checkbox2);
checkbox1click(checkbox3);
checkbox1click(checkbox4);
checkbox1click(checkbox5);
checkbox1click(checkbox6);
checkbox1click(checkbox7);
end;

function makeid:string;
label 1;
var
k,r,i:integer;
begin
with form1 do
begin
     adoconnection3.Connected:=true;
                adotable2.Open;
                k:=101;
                r:=adotable2.RecordCount;
                1:adotable2.First;
                for I := 1 to r do
                  begin
                  if strtoint(adotable2.Fields[0].AsString)=k then
                         begin
                           inc(k);
                           goto 1;
                         end;
                  adotable2.Next;
                  end;
                adotable2.Close;
                adoconnection3.Connected:=false;
end;
result:=inttostr(k);
end;

procedure TForm15.Image3Click(Sender: TObject);
begin
labelededit2.Text:=makeid;
end;

procedure TForm15.LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=vk_return) or (key=vk_down) then  labelededit3.SetFocus else
if key=vk_up then labelededit2.SetFocus;

end;

procedure TForm15.LabeledEdit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=vk_return) or (key=vk_down) then  labelededit1.SetFocus;
end;

procedure TForm15.LabeledEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_up then labelededit1.SetFocus else
if key=vk_return then bitbtn1.Click;

end;

procedure TForm15.LabeledEdit4Enter(Sender: TObject);
begin
(sender as Tlabelededit).Color:=cllime;
//(sender as Tlabelededit).Text:='';
end;

procedure TForm15.LabeledEdit4Exit(Sender: TObject);
begin
if trim((sender as Tlabelededit).Text)='' then
(sender as Tlabelededit).Color:=clred;
end;

procedure TForm15.LabeledEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then bitbtn4.Click;
end;

procedure TForm15.LabeledEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then  bitbtn5.Click;

end;

end.
