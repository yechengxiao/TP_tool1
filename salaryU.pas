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
  ComObj, System.StrUtils, Vcl.Grids, Vcl.ValEdit;

type
  TsalaryF = class(TForm)
    pan_up: TPanel;
    lbl1: TLabel;
    lbl3: TLabel;
    paintBox: TPaintBox;
    lbl_name: TLabel;
    dtp1: TDateTimePicker;
    btn_tj: TButton;
    btn_export: TButton;
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
    dtp2: TDateTimePicker;
    btn_template: TButton;
    tab1: TTabSheet;
    tab2: TTabSheet;
    dSet_salary: TADODataSet;
    dSource_salary: TDataSource;
    dSet_salaryname: TWideStringField;
    dSet_salarydeptName: TWideStringField;
    dSet_salaryyf: TStringField;
    dSet_salarydeptID: TStringField;
    dSet_salarybadgenumber: TStringField;
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
    dSet_salarymemo: TStringField;
    cxGrid_mxDBTableView1name: TcxGridDBColumn;
    cxGrid_mxDBTableView1deptName: TcxGridDBColumn;
    cxGrid_mxDBTableView1yf: TcxGridDBColumn;
    cxGrid_mxDBTableView1deptID: TcxGridDBColumn;
    cxGrid_mxDBTableView1badgenumber: TcxGridDBColumn;
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
    tab_template: TTabSheet;
    cxGrid_template: TcxGrid;
    cxGrid_templateDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dSet_salaryNO: TLargeintField;
    cxGrid_mxDBTableView1NO: TcxGridDBColumn;
    btn_setting_tmplate: TButton;
    btn_import: TButton;
    openDLG: TOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure btn_templateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_setting_tmplateClick(Sender: TObject);
    procedure btn_importClick(Sender: TObject);
  private
    { Private declarations }
  public
    UnvisiableFieldIndexList: TStringList;
    fieldMap: TStringList;
    { Public declarations }
  end;

var
  salaryF: TsalaryF;

implementation

uses utilU, dmU, salary_setting_templateU;
{$R *.dfm}

procedure TsalaryF.btn_importClick(Sender: TObject);
var
  eclapp, workbook, excelSheet: variant;

  hang, lie: integer; // 行、列、操作excel后的提示信息
  fieldValue_List: TStringList;

  fieldsStr, valuesStr, field, value, sql_delete, sql_insert: string;
  high, totalNum: integer;
  yf, deptId, badgenumber: string;
  flag: Boolean;
