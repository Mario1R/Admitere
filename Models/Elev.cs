using Admitere.Popups;
using CommunityToolkit.Mvvm.Input;
using Mopups.Services;
using SQLite;
// ReSharper disable UnusedAutoPropertyAccessor.Global
namespace Admitere.Models;

public partial class Elev
{
    [PrimaryKey, AutoIncrement] public int NrCrt { get; set; }

#pragma warning disable CS8618 
    public string Nume { get; set; }
 
    public string Prenume { get; set; }
    public string Scoala { get; set; }
    public string Cod { get; set; }
    public string Initiala { get; set; }
    public string Cnp { get; set; }
    
    public float MateInit { get; set; }
    public float RoInit { get; set; }
    public float? MatePost { get; set; }
    public float? RoPost { get; set; }
    
    public float MediaInit { get; set; }
    public float? MediaPost { get; set; }
    public bool Contestat { get; set; }
    public bool Rezultat { get; set; }
    
    public string? Clasa { get; set; }
    
    public bool Absent { get; set; }
#pragma warning restore CS8618
    
    
    [RelayCommand]
    private async Task InfoElev()
    {
        await MopupService.Instance.PushAsync(new PopupInfo(this));
    }
}