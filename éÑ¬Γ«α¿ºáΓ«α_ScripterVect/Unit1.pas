unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,GifImage, ExtCtrls, StdCtrls, Buttons,inifiles, Menus, ComCtrls;

type
  TSV = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    cb: TComboBox;
    Label1: TLabel;
    od: TOpenDialog;
    Button2: TButton;
    negat: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Memo1: TMemo;
    Button3: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    StatusBar: TStatusBar;
    poy: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SV: TSV;

implementation

var pensize:integer=3; var ldv:boolean=false;
ldvx,ldvy:integer;

{$R *.dfm}

procedure TSV.BitBtn1Click(Sender: TObject);
begin
od.Filter:='Точечный рисунок BMP|*.bmp';
if od.Execute then
begin
image1.Picture.Bitmap.LoadFromFile(od.FileName);
statusbar.SimpleText:=format('Изображение: %dx%d',[image1.picture.Bitmap.Width,image1.picture.Bitmap.Height]);
bitbtn2.Enabled:=true;
button1.Enabled:=true;
end;
end;

procedure TSV.BitBtn2Click(Sender: TObject);
begin
image1.Picture.Bitmap:= ReduceColors(image1.Picture.Bitmap,rmMonochrome,TDitherMode(cb.itemindex),1,0);
bitbtn2.Enabled:=false;
button2.Enabled:=true;
end;

procedure TSV.Button1Click(Sender: TObject);
begin
image1.Picture.Bitmap.PixelFormat:=pf1bit;
image1.Picture.Bitmap.SaveToFile(extractfilepath(application.ExeName)+changefileext(extractfilename(od.FileName),'')+'_mono.bmp');
end;

procedure TSV.Button2Click(Sender: TObject);
var sx,sy:integer;x,y:integer;cmd:TStrings;fs:TFormatSettings;
var pw:extended; var ng:boolean;
var movx,movy,drawx:extended;movel,drawl:boolean;
begin
button2.Enabled:=false;
GetLocaleFormatSettings(0,fs);
fs.DecimalSeparator:='.';
pw:=strtofloatdef(edit6.Text,0.2);
ng:=negat.Checked;
sx:=image1.Picture.Bitmap.Width;
sy:=image1.Picture.Bitmap.Height;
cmd:=TStringList.create;
cmd.Append('METRIC');
cmd.Append('POSABS 0,0');
cmd.Append('CURRENT '+inttostr(strtointdef(edit3.Text,18)));
cmd.Append('QSMODE '+inttostr(strtointdef(edit4.Text,2)));
cmd.Append('SPEED '+inttostr(strtointdef(edit2.Text,30)));
cmd.Append('LINEWIDTH 0');
cmd.Append('WAVEFORM 0');
cmd.Append(Format('MOV %.4f, %.4f',[strtofloat(edit1.Text),strtofloat(edit5.Text)],fs));
movel:=false;
drawl:=false;
drawx:=0;
movx:=0;
movx:=0;

if poy.Checked then begin

for x:=0 to sx-1 do begin

for y:=0 to sy-1 do begin


if ng then
begin
if image1.Picture.Bitmap.Canvas.Pixels[x,y]=clWhite then
image1.Picture.Bitmap.Canvas.Pixels[x,y]:=clBlack else
image1.Picture.Bitmap.Canvas.Pixels[x,y]:=clWhite;
end;

///
case image1.Picture.Bitmap.Canvas.Pixels[x,y] of

clWhite: begin

if drawl then begin
cmd.Append(Format('DW 0, %.4f',[drawx],fs));
drawl:=false;
drawx:=0;
end;


movx:=movx+(pw*1);
movel:=true;
end;

clBlack:
begin

if movel then
begin
cmd.Append(Format('MOV %.4f, %.4f',[movy,movx],fs));
movx:=0;
movy:=0;
end;
movel:=false;

drawx:=drawx+(pw*1);
drawl:=true;

end;
end;

if y=(sy-1) then begin

if drawl then begin
cmd.Append(Format('DW 0, %.4f',[drawx],fs));
drawl:=false;
drawx:=0;
end;

if (movel) and (not drawl) then
begin
movx:=movx-(pw*sy);
movy:=movy+(pw*1);
end else
begin
cmd.Append(Format('MOV %.4f, %.4f',[pw*1, -(pw*sy)],fs));
end;



end;

///

end;

end;



end /// По Y

 else begin

for y:=0 to sy-1 do begin

for x:=0 to sx-1 do begin


if ng then
begin
if image1.Picture.Bitmap.Canvas.Pixels[x,y]=clWhite then
image1.Picture.Bitmap.Canvas.Pixels[x,y]:=clBlack else
image1.Picture.Bitmap.Canvas.Pixels[x,y]:=clWhite;
end;

///
case image1.Picture.Bitmap.Canvas.Pixels[x,y] of

clWhite: begin

if drawl then begin
cmd.Append(Format('DW %.4f, 0',[drawx],fs));
drawl:=false;
drawx:=0;
end;


