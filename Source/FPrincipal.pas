unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  System.Json,
  REST.Json,
  Vcl.ExtCtrls,
  DataSet.Serialize, VclTee.TeeGDIPlus, VCLTee.TeeProcs, VCLTee.TeeDraw3D,
  Vcl.ComCtrls, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Memo2: TMemo;
    Memo3: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    dsEmploy: TDataSource;
    cdsEmploy: TClientDataSet;
    Panel3: TPanel;
    Button1: TButton;
    mmAdicionaCdsJson: TMemo;
    mmLerCds: TMemo;
    Button2: TButton;
    Button3: TButton;
    TabSheet3: TTabSheet;
    mmArrayNaMao: TMemo;
    Panel4: TPanel;
    Button4: TButton;
    mmArrayManual: TMemo;
    TabSheet4: TTabSheet;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Panel5: TPanel;
    Button5: TButton;
    Memo4: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
var
  LJson: TJSONValue;
begin
  mmLerCds.Clear;
  mmLerCds.Lines.Add(cdsEmploy.ToJSONObject.ToString);

  LJson :=  TJSONObject.ParseJSONValue(mmLerCds.Lines.Text) as TJSONValue;
  try
    mmAdicionaCdsJson.Lines.Add(TJson.Format(LJson));
  finally
    LJson.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  mmLerCds.Clear;
  mmAdicionaCdsJson.Clear;
  mmAdicionaCdsJson.Lines.Add(TJson.Format(cdsEmploy.ToJSONArray));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  mmAdicionaCdsJson.Clear;
  mmLerCds.Clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  LJArrayMaster: TJSONArray;
  LJPedido: TJSONObject;
  LJItens: TJSONArray;
  LJItenDet: TJSONObject;
begin

  LJArrayMaster := TJSONArray.Create;
  //////////////////////////////////////////////
  LJPedido := TJSONObject.Create;
  LJPedido.AddPair('id', '666');
  LJPedido.AddPair('valor', TJSONNumber.Create(100));

     LJItens := TJSONArray.Create;
     LJItenDet := TJSONObject.Create;
        LJItenDet
          .AddPair('id_item', '1245')
          .AddPair('valor_item',TJSONNumber.Create(12));

  LJItens.AddElement(LJItenDet);
  LJPedido.AddPair('itens', LJItens);
  LJArrayMaster.AddElement(LJPedido);
  ///////////////////////////////////////////////////

  LJPedido := TJSONObject.Create;
  LJPedido.AddPair('id', '777');
  LJPedido.AddPair('valor', TJSONNumber.Create(50));

   LJItens := TJSONArray.Create;
   LJItenDet := TJSONObject.Create;
     LJItenDet := TJSONObject.Create;
        LJItenDet
          .AddPair('id_item', '6969')
          .AddPair('valor_item',TJSONNumber.Create(69));


   LJItens.AddElement(LJItenDet);
   LJPedido.AddPair('itens', LJItens);
   LJArrayMaster.AddElement(LJPedido);

  mmArrayManual.Clear;
  mmArrayManual.Lines.Add(TJson.Format(LJArrayMaster));

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  LEmpresa: TJSONValue;
begin
  RESTRequest1.Params.ParameterByName('cnpj').Value := '33000167066129';
  RESTRequest1.Execute;

  LEmpresa := TJSONValue.ParseJSONValue(RESTResponse1.Content.Trim);

  Memo4.Lines.Add(LEmpresa.Format);

end;

end.
