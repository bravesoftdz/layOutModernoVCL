object form_principal: Tform_principal
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'form_principal'
  ClientHeight = 768
  ClientWidth = 1024
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 15
  object pnl_principal: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 768
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    ExplicitLeft = 96
    ExplicitTop = 144
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnl_topo: TPanel
      Left = 0
      Top = 0
      Width = 1024
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 88
      ExplicitTop = 136
      object spb_fechar: TSpeedButton
        Left = 986
        Top = 0
        Width = 38
        Height = 40
        Cursor = crHandPoint
        Align = alRight
        Caption = ' X '
        Flat = True
        OnClick = spb_fecharClick
        ExplicitLeft = 1080
        ExplicitTop = -6
      end
      object pln_barra_topo: TPanel
        Left = 0
        Top = 40
        Width = 1024
        Height = 1
        Align = alBottom
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = 32
        ExplicitWidth = 1118
      end
      object pnl_menu: TPanel
        Left = 528
        Top = 0
        Width = 458
        Height = 40
        Align = alRight
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object spbCliente: TSpeedButton
          Left = 160
          Top = 0
          Width = 80
          Height = 40
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Cliente'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnMouseEnter = spbVendaMouseEnter
          OnMouseLeave = spbVendaMouseLeave
        end
        object SpeedButton1: TSpeedButton
          Left = 240
          Top = 0
          Width = 80
          Height = 40
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Produtos '
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnMouseEnter = spbVendaMouseEnter
          OnMouseLeave = spbVendaMouseLeave
        end
        object spbVenda: TSpeedButton
          Left = 0
          Top = 0
          Width = 80
          Height = 40
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Vendas'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnMouseEnter = spbVendaMouseEnter
          OnMouseLeave = spbVendaMouseLeave
        end
        object spbCaixa: TSpeedButton
          Left = 80
          Top = 0
          Width = 80
          Height = 40
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Caixa'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnMouseEnter = spbVendaMouseEnter
          OnMouseLeave = spbVendaMouseLeave
        end
        object spbFinanceiro: TSpeedButton
          Left = 320
          Top = 0
          Width = 80
          Height = 40
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Financeiro'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnMouseEnter = spbVendaMouseEnter
          OnMouseLeave = spbVendaMouseLeave
        end
      end
    end
    object pnl_central: TPanel
      Left = 24
      Top = 168
      Width = 649
      Height = 465
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      TabOrder = 1
    end
    object pnl_barra_botao: TPanel
      Left = 24
      Top = 75
      Width = 81
      Height = 1
      Color = clNavy
      ParentBackground = False
      TabOrder = 2
      Visible = False
    end
  end
end