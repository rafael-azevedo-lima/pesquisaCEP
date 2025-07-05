object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Margins.Left = 5
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Verificador de CEP'
  ClientHeight = 530
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object gbxCEP: TGroupBox
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 340
    Height = 520
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alLeft
    Caption = 'Verificador de CEP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object gbxResultado: TGroupBox
      AlignWithMargins = True
      Left = 10
      Top = 133
      Width = 320
      Height = 377
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alClient
      Caption = 'Resultado:'
      TabOrder = 0
      object lblCEP: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 26
        Width = 305
        Height = 13
        Margins.Left = 8
        Align = alTop
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 22
      end
      object lblEstado: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 74
        Width = 305
        Height = 13
        Margins.Left = 8
        Align = alTop
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 38
      end
      object lblCidade: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 122
        Width = 305
        Height = 13
        Margins.Left = 8
        Align = alTop
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 39
      end
      object lblBairro: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 170
        Width = 305
        Height = 13
        Margins.Left = 8
        Align = alTop
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 34
      end
      object lblLogradouro: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 218
        Width = 305
        Height = 13
        Margins.Left = 8
        Align = alTop
        Caption = 'Logradouro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 64
      end
      object lblLatitude: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 266
        Width = 305
        Height = 13
        Margins.Left = 8
        Align = alTop
        Caption = 'Latitude:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 45
      end
      object lblLongitude: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 314
        Width = 305
        Height = 13
        Margins.Left = 8
        Align = alTop
        Caption = 'Longitude:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 56
      end
      object lblReferencia: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 359
        Width = 310
        Height = 13
        Align = alBottom
        Alignment = taCenter
        Caption = 'https://brasilapi.com.br/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 124
      end
      object edtCEP: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 45
        Width = 300
        Height = 23
        Margins.Left = 8
        Margins.Right = 8
        TabStop = False
        Align = alTop
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtEstado: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 93
        Width = 300
        Height = 23
        Margins.Left = 8
        Margins.Right = 8
        TabStop = False
        Align = alTop
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtCidade: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 141
        Width = 300
        Height = 23
        Margins.Left = 8
        Margins.Right = 8
        TabStop = False
        Align = alTop
        BevelInner = bvLowered
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edtBairro: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 189
        Width = 300
        Height = 23
        Margins.Left = 8
        Margins.Right = 8
        TabStop = False
        Align = alTop
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object edtLogradouro: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 237
        Width = 300
        Height = 23
        Margins.Left = 8
        Margins.Right = 8
        TabStop = False
        Align = alTop
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object edtLatitude: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 285
        Width = 300
        Height = 23
        Margins.Left = 8
        Margins.Right = 8
        TabStop = False
        Align = alTop
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object edtLongitude: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 333
        Width = 300
        Height = 23
        Margins.Left = 8
        Margins.Right = 8
        TabStop = False
        Align = alTop
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
    end
    object gbxInformacoes: TGroupBox
      AlignWithMargins = True
      Left = 10
      Top = 31
      Width = 320
      Height = 94
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = 'Informe o CEP a ser pesquisado:'
      TabOrder = 1
      object edtPesquisaCEP: TEdit
        AlignWithMargins = True
        Left = 7
        Top = 26
        Width = 306
        Height = 23
        Margins.Left = 5
        Margins.Right = 5
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 8
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        TextHint = 'Informe o CEP'
        OnEnter = edtPesquisaCEPEnter
        OnKeyUp = edtPesquisaCEPKeyUp
      end
      object btnPesquisaCEP: TButton
        AlignWithMargins = True
        Left = 7
        Top = 55
        Width = 306
        Height = 25
        Margins.Left = 5
        Margins.Right = 5
        Align = alTop
        Caption = 'Pesquisar'
        TabOrder = 1
        OnClick = btnPesquisaCEPClick
      end
    end
  end
end
