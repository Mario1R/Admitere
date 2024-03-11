using Admitere.DBs;
using Admitere.Popups;
using CommunityToolkit.Maui.Storage;
using GemBox.Spreadsheet;
using Mopups.Services;

namespace Admitere.Pages;

public partial class PageAfisare
{
    public PageAfisare()
    {
        InitializeComponent();
        Constants.BackImage = Back;
        Constants.ForthImage = Forth;
        Constants.ViewTabsRef.ActivareTabElevi();
#pragma warning disable CS4014
        ShowLoginForm();
#pragma warning restore CS4014
    }

    private async Task ShowLoginForm()
    {
        await Task.Delay(6000);
        await MopupService.Instance.PushAsync(new PopupAutentificare(Logo));
    }
    
    private void PointerInLogo(object? sender, PointerEventArgs e)
    {
        Logo.RotateTo(-360, 400);
    }

    private void PointerOutLogo(object? sender, PointerEventArgs e)
    {
        Logo.RotateTo(360, 400);
    }

    private void AfiseazaElevi(object? sender, TappedEventArgs e)
    {
        Constants.ViewTabsRef.AfiseazaElevi(sender, e);
        Constants.ViewTabsRef.ActivareTabElevi();
    }

    private void AfiseazaClase(object? sender, TappedEventArgs e)
    {
        Constants.AfisareEleviRef.TranslateTo(-Constants.AfisareClaseRef.Width, 0, 300);
        Constants.AfisareClaseRef.TranslateTo(0, 0, 300);
        Constants.BackImage.IsVisible = true;
        Constants.ForthImage.IsVisible = false;
        Constants.ViewTabsRef.ActivareTabClase();
    }

    private async void CreateExcel(object? sender, TappedEventArgs e)
    {
        //ExcelIcon.ScaleTo(1.1);
        //ExcelIcon.ScaleTo(1.0);
        
        SpreadsheetInfo.SetLicense("FREE-LIMITED-KEY");
        var workbook = new ExcelFile();
        workbook.Worksheets.Add("Elevi");
        workbook.Worksheets.Add("Clase");

        if (Forth.IsVisible || (!Back.IsVisible && !Forth.IsVisible))
        {
            int i = 1;
            workbook.Worksheets[0].Cells["A" + i].Value = "Nr.Crt.";
            workbook.Worksheets[0].Cells["B" + i].Value = "Nume";
            workbook.Worksheets[0].Cells["C" + i].Value = "Inițiala";
            workbook.Worksheets[0].Cells["D" + i].Value = "Prenume";
            workbook.Worksheets[0].Cells["E" + i].Value = "Școala";
            workbook.Worksheets[0].Cells["F" + i].Value = "COD";
            workbook.Worksheets[0].Cells["G" + i].Value = "CNP";
            workbook.Worksheets[0].Cells["H" + i].Value = "Matematică";
            workbook.Worksheets[0].Cells["I" + i].Value = "Română";
            workbook.Worksheets[0].Cells["J" + i].Value = "Media Inițială";
            workbook.Worksheets[0].Cells["K" + i].Value = "Matematică (contestație)";
            workbook.Worksheets[0].Cells["L" + i].Value = "Română (contestație)";
            workbook.Worksheets[0].Cells["M" + i].Value = "Media Finală";
            workbook.Worksheets[0].Cells["N" + i].Value = "Absent";
            workbook.Worksheets[0].Cells["O" + i].Value = "Contestat";
            workbook.Worksheets[0].Cells["P" + i].Value = "Rezultat";
            workbook.Worksheets[0].Cells["Q" + i].Value = "Clasa";
            
            foreach (var elev in await AdmitereDatabase.AfisareEleviAsync())
            {
                ++i;
                workbook.Worksheets[0].Cells["A" + i].Value = elev.NrCrt;
                workbook.Worksheets[0].Cells["B" + i].Value = elev.Nume;
                workbook.Worksheets[0].Cells["C" + i].Value = elev.Initiala;
                workbook.Worksheets[0].Cells["D" + i].Value = elev.Prenume;
                workbook.Worksheets[0].Cells["E" + i].Value = elev.Scoala;
                workbook.Worksheets[0].Cells["F" + i].Value = elev.Cod;
                workbook.Worksheets[0].Cells["G" + i].Value = elev.Cnp;
                workbook.Worksheets[0].Cells["H" + i].Value = elev.MateInit;
                workbook.Worksheets[0].Cells["I" + i].Value = elev.RoInit;
                workbook.Worksheets[0].Cells["J" + i].Value = elev.MediaInit;
                workbook.Worksheets[0].Cells["K" + i].Value = elev.MatePost;
                workbook.Worksheets[0].Cells["L" + i].Value = elev.RoPost;
                workbook.Worksheets[0].Cells["M" + i].Value = elev.MediaPost;
                workbook.Worksheets[0].Cells["N" + i].Value = elev.Absent ? "DA" : "NU";
                workbook.Worksheets[0].Cells["O" + i].Value = elev.Contestat ? "DA" : "NU";
                workbook.Worksheets[0].Cells["P" + i].Value = elev.Rezultat ? "DA" : "NU";
                workbook.Worksheets[0].Cells["Q" + i].Value = elev.Clasa;
            }
        }
        else if(Back.IsVisible)
        {
            var i = 1;
            var clasaAnterioara = "A";
            foreach (var elev in await AdmitereDatabase.AfisareEleviAlfabetic())
            {
                if (elev.Clasa != clasaAnterioara) i = 1;
                clasaAnterioara = elev.Clasa!;
                workbook.Worksheets[1].Cells[elev.Clasa + i++].Value = elev.Cod;
            }
        }
        
        var folder = await FolderPicker.PickAsync(default);
        var filePath = Path.Combine(folder.Folder.Path, "Admitere.xlsx");
        workbook.Save(filePath);
    }

    private void PointerInExcel(object? sender, PointerEventArgs e)
    {
        ExcelIcon.ScaleTo(1.1, 100);
    }

    private void PointerOutExcel(object? sender, PointerEventArgs e)
    {
        ExcelIcon.ScaleTo(1.0, 100);
    }

    private void PointerInClase(object? sender, PointerEventArgs e)
    {
        Forth.ScaleTo(1.1, 100);
    }

    private void PointerOutClase(object? sender, PointerEventArgs e)
    {
        Forth.ScaleTo(1.0, 100);
    }

    private void PointerInElevi(object? sender, PointerEventArgs e)
    {
        Back.ScaleTo(1.1, 100);
    }

    private void PointerOutElevi(object? sender, PointerEventArgs e)
    {
        Back.ScaleTo(1.0, 100);
    }
}