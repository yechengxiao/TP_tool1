unit utilU;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Forms,
  Data.Win.ADODB, Vcl.DBGrids, ClipBrd, ComObj, Vcl.Dialogs, cxGridExportLink,
  cxGrid, Vcl.StdCtrls, System.Classes, Vcl.DBCtrls;

var
  bm_logined: string;

procedure Delay(dwMilliseconds: DWORD);
function ExportData(cxGrid: TcxGrid): Boolean;
function DropDown_(dset: TADODataSet; combobox: TComboBox;
  sql, field: string): Boolean;
function DropDown_DB(dset: TADODataSet; cbb: TDBComboBox;
  sql, field: string): Boolean;
procedure msg_info(msg: string);
procedure msg_err(msg: string);
function msg_query(msg: string): Boolean;
function Command_Exec(sql: string): Boolean;
procedure DataSet_Open(dset: TADODataSet; sql: string);
// 查询数据，将数据装入list
function GetList(var list: TStringList; sql, key, value: string): Boolean;
// 获取系统当前用户时间格式
function GetDateTimeFormat(): string;

implementation

uses dmU;

function GetDateTimeFormat(): string;
var
  buf: pchar;
  i: integer;
  GPrevShortDate, GPrevLongDate, GPrevTimeFormat: string;
begin
  GetMem(buf, 20);
  i := 20; // i必须在调用前赋值为buf缓冲区的长度。如果设为0或负值，将取不到设置的值
  GetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SSHORTDATE, buf, i);
  // 取当前用户设置，短日期格式。
  GPrevShortDate := string(buf);
  FreeMem(buf);

  if Pos('/', GPrevShortDate) > 0 then
  begin
    Result := 'yyyy/mm/dd';
  end
  else if Pos('.', GPrevShortDate) > 0 then
  begin
    Result := 'yyyy.mm.dd';
  end
  else if Pos('-', GPrevShortDate) > 0 then
  begin
    Result := 'yyyy-mm-dd';
  end;
end;

function GetList(var list: TStringList; sql, key, value: string): Boolean;
begin
  try
    DataSet_Open(dm.dSet_pub, sql);

    list.Clear;
    dm.dSet_pub.First;
    while not dm.dSet_pub.Eof do
    begin

      list.Add(UpperCase(Trim(dm.dSet_pub.FieldByName(key).AsString)) + '=' +
        UpperCase(Trim(dm.dSet_pub.FieldByName(value).AsString)));

      dm.dSet_pub.Next;
    end;
    Result := True;
  except
    Result := False;
  end;
end;

function Command_Exec(sql: string): Boolean;
begin
  try
    dm.DB_com.CommandText := sql;
    dm.DB_com.Execute;
    Result := True;
  except
    Result := False;
  end;
end;

procedure msg_info(msg: string);
begin
  Application.MessageBox(pchar(msg), '提示', MB_OK + MB_ICONINFORMATION);
end;

procedure msg_err(msg: string);
begin
  Application.MessageBox(pchar(msg), '出错了', MB_OK + MB_ICONSTOP);
end;

function msg_query(msg: string): Boolean;
begin
  case Application.MessageBox(pchar(msg), '请问', MB_YESNO + MB_ICONQUESTION) of
    IDYES:
      begin
        Result := True;
      end;
    IDNO:
      begin
        Result := False;
      end;
  end;
end;

// 延时
procedure Delay(dwMilliseconds: DWORD);
var
  iStart, iStop: DWORD;
begin
  iStart := GetTickCount;
  repeat
    iStop := GetTickCount;
    Application.ProcessMessages;
  until (iStop - iStart) >= dwMilliseconds;
end;

procedure DataSet_Open(dset: TADODataSet; sql: string);
begin
  with dset do
  begin
    Close;
    CommandText := sql;
    Open;
  end;
end;

function DropDown_(dset: TADODataSet; combobox: TComboBox;
  sql, field: string): Boolean;
var
  item: string;
