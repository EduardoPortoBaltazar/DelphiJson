unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  System.Json,
  REST.Json,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Memo2: TMemo;
    Memo3: TMemo;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  LJson: TJSONValue;
  Lnome, LIdade: string;
  LPedidos: TJSONArray;
  I, LNumero: Integer;
begin
  LJson := TJSONObject.ParseJSONValue(Memo1.Lines.Text) as TJSONValue;

  LJson.TryGetValue<string>('nome',Lnome);
  LJson.TryGetValue<string>('idade', LIdade);

  Memo2.Lines.Add(Lnome);
  Memo2.Lines.Add(LIdade);

  LPedidos := LJson.GetValue<TJSONArray>('pedidos');

  for I := 0 to Pred(LPedidos.Count) do
    begin
      LNumero := LPedidos.Items[i].GetValue<Integer>('numero');
      Memo2.Lines.Add(IntToStr(LNumero));
    end;

  Memo3.Lines.Add(LJson.ToJSON);
  Memo3.Lines.Add('');
  Memo3.Lines.Add('Json formatado..');
  Memo3.Lines.Add(TJson.Format(LJson));
end;

end.
