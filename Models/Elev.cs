using System.Diagnostics;
using Admitere.Popups;
using CommunityToolkit.Mvvm.Input;
using Mopups.Services;
using SQLite;

namespace Admitere.Models;

public partial class Elev
{
    [PrimaryKey, AutoIncrement] public int NrCrt { get; set; }

    public string? Nume { get; set; } //1.1
    public string Prenume { get; set; } //1.3
    public string Scoala { get; set; } //1.6
    public string Cod { get; set; } //1.5
    public string Initiala { get; set; } //1.2
    public string Cnp { get; set; } //1.4
    
    public float MateInit { get; set; } //2.1.1
    public float RoInit { get; set; } //2.2.1
    public float? MatePost { get; set; } //2.1.2
    public float? RoPost { get; set; } //2.2.2
    
    public float MediaInit { get; set; } //3.1
    public float? MediaPost { get; set; } //3.2
    public bool Contestat { get; set; } //3.3
    public bool Rezultat { get; set; }  //3.4
    
    public string? Clasa { get; set; }
    
    public bool Absent { get; set; }
    
    
    [RelayCommand]
    public async void InfoElev()
    {
        await MopupService.Instance.PushAsync(new PopupInfo(this));
    }
}