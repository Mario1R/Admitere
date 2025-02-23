using System.Collections.ObjectModel;
using Admitere.DBs;
using Admitere.Models;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
// ReSharper disable CollectionNeverQueried.Global
// ReSharper disable MemberCanBePrivate.Global
// ReSharper disable InconsistentNaming
namespace Admitere.ViewModels;

public partial class ViewModelAfisareElevi : ObservableObject
{
    
    [ObservableProperty] private bool gol;
    
    public ObservableCollection<Elev>? Elevi { get; set; } = [];

    public ViewModelAfisareElevi()
    {
        Gol = true;
#pragma warning disable CS4014 
        AfisareElevi();
#pragma warning restore CS4014 
    }

    [RelayCommand]
    private async Task AfisareElevi()
    {
        foreach (var elev in await AdmitereDatabase.AfisareEleviAsync())
            Elevi?.Add(elev);
        if (Elevi != null && Elevi.Count != 0) Gol = false;
        Constants.Elevi = Elevi;
    }
}   