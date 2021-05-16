unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  f:file of char;
  t:string;
  count:integer;

implementation

{$R *.lfm}

{ TForm1 }
procedure TForm1.Button1Click(Sender: TObject);
var
  i:integer;
begin
  AssignFile(f,'file\file.txt');
  count:=Memo1.Lines.Count;
  for i:= 0 to Memo1.Lines.Count-1 do begin
    t:=t+Memo1.Lines[i];
    Write
  end;
end;
procedure nexa(var t:string);
    var
      t1:string;
      i:integer;
    begin
        ReWrite(f);
      for i:=0 to count-1 do begin
        case(t[i+1]) of
          '0','1','2','3','4','5','6','7','8':t1:=IntToStr(StrToInt(t[i+1])+1);
          '9':t1:='0';
          else continue;
        end;
        t[i+1]:=t1[1];
        Write(f,t1[1]);
      end;
    end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  nexa(t);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
      CloseFile(f);
end;

end.

