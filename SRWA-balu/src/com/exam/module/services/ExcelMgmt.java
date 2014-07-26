package com.exam.module.services;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExcelMgmt {
	public Map<Integer, ArrayList<Object>> readFromExcel(String fileName, String sheetName) throws Exception{
		if(fileName.endsWith(".xls") || fileName.endsWith(".xlsx")){
			Map<Integer, ArrayList<Object>> data = new HashMap<Integer, ArrayList<Object>>();
			File file = new File(fileName);
			FileInputStream stream = new FileInputStream(file);
			XSSFWorkbook workbook = new XSSFWorkbook(stream);
			XSSFSheet sheet;
			if(sheetName != null)
				sheet = workbook.getSheet(sheetName);
			else
				sheet = workbook.getSheetAt(0);
			
			Row headerRow = sheet.getRow(0);
			ArrayList<Object> headRowData = new ArrayList<Object>();
			for(int i = 0; i < headerRow.getLastCellNum();i++){
				Cell cell = headerRow.getCell(i);
				headRowData.add(cellCommons(cell));
			}
			data.put(0, headRowData);
			
			for(int j = 1; j <= sheet.getLastRowNum();j++){
				Row row = sheet.getRow(j);
				ArrayList<Object> bodyData = new ArrayList<Object>();
				for(int i = 0; i < row.getLastCellNum();i++){
					Cell cell = row.getCell(i);
					bodyData.add(cellCommons(cell));
				}
				data.put(j, bodyData);
			}
			return data;
		}
		return null;
	}
	
	private static Object cellCommons(Cell cell){
		Object obj = new Object();
		switch (cell.getCellType()) {
		case Cell.CELL_TYPE_STRING : obj = cell.getStringCellValue();break;
		case Cell.CELL_TYPE_NUMERIC : obj = cell.getNumericCellValue();break;
		case Cell.CELL_TYPE_BLANK : obj = "";break;
		case Cell.CELL_TYPE_BOOLEAN : obj = cell.getBooleanCellValue();break;
		}
		return obj;
	}
}
