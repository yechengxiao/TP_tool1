unit salaryU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxClasses,
  Data.Win.ADODB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, System.DateUtils,
  ComObj, System.StrUtils, Vcl.Grids, Vcl.ValEdit, cxContainer, cxTextEdit,
  cxMaskEdit, Vcl.Mask, Vcl.Buttons;

type
  TsalaryF = class(TForm)
    pan_up: TPanel;
    lbl1: TLabel;
    lbl_bm: TLabel;
    paintBox: TPaintBox;
    lbl_name: TLabel;
    cbb_bm: TComboBox;
    cbb_name: TComboBox;
    pan_down: TPanel;
    pg_ctl: TPageControl;
    tab_mx: TTabSheet;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_bg: TcxStyle;
    cxStyle_cont: TcxStyle;
    cxGrid_mx: TcxGrid;
    cxGrid_mxDBTableView1: TcxGridDBTableView;
    cxGrid_mxLevel1: TcxGridLevel;
    lbl: TLabel;
    dSet_salary: TADODataSet;
    dSource_salary: TDataSource;
    tab_template: TTabSheet;
    cxGrid_template: TcxGrid;
    cxGrid_templateDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    openDLG: TOpenDialog;
    btn_mx: TButton;
    groupB: TGroupBox;
    radioSetVisibleT: TRadioButton;
    radioSetVisibleD: TRadioButton;
    btn_setting_visible: TButton;
    GroupBox1: TGroupBox;
    btn_export: TButton;
    radioExportT: TRadioButton;
    radioExportD: TRadioButton;
    lbl_zw: TLabel;
    cbb_zw: TComboBox;
    lbl_lb: TLabel;
    cbb_lb: TComboBox;
    yf1: TMaskEdit;
    yf2: TMaskEdit;
    GroupBox2: TGroupBox;
    RB_ignore: TRadioButton;
    RB_overlap: TRadioButton;
    btn_import: TButton;
    btn_del: TBitBtn;
    dSet_salaryNO: TLargeintField;
    dSet_salaryid: TAutoIncField;
    dSet_salaryyf: TWideStringField;
    dSet_salarydeptName: TWideStringField;
    dSet_salaryname: TWideStringField;
    dSet_salaryleiBie: TWideStringField;
    dSet_salaryzhiWu: TWideStringField;
    dSet_salarygangWeiGZ: TBCDField;
    dSet_salarytongXunBT: TBCDField;
    dSet_salaryjiangJin: TBCDField;
    dSet_salaryqiTaFa: TBCDField;
    dSet_salarynianGongGZ: TBCDField;
    dSet_salaryxueLiJT: TBCDField;
    dSet_salaryzhiChengBT: TBCDField;
    dSet_salaryyaoFei: TBCDField;
    dSet_salaryjiXiaoJJ: TBCDField;
    dSet_salarygeLeiBT: TBCDField;
    dSet_salaryfuZhuJT: TBCDField;
    dSet_salaryzhiBanFei: TBCDField;
    dSet_salarygaoWenFei: TBCDField;
    dSet_salaryjiaBanNum: TBCDField;
    dSet_salaryjiaBanFei: TBCDField;
    dSet_salaryyeCanFei: TBCDField;
    dSet_salaryqiTaBF: TBCDField;
    dSet_salaryshuBaoFei: TBCDField;
    dSet_salaryjia1: TBCDField;
    dSet_salaryjia2: TBCDField;
    dSet_salaryjia3: TBCDField;
    dSet_salarysuoDeShui: TBCDField;
    dSet_salaryyangLao: TBCDField;
    dSet_salaryshiYe: TBCDField;
    dSet_salarygongJi: TBCDField;
    dSet_salaryyiBao: TBCDField;
    dSet_salaryshiJia: TBCDField;
    dSet_salarybingJia: TBCDField;
    dSet_salarychanHunSangJia: TBCDField;
    dSet_salaryqiTaKou: TBCDField;
    dSet_salaryshuiDian: TBCDField;
    dSet_salaryfangZu: TBCDField;
    dSet_salaryshouJi: TBCDField;
    dSet_salarydaiKou: TBCDField;
    dSet_salarygongHui: TBCDField;
    dSet_salarynianJin: TBCDField;
    dSet_salaryjian1: TBCDField;
    dSet_salaryjian2: TBCDField;
    dSet_salaryjian3: TBCDField;
    dSet_salaryshiFa: TBCDField;
    dSet_salarymemo: TWideStringField;
    dSet_salaryczy: TWideStringField;
    dSet_salaryczsj: TWideStringField;
    cxGrid_mxDBTableView1NO: TcxGridDBColumn;
    cxGrid_mxDBTableView1yf: TcxGridDBColumn;
    cxGrid_mxDBTableView1deptName: TcxGridDBColumn;
    cxGrid_mxDBTableView1name: TcxGridDBColumn;
    cxGrid_mxDBTableView1leiBie: TcxGridDBColumn;
    cxGrid_mxDBTableView1zhiWu: TcxGridDBColumn;
    cxGrid_mxDBTableView1gangWeiGZ: TcxGridDBColumn;
    cxGrid_mxDBTableView1tongXunBT: TcxGridDBColumn;
    cxGrid_mxDBTableView1jiangJin: TcxGridDBColumn;
    cxGrid_mxDBTableView1qiTaFa: TcxGridDBColumn;
    cxGrid_mxDBTableView1nianGongGZ: TcxGridDBColumn;
    cxGrid_mxDBTableView1xueLiJT: TcxGridDBColumn;
    cxGrid_mxDBTableView1zhiChengBT: TcxGridDBColumn;
    cxGrid_mxDBTableView1yaoFei: TcxGridDBColumn;
    cxGrid_mxDBTableView1jiXiaoJJ: TcxGridDBColumn;
    cxGrid_mxDBTableView1geLeiBT: TcxGridDBColumn;
    cxGrid_mxDBTableView1fuZhuJT: TcxGridDBColumn;
    cxGrid_mxDBTableView1zhiBanFei: TcxGridDBColumn;
    cxGrid_mxDBTableView1gaoWenFei: TcxGridDBColumn;
    cxGrid_mxDBTableView1jiaBanNum: TcxGridDBColumn;
    cxGrid_mxDBTableView1jiaBanFei: TcxGridDBColumn;
    cxGrid_mxDBTableView1yeCanFei: TcxGridDBColumn;
    cxGrid_mxDBTableView1qiTaBF: TcxGridDBColumn;
    cxGrid_mxDBTableView1shuBaoFei: TcxGridDBColumn;
    cxGrid_mxDBTableView1jia1: TcxGridDBColumn;
    cxGrid_mxDBTableView1jia2: TcxGridDBColumn;
    cxGrid_mxDBTableView1jia3: TcxGridDBColumn;
    cxGrid_mxDBTableView1suoDeShui: TcxGridDBColumn;
    cxGrid_mxDBTableView1yangLao: TcxGridDBColumn;
    cxGrid_mxDBTableView1shiYe: TcxGridDBColumn;
    cxGrid_mxDBTableView1gongJi: TcxGridDBColumn;
    cxGrid_mxDBTableView1yiBao: TcxGridDBColumn;
    cxGrid_mxDBTableView1shiJia: TcxGridDBColumn;
    cxGrid_mxDBTableView1bingJia: TcxGridDBColumn;
    cxGrid_mxDBTableView1chanHunSangJia: TcxGridDBColumn;
    cxGrid_mxDBTableView1qiTaKou: TcxGridDBColumn;
    cxGrid_mxDBTableView1shuiDian: TcxGridDBColumn;
    cxGrid_mxDBTableView1fangZu: TcxGridDBColumn;
    cxGrid_mxDBTableView1shouJi: TcxGridDBColumn;
    cxGrid_mxDBTableView1daiKou: TcxGridDBColumn;
    cxGrid_mxDBTableView1gongHui: TcxGridDBColumn;
    cxGrid_mxDBTableView1nianJin: TcxGridDBColumn;
    cxGrid_mxDBTableView1jian1: TcxGridDBColumn;
    cxGrid_mxDBTableView1jian2: TcxGridDBColumn;
    cxGrid_mxDBTableView1jian3: TcxGridDBColumn;
    cxGrid_mxDBTableView1shiFa: TcxGridDBColumn;
    cxGrid_mxDBTableView1memo: TcxGridDBColumn;
    btn_del1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn_importClick(Sender: TObject);
    procedure btn_mxClick(Sender: TObject);
    procedure cbb_nameDropDown(Sender: TObject);

    procedure btn_setting_visibleClick(Sender: TObject);
    procedure SetMXVisible;
    procedure SetTmplateVisible;
    function SetVisible(DBTableView1: TcxGridDBTableView;
      list: TStringList): Boolean;

    procedure ExportD;
    procedure ExportTemplate;
    procedure btn_exportClick(Sender: TObject);
    procedure cbb_bmDropDown(Sender: TObject);
    procedure cbb_zwDropDown(Sender: TObject);
    procedure cbb_lbDropDown(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure btn_del1Click(Sender: TObject);
  private
    myThread: TThread; // 线程

  const
    ALL_DEPT = '所有部门';
    { Private declarations }
  public
    UnvisiableFieldIndexList: TStringList;
    UnvisiableFieldIndexList_mx: TStringList;
    UnvisiableFieldIndexList_template: TStringList;
    fieldMap: TStringList;
    { Public declarations }
  end;

var
  salaryF: TsalaryF;

implementation

uses utilU, dmU, salary_setting_templateU;
{$R *.dfm}

function TsalaryF.SetVisible(DBTableView1: TcxGridDBTableView;
  list: TStringList): Boolean;
var
  I, high, index: integer;
begin
  // 设置导出模板的字段可见性
  try
    if not Assigned(UnvisiableFieldIndexList) then
      UnvisiableFieldIndexList := TStringList.create;

    // 复制list
    UnvisiableFieldIndexList.Assign(list);

    high := fieldMap.Count - 1;
    if high >= 0 then
    begin
      salary_setting_templateF := Tsalary_setting_templateF.create(nil);

      // 添加可选的字段
      for I := 0 to high do
      begin
        salary_setting_templateF.ckListBox.Items.Add(fieldMap.Names[I]);
        // 显示模板grid列全可见
        DBTableView1.Columns[I].visible := True;
      end;

      // 已设置为不显示的字段要打勾
      high := UnvisiableFieldIndexList.Count - 1;
      for index := 0 to high do
      begin
        I := StrToInt(UnvisiableFieldIndexList[index]);
        salary_setting_templateF.ckListBox.Checked[I] := True;
      end;

      salary_setting_templateF.ShowModal;
    end;
  except
    on e: Exception do
      msg_info('出错了:' + e.message);
  end;
end;

procedure TsalaryF.ExportD;
var
  b: Boolean;
begin
  try
    if pg_ctl.ActivePage = tab_mx then
    begin
      if cxGrid_mxDBTableView1.DataController.DataSource.DataSet.IsEmpty then
      begin
        msg_info('没有数据...');
        Exit;
      end;
      b := ExportData(cxGrid_mx);
    end;

    if b then
    begin
      paintBox.Refresh;
      paintBox.Canvas.TextOut(5, 10, '导出完成...');
      msg_info('导出完成...');
    end
    else if b then
    begin
      msg_info('导出未完成...');
    end;
  except
    on e: Exception do
    begin
      msg_err('出错了：' + e.message);
      paintBox.Refresh;
    end;
  end;
end;

procedure TsalaryF.btn_del1Click(Sender: TObject);
var
  yf, who, deptName, id: string;
begin
  {
    单条删除
  }
  if cxGrid_mxDBTableView1.DataController.DataSource.DataSet.IsEmpty then
  begin
    msg_info('没有数据...');
    Exit;
  end;

  yf := dSet_salary.FieldByName('yf').AsString;
  deptName := dSet_salary.FieldByName('deptName').AsString;
  who := dSet_salary.FieldByName('name').AsString;

  if msg_query(' 删除 ' + yf + ' 月 ' + deptName + ' ' + who + ' 的此条明细？') then
  begin
    id := dSet_salary.FieldByName('id').AsString;

    if Command_Exec('DELETE FROM TPsalary_t WHERE id =' + id) then
    begin
      msg_info('   删除成功');
      btn_mx.Click;
    end;
  end
  else
  begin
    Exit;
  end;
end;

procedure TsalaryF.btn_delClick(Sender: TObject);
var
  d1, d2, name, deptName, zw, lb, where: string;
begin
  {
    批量删除
  }
  if cxGrid_mxDBTableView1.DataController.DataSource.DataSet.IsEmpty then
  begin
    msg_info('没有数据...');
    Exit;
  end;

  d1 := yf1.Text;
  d2 := yf2.Text;

  if (d1 = '') or (d2 = '') then
  begin
    msg_err('批次必填');
    Exit;
  end;

  name := Trim(cbb_name.Text);
  deptName := Trim(cbb_bm.Text);
  zw := Trim(cbb_zw.Text);
  lb := Trim(cbb_lb.Text);

  try
    paintBox.Refresh;

    if msg_query(' 删除 ' + d1 + ' 至 ' + d2 + ' ' + deptName + ' ' + zw + ' ' + lb
      + ' ' + name + ' 的所有明细？') then
    begin

      if name <> '' then
      begin
        name := ' AND name=''' + name + ''' ';
      end;
      if deptName <> '' then
      begin
        deptName := ' AND deptName=''' + deptName + ''' ';
      end;
      if zw <> '' then
      begin
        zw := ' AND zhiwu=''' + zw + ''' ';
      end;
      if lb <> '' then
      begin
        lb := ' AND leibie=''' + lb + ''' ';
      end;

      where := ' WHERE yf >= ''' + d1 + ''' AND yf<=''' + d2 + ''' ' + name +
        deptName + zw + lb;

      if Command_Exec('DELETE FROM TPsalary_t ' + where) then
      begin
        msg_info('   删除完成');
        btn_mx.Click;
      end;
    end
    else
    begin
      Exit;
    end;
  finally
    paintBox.Refresh;
  end;

end;

procedure TsalaryF.btn_exportClick(Sender: TObject);
begin
  if radioExportT.Checked then
  begin
    // not used
    // ExportTemplate;
  end
  else if radioExportD.Checked then
  begin
    ExportD;
  end
  else
  begin
    msg_err('未选择操作!');
    Exit;
  end;
end;

procedure TsalaryF.btn_importClick(Sender: TObject);
var
  eclapp, workbook, excelSheet: variant;

  hang, lie: integer; // 行、列、操作excel后的提示信息
  fieldValue_List: TStringList;

  fieldsStr, valuesStr, field, value, sql_delete, sql_insert: string;
  high, totalNum: integer;
  yf, czsj, deptName, name: string;
  isSQL: Boolean;
const
  TABLE_NAME = 'TPsalary_t';
  lie_tips = 50; // 列提示位置
  strName = '人员';
  strYF = '批次';
begin

  if openDLG.Execute then
  begin
    if Trim(openDLG.FileName) <> '' then
    begin
      try
        // 打开EXCEL
        eclapp := createoleobject('excel.application');
        workbook := createoleobject('excel.sheet');
        workbook := eclapp.workbooks.open(openDLG.FileName);
        eclapp.workbooks.item[1].Activate;
        excelSheet := workbook.sheets[1];
      except
        msg_err('读取Excel出错！！');
        Exit;
      end;

      if not msg_query('        导入数据？') then
      begin
        Exit;
      end;

      try
        // 通过EXCEL标题，来判断出需要导入的字段
        fieldsStr := '';
        high := fieldMap.Count;
        try
          for lie := 1 to high do
          begin
            field := Trim(excelSheet.cells.item[1, lie]);

            if (field <> '') AND (LowerCase(field) <> 'no') then
            begin
              if fieldMap.Values[field] <> '' then
              begin
                fieldsStr := fieldsStr + ',' + fieldMap.Values[field];
              end
              else
              begin
                msg_err('请确认Excel列标题是否与程序中相同。');
                Exit;
              end;
            end;
          end;
          fieldsStr := '(' + RightStr(fieldsStr, Length(fieldsStr) - 1) + ')';
        Except
          msg_err('非本工具的模板，无法导入');
          Exit;
        end;

        hang := 2; // 第n行开始取
        czsj := GetServerTime();

        // 行循环
        while Trim(excelSheet.cells.item[hang, 1]) <> '' do
        begin
          isSQL := False;
          valuesStr := '';

          // 列循环
          high := fieldMap.Count;
          for lie := 1 to high do
          begin
            field := Trim(excelSheet.cells.item[1, lie]);
            value := Trim(excelSheet.cells.item[hang, lie]);

            // no  字段无需导入
            if (LowerCase(field) = 'no') then
            begin
              Continue;
            end
            else if ((field) = strYF) or ((field) = strName) or ((field) = '部门')
            then
            begin

              if value = '' then
              begin
                excelSheet.cells(hang, lie_tips) := strYF + ' ' + strName +
                  ' 部门不能为空';
                isSQL := False;
                Break;
              end
              else
              begin
                // 主键
                if ((field) = strYF) then
                  yf := value;
                if ((field) = strName) then
                  name := value;
                if ((field) = '部门') then
                  deptName := value;
              end;
            end
            else if (field = '备注') then
            begin
              // 备注中加上操作时间
              value := value + ' ' + czsj;
            end
            else if ((field) = '类别') or ((field) = '职务') then
            begin
              value := value;
            end
            else
            begin
              // 判断数据是否为数字
              try
                if value = '' then
                  value := '0'
                else
                  value := (Trim(excelSheet.cells.item[hang, lie]));

                // 判断是否为数值
                if not IsNumber(PChar(value)) then
                begin
                  excelSheet.cells(hang, lie_tips) := ' 行 ' + IntToStr(hang) +
                    ' 列 ' + field + ' 值 ' + value + '， 数据有数，无法导入';
                  isSQL := False;
                  Break;
                end;

              except
                Break;
              end;
            end;

            valuesStr := valuesStr + ',' + QuotedStr(value);
            isSQL := True;
          end;

          if isSQL then
          begin
            sql_delete := '';
            sql_insert := '';

            paintBox.Refresh;
            paintBox.Canvas.TextOut(5, 10, '正在导入第 ' + IntToStr(hang - 1) + '条');

            try
              if RB_overlap.Checked then // 覆盖导入
              begin
                sql_delete := ' DELETE FROM TPsalary_t WHERE yf=''' + yf +
                  ''' AND deptName=''' + deptName + ''' AND name=''' +
                  name + ''' ';

              end
              else if RB_ignore.Checked then // 跳过导入
              begin
                try
                  sql_insert := 'SELECT top 1 ID FROM TPSALARY_T WHERE yf=''' +
                    yf + ''' AND deptName=''' + deptName + ''' AND name=''' +
                    name + ''' ';

                  DataSet_Open(dm.dSet_pub, sql_insert);
                  if dm.dSet_pub.FieldByName('id').AsInteger > 0 then
                  begin
                    excelSheet.cells(hang, lie_tips) := '已跳过导入';
                    Inc(hang);
                    Continue;
                  end;
                except
                  excelSheet.cells(hang, lie_tips) := '已跳过导入';
                  Inc(hang);
                  Continue;
                end;
              end
              else
              begin
                msg_err('    请选择导入方式...');
                Exit;
              end;

              valuesStr := '(' + RightStr(valuesStr,
                Length(valuesStr) - 1) + ')';

              sql_insert := sql_delete + ' INSERT INTO ' + TABLE_NAME +
                fieldsStr + ' VALUES ' + valuesStr;
              if Command_Exec(sql_insert) then
              begin
                totalNum := totalNum + 1;
                excelSheet.cells(hang, lie_tips) := '导入成功';
              end
              else
              begin
                excelSheet.cells(hang, lie_tips) := '导入失败';
              end;
            except
              excelSheet.cells(hang, lie_tips) := '导入失败';
            end;

          end;

          Inc(hang);
        end;

        try
          eclapp.visible := True;
        except
        end;
      finally
        paintBox.Refresh;
        paintBox.Canvas.TextOut(5, 10, '共导入 ' + IntToStr(totalNum) + ' 条');
      end;
    end;
  end;
end;

procedure TsalaryF.btn_mxClick(Sender: TObject);
var
  sql, d1, d2, deptName, name, zw, lb: string;
begin
  tab_mx.Show;

  d1 := yf1.Text;
  d2 := yf2.Text;

  if (d1 = '') or (d2 = '') then
  begin
    msg_err('批次必填');
    Exit;
  end;

  name := Trim(cbb_name.Text);
  deptName := Trim(cbb_bm.Text);
  zw := Trim(cbb_zw.Text);
  lb := Trim(cbb_lb.Text);

  try
    paintBox.Refresh;

    sql := 'SELECT row_number()over(ORDER BY o.order1) AS NO, s.* FROM TPsalary_t s '
      + '  LEFT JOIN TPdeptOrder_t o  ON o.name=s.deptName ' + ' WHERE yf>= '''
      + d1 + ''' AND yf<=''' + d2 + ''' AND s.deptName LIKE ''%' + deptName +
      '%'' AND s.name LIKE ''%' + name + '%'' AND s.zhiwu LIKE ''%' + zw +
      '%'' AND s.leibie LIKE ''%' + lb + '%'' ';

    DataSet_Open(dSet_salary, sql);

    paintBox.Canvas.TextOut(5, 10, '已检索出 ' + IntToStr(dSet_salary.RecordCount)
      + ' 条数据');
  except
    on e: Exception do
    begin
      msg_err('出了点错: ' + e.message);
    end;
  end;
end;

procedure TsalaryF.SetMXVisible; // 设置 模板字段的 visible
var
  I, high, index: integer;
begin
  if not Assigned(UnvisiableFieldIndexList_mx) then
    UnvisiableFieldIndexList_mx := TStringList.create;

  SetVisible(cxGrid_mxDBTableView1, UnvisiableFieldIndexList_mx);

  // 复制list
  UnvisiableFieldIndexList_mx.Assign(UnvisiableFieldIndexList);

  // 设置 模板字段的 visible
  high := UnvisiableFieldIndexList_mx.Count - 1;
  for index := 0 to high do
  begin
    I := StrToInt(UnvisiableFieldIndexList_mx[index]);
    cxGrid_mxDBTableView1.Columns[I].visible := False;
  end;
end;

procedure TsalaryF.SetTmplateVisible; // 设置 模板字段的 visible
var
  I, high, index: integer;
begin
  if not Assigned(UnvisiableFieldIndexList_template) then
    UnvisiableFieldIndexList_template := TStringList.create;

  SetVisible(cxGrid_templateDBTableView1, UnvisiableFieldIndexList_template);

  // 复制list
  UnvisiableFieldIndexList_template.Assign(UnvisiableFieldIndexList);

  // 设置 模板字段的 visible
  high := UnvisiableFieldIndexList_template.Count - 1;
  for index := 0 to high do
  begin
    I := StrToInt(UnvisiableFieldIndexList_template[index]);
    cxGrid_templateDBTableView1.Columns[I].visible := False;
  end;
end;

procedure TsalaryF.btn_setting_visibleClick(Sender: TObject);
begin
  if radioSetVisibleD.Checked then
  begin
    SetMXVisible;
  end
  else if radioSetVisibleT.Checked then
  begin
    // not used
    // SetTmplateVisible;
  end
  else
  begin
    msg_err('未选择操作!');
    Exit;
  end;
end;

procedure TsalaryF.ExportTemplate;
var
  bm, yf, sql: string;
  b: Boolean;
begin
  {
    bm := Trim(cbb_bm.Text);
    yf := FormatDateTime('yyyy-mm', dtp1.Date);
    b := False;

    if bm = '' then
    begin
    msg_err('请选择部门');
    Exit;
    end;

    try
    if msg_query('部门：' + bm + '  月份：' + yf + ' 确定导出模板？') then
    begin
    sql := ' EXEC SP_salary_template ''' + yf + ''',''' + bm + ''' ';
    DataSet_Open(dm.dSet_pubForGrid, sql);

    b := ExportData(cxGrid_template);
    end;

    // if cxGrid_mxDBTableView1.DataController.DataSource.DataSet.IsEmpty then
    // begin
    // msg_info('没有数据...');
    // Exit;
    // end;

    if b then
    begin
    msg_info('模板完成...');
    end
    else
    begin
    msg_info('模板未完成...');
    end;
  }
  try

  except
    on e: Exception do
      msg_err('出错了：' + e.message);
  end;
end;

procedure TsalaryF.cbb_bmDropDown(Sender: TObject);
begin
  DropDown_(dm.dSet_pub, cbb_bm, 'SELECT DISTINCT deptname FROM TPsalary_t',
    'deptname');

end;

procedure TsalaryF.cbb_lbDropDown(Sender: TObject);
begin
  DropDown_(dm.dSet_pub, cbb_lb, 'SELECT DISTINCT leiBie FROM TPsalary_t',
    'leiBie');
end;

procedure TsalaryF.cbb_nameDropDown(Sender: TObject);
var
  sql, deptName: string;
begin
  deptName := Trim(cbb_bm.Text);

  if deptName <> '' then
  begin
    sql := 'SELECT distinct name FROM TPsalary_t WHERE deptName=''' +
      deptName + ''' ';
    DropDown_(dm.dSet_pub, cbb_name, sql, 'name');
  end;

end;

procedure TsalaryF.cbb_zwDropDown(Sender: TObject);
begin
  DropDown_(dm.dSet_pub, cbb_zw,
    'SELECT DISTINCT zhiWu FROM TPsalary_t', 'zhiWu');
end;

procedure TsalaryF.FormShow(Sender: TObject);
var
  dtFormat, mask1: string;
begin
  // 模板不用显示
  tab_template.TabVisible := False;

  // 确定日期格式----------------------------------------------
  dtFormat := LeftStr(GetDateTimeFormat, 7);

  mask1 := StringReplace(dtFormat, 'y', '9', [rfReplaceAll, rfIgnoreCase]);
  mask1 := '!' + StringReplace(mask1, 'm', '9', [rfReplaceAll, rfIgnoreCase]
    ) + ';0;_';

  yf1.EditMask := mask1;
  yf2.EditMask := yf1.EditMask;

  yf1.Text := FormatDateTime('yyyymm', IncMonth(Now, -1));
  yf2.Text := FormatDateTime('yyyymm', Now);
  // ----------------------------------------------

  // 线程
  TThread.CreateAnonymousThread( // 直接写入方法体
    procedure
    var
      I, High, width: integer;
      fieldName, caption_: string;
    begin
      if not Assigned(fieldMap) then
        fieldMap := TStringList.create;

      fieldMap.Clear;
      // 字段从cxGrid_mx中来
      High := cxGrid_mxDBTableView1.ColumnCount - 1;

      for I := 0 to High do
      begin
        // 一定要保证字段的统一性  为模板使用
        fieldName := cxGrid_mxDBTableView1.Columns[I].DataBinding.fieldName;
        caption_ := cxGrid_mxDBTableView1.Columns[I].Caption;
        width := cxGrid_mxDBTableView1.Columns[I].width;

        cxGrid_templateDBTableView1.CreateColumn;
        cxGrid_templateDBTableView1.Columns[I].DataBinding.fieldName :=
          fieldName;
        cxGrid_templateDBTableView1.Columns[I].Caption := caption_;
        cxGrid_templateDBTableView1.Columns[I].width := width;

        fieldMap.Add(caption_ + '=' + fieldName);
      end;
    end // 此处无分号
    ).Start;
end;

end.