const
  TABLE_NAME = 'salary_t';
  lie_tips = 50; // 列提示位置
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

      try
        // 通过EXCEL标题，来判断出需要导入的字段
        fieldsStr := '';
        high := fieldMap.Count;
        try
          for lie := 1 to high do
          begin
            field := Trim(excelSheet.cells.item[1, lie]);

            if (field <> '') AND (LowerCase(field) <> 'no') AND
              ((field) <> '姓名') AND ((field) <> '部门') then
            begin
              fieldsStr := fieldsStr + ',' + fieldMap.Values[field];
            end;
          end;
          fieldsStr := '(' + RightStr(fieldsStr, Length(fieldsStr) - 1) + ')';
        Except
          msg_err('非本工具的模板，无法导入');
          Exit;
        end;

        hang := 2; // 第n行开始取

        while Trim(excelSheet.cells.item[hang, 1]) <> '' do
        begin
          flag := False;
          valuesStr := '';

          // 循环获取整行数据
          high := fieldMap.Count;
          for lie := 1 to high do
          begin
            field := Trim(excelSheet.cells.item[1, lie]);
            value := Trim(excelSheet.cells.item[hang, lie]);

            // no 姓名 部门 字段不能导入
            if (field = '') or (LowerCase(field) = 'no') or ((field) = '姓名') or
              ((field) = '部门') then
            begin
              Continue;
            end
            else if ((field) = '月份') or ((field) = '部门ID') or ((field) = '员工ID')
            then
            begin
              // 月份、部门ID、员工ID不能为空
              if value = '' then
              begin
                excelSheet.cells(hang, lie_tips) := '月份、部门ID、员工ID不能为空';
                flag := False;
                Break;
              end
              else
              begin
                if ((field) = '月份') then
                  yf := value;
                if ((field) = '部门ID') then
                  deptId := value;
                if ((field) = '员工ID') then
                  badgenumber := value;
              end;
            end
            else if (field = '备注') then
            begin
              // 备注中加上操作时间
              value := value + ' ' + GetServerTime();
            end
            else
            begin
              // 判断数据是否为数字
              try
                if value = '' then
                  value := '0'
                else
                  value := (Trim(excelSheet.cells.item[hang, lie]));

                if not IsNumber(PChar(value)) then
                begin
                  excelSheet.cells(hang, lie_tips) := ' 行 ' + IntToStr(hang) +
                    ' 列 ' + field + ' 值 ' + value + '， 数据有数，无法导入';
                  flag := False;
                  Break;
                end;
              except
                excelSheet.cells(hang, lie_tips) := ' 行 ' + IntToStr(hang) +
                  ' 列 ' + field + ' 值 ' + value + '， 数据有数，无法导入';
                flag := False;
                Break;
              end;
            end;

            valuesStr := valuesStr + ',' + QuotedStr(value);
            flag := True;
          end;

          // 执行导入
          if flag then
          begin
            valuesStr := '(' + RightStr(valuesStr, Length(valuesStr) - 1) + ')';

            sql_delete := ' DELETE FROM salary_t WHERE yf=''' + yf +
              ''' AND deptId=''' + deptId + ''' AND badgenumber=''' +
              badgenumber + ''' ';

            sql_insert := sql_delete + ' INSERT INTO ' + TABLE_NAME + fieldsStr
              + ' VALUES ' + valuesStr;

            paintBox.Refresh;
            paintBox.Canvas.TextOut(5, 10, '正在导入第 ' + IntToStr(hang - 1) + '条');
            try
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

procedure TsalaryF.btn_setting_tmplateClick(Sender: TObject);
var
  I, high, index: integer;
begin
  // 设置导出模板的字段可见性
  try
    if not Assigned(UnvisiableFieldIndexList) then
      UnvisiableFieldIndexList := TStringList.create;

    high := fieldMap.Count - 1;
    if high >= 0 then
    begin
      salary_setting_templateF := Tsalary_setting_templateF.create(nil);

      // 添加可选的字段
      for I := 0 to high do
      begin
        salary_setting_templateF.ckListBox.Items.Add(fieldMap.Names[I]);
        // 显示模板grid列全可见，再设置某些不可见
        cxGrid_templateDBTableView1.Columns[I].visible := True;
      end;

      // 已设置为不显示的字段要打勾
      high := UnvisiableFieldIndexList.Count - 1;
      for index := 0 to high do
      begin
        I := StrToInt(UnvisiableFieldIndexList[index]);
        salary_setting_templateF.ckListBox.Checked[I] := True;
      end;

      salary_setting_templateF.ShowModal;

      // 设置 模板字段的 visible
      high := UnvisiableFieldIndexList.Count - 1;
      for index := 0 to high do
      begin
        I := StrToInt(UnvisiableFieldIndexList[index]);
        cxGrid_templateDBTableView1.Columns[I].visible := False;
      end;
    end;
  except
    on e: Exception do
      msg_info('出错了:' + e.Message);
  end;
end;

procedure TsalaryF.btn_templateClick(Sender: TObject);
var
  bm, yf, sql: string;
  b: Boolean;
begin
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
  except
    on e: Exception do
      msg_err('出错了：' + e.Message);
  end;
end;

procedure TsalaryF.FormCreate(Sender: TObject);
var
  dtFormat: string;
begin
  if bm_logined = '人力资源部' then
  begin
    DropDown_(dm.dSet_pub, cbb_bm,
      'SELECT deptname FROM departments ORDER BY deptname DESC', 'deptname');
  end;
  // else
  // begin
  // cbb_bm.Style := csSimple;
  // cbb_bm.Text := bm_logined;
  // end;

  dtFormat := LeftStr(GetDateTimeFormat, 8);

  // 取当前用户设置，短日期格式。
  dtp1.Date := StrToDate(FormatDateTime(dtFormat + '20', IncMonth(Now, -1)));
  dtp2.Date := StrToDate(FormatDateTime(dtFormat + '20', Now));
end;

procedure TsalaryF.FormShow(Sender: TObject);
var
  I, High, width: integer;
  fieldName, caption_: string;
begin
  // 模板不用显示
  tab_template.TabVisible := False;

  if not Assigned(fieldMap) then
    fieldMap := TStringList.create;

  fieldMap.Clear;

  High := cxGrid_mxDBTableView1.ColumnCount - 1;

  for I := 0 to High do
  begin
    // 一定要保证字段的统一性
    fieldName := cxGrid_mxDBTableView1.Columns[I].DataBinding.fieldName;
    caption_ := cxGrid_mxDBTableView1.Columns[I].Caption;
    width := cxGrid_mxDBTableView1.Columns[I].width;

    cxGrid_templateDBTableView1.CreateColumn;
    cxGrid_templateDBTableView1.Columns[I].DataBinding.fieldName := fieldName;
    cxGrid_templateDBTableView1.Columns[I].Caption := caption_;
    cxGrid_templateDBTableView1.Columns[I].width := width;

    fieldMap.Add(caption_ + '=' + fieldName);
  end;
end;

end.