movx:=movx+(pw*1);
movel:=true;
end;

clBlack:
begin

if movel then
begin
cmd.Append(Format('MOV %.4f, %.4f',[movx,movy],fs));
movx:=0;
movy:=0;
end;
movel:=false;

drawx:=drawx+(pw*1);
drawl:=true;

end;
end;

if x=(sx-1) then begin

if drawl then begin
cmd.Append(Format('DW %.4f, 0',[drawx],fs));
drawl:=false;
drawx:=0;
end;

if (movel) and (not drawl) then
begin
movx:=movx-(pw*sx);
movy:=movy+(pw*1);
end else
begin
cmd.Append(Format('MOV %.4f, %.4f',[-(pw*sx),pw*1],fs));
end;



end;

///

end;

end;

 end; /////// По х


cmd.SaveToFile(extractfilepath(application.ExeName)+changefileext(extractfilename(od.FileName),'')+'.cmd');
cmd.free;
button2.Enabled:=true;
end;

procedure TSV.Button3Click(Sender: TObject);
begin
memo1.Lines.Clear;
memo1.Lines.Add(format('Исходное %d x %d px',[image1.Picture.Bitmap.Width,image1.Picture.Bitmap.Height]));
memo1.Lines.Add(format('Размеры %f x %f мм',[image1.Picture.Bitmap.Width*strtofloat(edit6.Text),image1.Picture.Bitmap.Height*strtofloat(edit6.Text)]));
end;

procedure TSV.FormClose(Sender: TObject; var Action: TCloseAction);
var ini:Tinifile;
begin
ini:=TIniFile.Create(application.ExeName+'.dat');
ini.WriteString('@',edit1.Name,edit1.Text);
ini.WriteString('@',edit5.Name,edit5.Text);
ini.WriteString('@',edit2.Name,edit2.Text);
ini.WriteString('@',edit6.Name,edit6.Text);
ini.WriteString('@',edit3.Name,edit3.Text);
ini.WriteString('@',edit4.Name,edit4.Text);
ini.WriteInteger('@',cb.Name,cb.ItemIndex);
ini.WriteBool('@',negat.Name,negat.Checked);
ini.WriteBool('@',poy.Name,poy.Checked);
ini.Free;
end;

procedure TSV.FormActivate(Sender: TObject);
var ini:Tinifile;
begin
ini:=TIniFile.Create(application.ExeName+'.dat');
edit1.Text:=ini.ReadString('@',edit1.Name,edit1.Text);
edit5.Text:=ini.ReadString('@',edit5.Name,edit5.Text);
edit2.Text:=ini.ReadString('@',edit2.Name,edit2.Text);
edit6.Text:=ini.ReadString('@',edit6.Name,edit6.Text);
edit3.Text:=ini.ReadString('@',edit3.Name,edit3.Text);
edit4.Text:=ini.ReadString('@',edit4.Name,edit4.Text);
cb.ItemIndex:=ini.ReadInteger('@',cb.Name,cb.ItemIndex);
negat.Checked:=ini.ReadBool('@',negat.Name,negat.Checked);
poy.Checked:=ini.ReadBool('@',poy.Name,poy.Checked);
ini.Free;
onactivate:=nil;
end;

procedure TSV.N2Click(Sender: TObject);
begin
close;
end;

procedure TSV.N4Click(Sender: TObject);
begin
MessageBox(handle,'(с) 2007 Александр Мясников','ScripterVect',mb_ICONERROR);
end;

procedure TSV.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if (ssCtrl in Shift) AND (Button=mbLeft) then
begin
if ldv=false then begin
ldv:=true;
ldvx:=x;
ldvy:=y;
image1.Canvas.MoveTo(x,y);
end else begin
image1.Canvas.Pen.Color:=clWhite;
image1.Canvas.Brush.Color:=clWhite;
image1.Canvas.LineTo(x,y);

end;
statusbar.SimpleText:=format('%d:%d',[x,y]);
end;





if (ssalt in Shift) AND (Button=mbLeft) then
begin
image1.Canvas.Pen.Color:=clBlack;
image1.Canvas.Brush.Color:=clBlack;
image1.Canvas.MoveTo(x,y);
image1.Canvas.Ellipse(x+pensize,y+pensize,x,y);
statusbar.SimpleText:=format('%d:%d',[x,y]);
end;



if (ssshift in Shift) AND (Button=mbLeft) then
begin
image1.Canvas.Pen.Color:=clWhite;
image1.Canvas.Brush.Color:=clWhite;
image1.Canvas.MoveTo(x,y);
image1.Canvas.Ellipse(x+pensize,y+pensize,x,y);
statusbar.SimpleText:=format('%d:%d',[x,y]);
end;

if (ssshift in Shift) AND (Button=mbRight) then
begin
pensize:=strtointdef(inputbox('Размер точки','Диаметр, px',inttostr(pensize)),pensize);
end;



end;

end.
