<?php

namespace App\Services;

use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpWord\PhpWord;
class ExportService
{
    public static function sendSpreadsheetToBrowser(
        Spreadsheet $spreadsheet,
        string $fileName
    ): \Illuminate\Http\Response {
        $filePath = config('paths.tempXlsx');

        $writer = IOFactory::createWriter($spreadsheet, 'Xlsx');

        $writer->save($filePath);

        return response(file_get_contents($filePath))->header('Content-Type', mime_content_type($filePath))
            ->header('Content-Disposition', 'attachment;filename="' . $fileName . '.xlsx"');
    }
    public static function wordFormat(
        // Spreadsheet $spreadsheet,
        string $fileName
    ): \Illuminate\Http\Response {
        $phpWord = new \PhpOffice\PhpWord\PhpWord();
        $filePath = config('paths.tempDocx');

        $writer = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
        $writer->save($filePath);

        return response(file_get_contents($filePath))
        ->header('Content-Type', mime_content_type($filePath))
            ->header('Content-Disposition', 'attachment;filename="' . $fileName . '.docx"');
    }
    
}
