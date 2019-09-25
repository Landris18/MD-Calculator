unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;
  a, b, c, delta, x1, x2: Real;
  a1, c1, b1 : String;

implementation

{$R *.lfm}

{ TForm5 }
Uses Unit3,Unit7;

procedure TForm5.LabeledEdit1Change(Sender: TObject);
begin

end;

procedure TForm5.Edit1Change(Sender: TObject);
begin

end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  Form5.Button2.Enabled:= False;
  Form5.Label5.Caption:='';
  Form5.Label6.Caption:='';

end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  Form5.Hide;
  Form3.Show;
end;

procedure TForm5.Button1Click(Sender: TObject);



begin
  a:=StrToFloat(Form5.Edit1.text);
  a1:= Form5.Edit1.text;
  b:=StrToFloat(Form5.Edit2.text);
  b1:= Form5.Edit2.text;
  c:=StrToFloat(Form5.Edit3.text);
  c1:= Form5.Edit3.text;
  if c >=0 then
     c1:= '+'+ c1;
  if b >0 then
     b1:= '+'+ b1;

  Form5.Label4.Caption:= 'f(x)='+a1+'x²'+b1+'x'+c1;
  Button2.Enabled:= True;



end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  Form5.Hide;
  Form7.Show;
  delta :=  b*b -4*a*c;
  if delta > 0 then
     begin
       x1:= (-b )- (sqrt(delta))/2;
       x2:= (-b )+ (sqrt(delta))/2;
       Form7.Label1.Caption:= 'x1=' +FloatToStr(x1);
       Form7.Label2.Caption:= 'x2=' +FloatToStr(x2);
     end
  else
      begin
        if delta < 0 then
           begin
                Form5.Label5.Caption:= 'NO SOLUTION';
                Form5.Label6.Caption:= ''
           end
        else
        begin
          x1:= (-b)/(2*a);
          Form7.Label1.Caption:= 'x=' +FloatToStr(x1);
        end;
      end;

end;

procedure TForm5.Image1Click(Sender: TObject);
begin

end;

procedure TForm5.Image2Click(Sender: TObject);
begin
  Form5.Hide;
  Form3.Show;
end;

procedure TForm5.Label4Click(Sender: TObject);
begin

end;

procedure TForm5.Label5Click(Sender: TObject);
begin

end;

end.

