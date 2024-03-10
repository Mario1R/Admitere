using System.Collections.ObjectModel;
using Admitere.Models;
using Admitere.ViewModels;
using Admitere.Views;
using Microsoft.VisualBasic.FileIO;

namespace Admitere;

public static class Constants
{
    private const string DatabaseFilename = "Admitere.db3";
    private const string EleviExcelName = "Elevi.xlsx";

#pragma warning disable CA2211
    public static ViewAfisareElevi AfisareEleviRef = null!;
    public static ViewAfisareClase AfisareClaseRef = null!;
    public static ViewTabs ViewTabsRef = null!;
    
    public static ViewModelAfisareElevi ModelAfisareEleviRef = null!;
    public static ViewModelAfisareClase ModelAfisareClaseRef = null!;
    
    public static Image BackImage = null!;
    public static Image ForthImage = null!;
    public static int NumarClase;
#pragma warning restore CA2211

    public static ObservableCollection<Elev>? Elevi;
    
    public const SQLite.SQLiteOpenFlags Flags =
        SQLite.SQLiteOpenFlags.ReadWrite |
        SQLite.SQLiteOpenFlags.Create |
        SQLite.SQLiteOpenFlags.SharedCache;

    public static string EleviExcelPath => Path.Combine(SpecialDirectories.MyDocuments, EleviExcelName);
    public static string DatabasePath => Path.Combine(SpecialDirectories.MyDocuments, DatabaseFilename);
}