unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Unit3;

type

  { TForm6 }

  TForm6 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button29: TButton;
    Button3: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button38: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Image1: TImage;
    Image3: TImage;
    Label1: TLabel;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private

  public
  var
     val1, val2, factval1: real;
     op: string;

  end;

var
  Form6: TForm6;

implementation

{$R *.lfm}


procedure TForm6.FormCreate(Sender: TObject);
begin

end;

procedure TForm6.Image1Click(Sender: TObject);
begin
   Form6.Hide;
   Form3.Show;
end;

procedure TForm6.Image2Click(Sender: TObject);
begin
  Form6.Edit1.Caption:='3.141592654';
end;

procedure TForm6.Image3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'0';
end;

procedure TForm6.Button20Click(Sender: TObject);
var
  i,s:integer;
begin
     val2:=StrToFloat(Edit1.Caption);
  if op = '+' then (Edit1.Text:=FloatToStr(val1+val2));
  if op = '-' then (Edit1.Text:=FloatToStr(val1-val2));
  if op = '*' then (Edit1.Text:=FloatToStr(val1*val2));
  if op = '/' then (Edit1.Text:=FloatToStr(val1/val2));
  if op = '^' then
  begin
   s := trunc(val1);
   if val2=0 then
   begin
     Form6.Edit1.Caption:='1';
   end
   else
   begin
      for i:=1 to trunc(val2) do
        begin
           if i >= 2 then
           begin
            val1 := val1*s;
           end;
        end;
      Form6.Edit1.Caption:=FloatToStr(val1);
   end;
  end;
  {if op = '~' then
  begin
   Form6.Edit1.Caption:=FloatToStr(puissance(val1));
  end;}
end;

procedure TForm6.Button21Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  Form6.Edit1.Caption:=FloatToStr(ln(val1));
end;

procedure TForm6.Button22Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  Form6.Edit1.Caption:=FloatToStr(sin(trunc(val1)));
end;

procedure TForm6.Button23Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  Form6.Edit1.Caption:=FloatToStr(Exp(val1));
end;

procedure TForm6.Button24Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  Form6.Edit1.Caption:=FloatToStr(cos(val1*3.141592654)/180);
end;

procedure TForm6.Button25Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  Form6.Edit1.Caption:=FloatToStr((sin(val1*3.141592654)/(180))/(cos(val1*3.141592654)/(180)));
end;

procedure TForm6.Button26Click(Sender: TObject);
begin
  Form6.Edit1.Caption:=Edit1.Caption+ '-';
end;

procedure TForm6.Button27Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  Form6.Edit1.Caption:=FloatToStr(sqr(val1));
end;

procedure TForm6.Button28Click(Sender: TObject);
var
  i:integer;
  fact:real;
begin
  val1 := StrtoFloat(Edit1.Caption);
  if val1 < 0 then
  begin
    Form6.Edit1.Caption:='ERROR';
  end
  else if val1=0 then
  begin
    Form6.Edit1.Caption:='1';
  end
  else
  if val1 > 0 then
  begin
    for i:=1 to trunc(val1-1) do
    begin
       fact:=(val1*i);
    end;
    Form6.Edit1.Caption:=FloatToStr(fact);
  end;
end;

procedure TForm6.Button29Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  Form6.Edit1.Caption:=FloatToStr((ln(val1))/(ln(10)));
end;

procedure TForm6.Button10Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'9';
end;

procedure TForm6.Button11Click(Sender: TObject);
var i,s:integer;
begin
  val1:=StrToFloat(Edit1.Text);
  s := 1;
  for i := 1 to trunc(val1) do
  begin
       s := s*10;
  end;
  Edit1.Caption:=inttostr(s);
end;

procedure TForm6.Button12Click(Sender: TObject);
begin
  Form6.Edit1.Caption:=Edit1.Caption+ '.';
end;

procedure TForm6.Button13Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  op:='*';
  Edit1.Text:='';
end;

procedure TForm6.Button14Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  op:='+';
  Edit1.Text:='';
end;

procedure TForm6.Button15Click(Sender: TObject);
begin
  Form6.Edit1.Caption:='EMPTY';
end;

procedure TForm6.Button16Click(Sender: TObject);
var
  eff : string;

begin
  eff:=Edit1.Text;
  delete(eff, length(eff),length(eff));
  Edit1.Text:= eff;

end;

procedure TForm6.Button17Click(Sender: TObject);
begin
  Edit1.Text:='';
end;

procedure TForm6.Button18Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  op:='/';
  Edit1.Text:='';
end;

procedure TForm6.Button19Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  op:='-';
  Edit1.Text:='';
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'1';
end;

procedure TForm6.Button30Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  op:='^';
  Edit1.Text:='';
end;

procedure TForm6.Button31Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  Form6.Edit1.Caption:=FloatToStr(val1*val1*val1);
end;

procedure TForm6.Button32Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  Form6.Edit1.Caption:=FloatToStr(sqrt(val1));
end;

procedure TForm6.Button33Click(Sender: TObject);
begin
  Form6.Edit1.Caption:='3.141592654';
end;

procedure TForm6.Button34Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  Form6.Edit1.Caption:=FloatToStr(val1/100);
end;

procedure TForm6.Button38Click(Sender: TObject);
begin
  val1:=StrToFloat(Edit1.Text);
  Form6.Edit1.Caption:=FloatToStr(1/val1);
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'2';
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'3';
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'4';
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'5';
end;

procedure TForm6.Button7Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'6';
end;

procedure TForm6.Button8Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'7';
end;

procedure TForm6.Button9Click(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text+'8';
end;

end.

