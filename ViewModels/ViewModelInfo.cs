
using Admitere.DBs;
using Admitere.Models;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Mopups.Services;

// ReSharper disable InconsistentNaming

namespace Admitere.ViewModels;

public partial class ViewModelInfo : ObservableObject
{
    private readonly int _nrcrt;
    [ObservableProperty] private string? nume = null!;
    [ObservableProperty] private string initiala = null!;
    [ObservableProperty] private string prenume = null!;
    [ObservableProperty] private string scoala = null!;
    [ObservableProperty] private string cod = null!;
    [ObservableProperty] private string cnp = null!;

    [ObservableProperty] private float mateInit;
    [ObservableProperty] private float? matePost;

    [ObservableProperty] private float roInit;
    [ObservableProperty] private float? roPost;

    [ObservableProperty] private float mediaInit;
    [ObservableProperty] private float? mediaPost;
    [ObservableProperty] private bool contestat;
    [ObservableProperty] private bool rezultat;
    
    public ViewModelInfo(Elev elev)
    {
        Nume = elev.Nume;
        Initiala = elev.Initiala;
        Prenume = elev.Prenume;
        Cnp = elev.Cnp;
        Cod = elev.Cod;
        Scoala = elev.Scoala;

        MateInit = elev.MateInit;
        MatePost = elev.MatePost;
        
        RoInit = elev.RoInit;
        RoPost = elev.RoPost;
        
        MediaInit = elev.MediaInit;
        MediaPost = elev.MediaPost;
        Contestat = elev.Contestat;
        Rezultat = elev.Rezultat;

        _nrcrt = elev.NrCrt;
    }

    [RelayCommand]
    private async Task StergereElev()
    {
        await AdmitereDatabase.StergereElevAsync(_nrcrt);
        var elevSters = (Constants.Elevi ?? throw new InvalidOperationException()).FirstOrDefault(e => e.NrCrt == _nrcrt);
        Constants.Elevi.Remove(elevSters!);
        await MopupService.Instance.PopAsync();
    }
}