begin
  if (Trim(sql) = '') or (Trim(field) = '') then
  begin
    Result := False;
    Exit;
  end;

  with dset do
  begin
    Close;
    CommandText := sql;
    Open;

    combobox.Clear;
    combobox.Items.Add('');
    while not Eof do
    begin
      item := Trim(FieldByName(field).AsString);
      if item <> '' then
      begin
        combobox.Items.Add(item);
      end;
      Next;
    end;
  end;
  Result := True;
end;

function DropDown_DB(dset: TADODataSet; cbb: TDBComboBox;
  sql, field: string): Boolean;
var
  item: string;
begin
  if (Trim(sql) = '') or (Trim(field) = '') then
  begin
    Result := False;
    Exit;
  end;

  with dset do
  begin
    Close;
    CommandText := sql;
    Open;

    cbb.Clear;
    cbb.Items.Add('');
    while not Eof do
    begin
      item := Trim(FieldByName(field).AsString);
      if item <> '' then
      begin
        cbb.Items.Add(item);
      end;
      Next;
    end;
  end;
  Result := True;
end;

function ExportData(cxGrid: TcxGrid): Boolean;
var
  // str: string;
  // i: Integer;
  // excelapp, sheet: Variant;
  SaveDialog: TSaveDialog;
begin
  try
    try
      Result := False;
      SaveDialog := TSaveDialog.Create(nil);
      with SaveDialog do
      begin
        Filter := '*.xls|*.xls';
        if Execute then
        begin
          if FileExists(SaveDialog.FileName) then
          begin
            case Application.MessageBox('文件已存在，是否覆盖？', '请问',
              MB_OKCANCEL + MB_ICONQUESTION) of
              IDOK:
                begin
                  ExportGridToExcel(SaveDialog.FileName, cxGrid, True, True,
                    True, 'xls');
                  Result := True;
                end;
              IDCANCEL:
                begin
                  Result := False;
                end;
            end;
          end
          else
          begin
            ExportGridToExcel(SaveDialog.FileName, cxGrid, True, True,
              True, 'xls');
            Result := True;
          end;
        end;
      end;
    except
      on e: Exception do
      begin
        Application.MessageBox(pchar('出错了：' + e.Message), '提示',
          MB_OK + MB_ICONSTOP);
      end;
    end;
  finally
    SaveDialog.Free;
  end;

  {


    // lbl2.Caption:=DateTimeToStr(Now);
    str := '';
    dbGrid.DataSource.DataSet.DisableControls;

    for i := 0 to dbGrid.DataSource.DataSet.FieldCount - 1 do
    begin
    // 从dbgird取值
    // str := str + dbGrid.Columns.Items[i].Title.Caption + char(9);
    str := str + dbGrid.DataSource.DataSet.fields[i].DisplayLabel + char(9);
    end;

    str := str + #13;
    dbGrid.DataSource.DataSet.First;

    while not(dbGrid.DataSource.DataSet.Eof) do
    begin
    // 从dbgird取值
    for i := 0 to dbGrid.DataSource.DataSet.FieldCount - 1 do
    begin
    str := str + dbGrid.DataSource.DataSet.fields[i].AsString + char(9);
    // str := str + dbGrid.Columns.Items[i].Field.AsString + char(9);
    end;
    str := str + #13;
    dbGrid.DataSource.DataSet.next;

    // lbl1.Caption := IntToStr(dbGrid.DataSource.DataSet.RecNo);
    // Application.ProcessMessages;
    end;

    dbGrid.DataSource.DataSet.EnableControls;

    clipboard.Clear;
    clipboard.Open;
    clipboard.AsText := str;
    clipboard.Close;

    excelapp := CreateOleObject('Excel.Application');
    excelapp.Workbooks.add(1); // excelapp.workbooks.add(-4167);
    sheet := excelapp.Workbooks[1].Worksheets[1];
    sheet.name := 'sheet1';
    sheet.paste;
    clipboard.Clear;
    // sheet.columns.font.Name:='宋体';
    // sheet.columns.font.size:=9;
    // sheet.Columns.AutoFit;
    excelapp.visible := true;
    // lbl3.Caption:=DateTimeToStr(Now);
  }
end;

end.
