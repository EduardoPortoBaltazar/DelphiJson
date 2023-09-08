object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 428
  ClientWidth = 1076
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1070
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 1066
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ler'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 47
    Width = 1076
    Height = 381
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Meno'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1068
        Height = 353
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 0
        object Memo1: TMemo
          Left = 1
          Top = 1
          Width = 327
          Height = 351
          Align = alLeft
          Lines.Strings = (
            '{'
            '  "nome": "Eduardo Porto",'
            '  "idade": "45",'
            '  "pedidos":'
            '  ['
            '  {'
            '  "numero": 1,'
            '   "valor": 18.1,'
            '   "data": "2023-09-02T"'
            '  },'
            '  {'
            '  "numero": 2,'
            '   "valor": 15,'
            '   "data": "2023-09-02T"'
            '  }  '
            '  ]'
            '}')
          TabOrder = 0
        end
        object Memo2: TMemo
          Left = 363
          Top = 1
          Width = 352
          Height = 351
          Align = alRight
          Lines.Strings = (
            'Memo2')
          TabOrder = 1
        end
        object Memo3: TMemo
          Left = 715
          Top = 1
          Width = 352
          Height = 351
          Align = alRight
          Lines.Strings = (
            'Memo3')
          TabOrder = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cds Data set Serialize'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 320
        Height = 347
        Align = alLeft
        DataSource = dsEmploy
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 329
        Top = 3
        Width = 161
        Height = 347
        Align = alLeft
        TabOrder = 1
        object Button1: TButton
          Left = 24
          Top = 40
          Width = 105
          Height = 25
          Caption = 'Ler Cds Object'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 24
          Top = 71
          Width = 105
          Height = 25
          Caption = 'Ler Cds Array'
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 24
          Top = 102
          Width = 105
          Height = 25
          Caption = 'Clear'
          TabOrder = 2
          OnClick = Button3Click
        end
      end
      object mmAdicionaCdsJson: TMemo
        AlignWithMargins = True
        Left = 751
        Top = 3
        Width = 249
        Height = 347
        Align = alLeft
        ImeName = 'mmDataSetSerialize'
        Lines.Strings = (
          '')
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object mmLerCds: TMemo
        AlignWithMargins = True
        Left = 496
        Top = 3
        Width = 249
        Height = 347
        Align = alLeft
        ImeName = 'mmLerCds'
        Lines.Strings = (
          '')
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Array Manual '
      ImageIndex = 2
      object mmArrayNaMao: TMemo
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 249
        Height = 347
        Align = alLeft
        ImeName = 'mmLerCds'
        Lines.Strings = (
          '['
          '{'
          '"id": 123,'
          '"valor_total": 1000,'
          '"itens": ['
          #9'{'
          #9#9'"id_item": 1,'
          #9#9'"valor": 10'
          #9'},'
          #9'{'
          #9#9'"id_item": 1,'
          #9#9'"valor": 10'
          #9'}'
          ']'
          '},'
          '{'
          '"id": 123,'
          '"valor_total": 1000,'
          '"itens": ['
          #9'{'
          #9#9'"id_item": 1,'
          #9#9'"valor": 10'
          #9'},'
          #9'{'
          #9#9'"id_item": 1,'
          #9#9'"valor": 10'
          #9'}'
          ']'
          '}'
          ']')
        TabOrder = 0
        ExplicitHeight = 346
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 258
        Top = 3
        Width = 185
        Height = 347
        Align = alLeft
        TabOrder = 1
        ExplicitHeight = 346
        object Button4: TButton
          Left = 1
          Top = 1
          Width = 183
          Height = 25
          Align = alTop
          Caption = 'Gerar Array Manual'
          TabOrder = 0
          OnClick = Button4Click
        end
      end
      object mmArrayManual: TMemo
        AlignWithMargins = True
        Left = 449
        Top = 3
        Width = 336
        Height = 347
        Align = alLeft
        TabOrder = 2
        ExplicitHeight = 346
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Consumindo WS'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 289
        Height = 353
        Align = alLeft
        TabOrder = 0
        object Button5: TButton
          Left = 7
          Top = 24
          Width = 146
          Height = 25
          Caption = 'Buscar Requisicao'
          TabOrder = 0
          OnClick = Button5Click
        end
      end
      object Memo4: TMemo
        AlignWithMargins = True
        Left = 292
        Top = 3
        Width = 373
        Height = 347
        Align = alLeft
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
  end
  object dsEmploy: TDataSource
    DataSet = cdsEmploy
    Left = 424
    Top = 288
  end
  object cdsEmploy: TClientDataSet
    PersistDataPacket.Data = {
      8B0700009619E0BD010000001800000006002A00000003000000DD0005456D70
      4E6F0400010010000000084C6173744E616D6501004900100001000557494454
      480200020014000946697273744E616D65010049001000010005574944544802
      0002000F000850686F6E65457874010049001000010005574944544802000200
      040008486972654461746508000800100000000653616C617279080004001000
      000003000D44454641554C545F4F524445520400820001000000010000000B50
      52494D4152595F4B4559040082000100000001000000044C4349440200010009
      0400000002000000064E656C736F6E07526F626572746F033235300000EA4F4F
      87CC42000000000088E3400000000400000005596F756E670542727563650332
      33330000EA4F4F87CC42000000008019EB4000000005000000074C616D626572
      74034B696D02323200001A4FB687CC4200000000006AD8400000000800000007
      4A6F686E736F6E064C65736C696503343130000086A74B88CC42000000008076
      D8400000000900000006466F72657374045068696C033232390000AE8D6A88CC
      42000000008076D8400000000B00000006576573746F6E054B2E204A2E023334
      000018A82E8BCC42000000009E41E0400000000C000000034C65650554657272
      69033235360000C8723A8CCC42000000008022E6400000000E0000000448616C
      6C0753746577617274033232370000E4FE918CCC420000000054D6E040000000
      0F00000005596F756E67094B6174686572696E65033233310000B0BEAB8CCC42
      0000000000D4D740000000140000000C50617061646F706F756C6F7305436872
      69730338383700003875058BCC42000000008076D84000000018000000064669
      736865720450657465033838380000DC7C938DCC42000000000080D640000000
      1C0000000642656E6E657403416E6E013500006020018FCC429A99999959D6E0
      400000001D00000008446520536F757A6105526F6765720332383800006EE62C
      8FCC420000000000E7D840000000220000000742616C6477696E054A616E6574
      0132000000B97C8FCC420000000000C1D6400000002400000006526565766573
      05526F676572013600004AD8D68FCC4200000000806AE0400000002500000009
      5374616E73627572790657696C6C6965013700004AD8D68FCC42000000000027
      E3400000002C0000000550686F6E67064C65736C69650332313600004C443B90
      CC4200000000C0B3E3400000002D0000000A52616D616E617468616E05417368
      6F6B033230390000E62FD390CC4248E17A149E41E0400000002E000000085374
      6561646D616E0657616C74657203323130000056C9E790CC4200000000C023D3
      4000000034000000094E6F72647374726F6D054361726F6C0334323000000AD5
      7291CC42000000000094B1400000003D000000054C65756E67044C756B650133
      000004BFD892CC420000000080D8E04000000041000000074F27427269656E08
      53756520416E6E65033837370000204B3093CC4200000000C08ADE4000000047
      0000000742757262616E6B0B4A656E6E69666572204D2E03323839000042846B
      93CC42000000008022E640004000480000000A5375746865726C616E6407436C
      6175646961000028647893CC4200000000606EE1400000005300000006426973
      686F700444616E61033239300000B489E493CC420000000000F9E54000000055
      000000094D6163446F6E616C64074D61727920532E033437370000B489E493CC
      4200000000606EE1400000005E0000000857696C6C69616D730552616E647903
      3839320000ECA19394CC42000000000039DC40000000690000000642656E6465
      72094F6C6976657220482E033235350000E2B33095CC4200000000E0F7E14000
      00006B00000004436F6F6B054B6576696E033839340000BA645B96CC42000000
      008055E1400000006D0000000542726F776E054B656C6C79033230320000441E
      6396CC4200000000005EDA400000006E000000064963686964610459756B6902
      32320000441E6396CC42000000004016D940000000710000000450616765044D
      6172790338343500004EA30F97CC42000000000070E740000000720000000650
      61726B65720442696C6C0332343700004A629097CC42000000000017E1400000
      00760000000859616D616D6F746F0754616B617368690232330000AEA1DD97CC
      420000000000BDDF4000000079000000074665727261726907526F626572746F
      01310000A8F4F997CC420000000080C6E3400000007F0000000859616E6F7773
      6B69074D69636861656C033439320000B00D4298CC4200000000007CE5400040
      008600000004476C6F6E074A6163717565730000341A6698CC4200000000C045
      D84000000088000000074A6F686E736F6E0553636F7474033236350000FA2C9C
      98CC42C3F5285C3FDFDD400000008A00000005477265656E04542E4A2E033231
      380000C8581A99CC42000000000094E1400040008D000000074F73626F726E65
      0650696572726500001A91BC99CC42000000000062E140000000900000000A4D
      6F6E74676F6D657279044A6F686E0338323000008E029A9ACC4200000000606E
      E140000000910000000C4775636B656E6865696D6572044D61726B0332323100
      007CFBEE9ACC42000000000040DF40}
    Active = True
    Aggregates = <>
    FileName = 'cdsEmploy'
    Params = <>
    Left = 424
    Top = 344
  end
  object RESTClient1: TRESTClient
    BaseURL = 'https://receitaws.com.br/v1/cnpj/{cnpj}'
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'cnpj'
        Options = [poAutoCreated]
      end>
    SynchronizedEvents = False
    Left = 624
    Top = 176
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'cnpj'
        Value = '02812468000106'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 632
    Top = 248
  end
  object RESTResponse1: TRESTResponse
    Left = 632
    Top = 328
  end
end
