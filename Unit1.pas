unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 const mash=25;
 var a,b:Integer;
 x0,y0:integer;
 x,y:real;
st: String;
i: Integer;begin            If (Edit1.Text = '') Or (Edit2.Text = '')
Then Begin MessageDlg('“ребуетс€ ввести все коэффициенты', mtError,
[mbOk],0);
Exit;
End;
//очистить рисунок////////////////////////////////////////////
   image1.Canvas.Pen.Color:=clWhite;
   image1.Canvas.Rectangle(0,0,ClientWidth,ClientHeight);
////считываем коэффициенты////////////////////////////////////
  a:=StrToInt (Edit1.Text);
  b:=StrToInt (Edit2.Text);
////коэф.центра///////////////////////////////////////////////
  x0:=image1.Width div 2;
  y0:=image1.Height div 2;
///////оси////////////////////////////////////////////////////
  image1.Canvas.Pen.Color:=clRed;
  image1.Canvas.Pen.Width:=1;
  image1.Canvas.MoveTo(x0,0);
  image1.Canvas.LineTo(x0,ClientHeight);
  Image1.Canvas.MoveTo(0,y0);
  Image1.Canvas.LineTo(ClientWidth,y0);
////график  параболы1//////////////////////////////////////////
 Image1.Canvas.Pen.Color:=clBlack;
 Image1.Canvas.Pen.Width:=1;
 //присваем х начальное значение
    x:=-10;
//////рисуем от начала координаты/////////////////////////////
 y:=x*x/a+b;
 Image1.Canvas.MoveTo(Trunc(x),Trunc(y));
//////////////////////////////////////////////////////////////
 repeat
 x:=x+0.1;
 y:=-1*(x*x)/a+b;
     Image1.Canvas.LineTo(Trunc(x*mash)+x0,Trunc(y*mash)+y0);
     until x>=10;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 ShowMessage('ѕрограмма дл€ изображени€ параболы по данному уровнению y=x*x/a+b');
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  #8,'0'..'9' :  ; // цифры и <Back Space>
'-':    // минус можно ввести только первым символом,
                // т.е. когда €чейка пуста€
                if Length(Edit1.Text) <> 0
                      then Key := Chr(0);
          else   // остальные символы запрещены
               key := Chr(0);

 end;
end;
procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  #8,'0'..'9' :  ; // цифры и <Back Space>
'-':    // минус можно ввести только первым символом,
                // т.е. когда €чейка пуста€
                if Length(Edit2.Text) <> 0
                      then Key := Chr(0);
          else   // остальные символы запрещены
               key := Chr(0);

    end;
end;
end.
