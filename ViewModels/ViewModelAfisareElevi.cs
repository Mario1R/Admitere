using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using Admitere.DBs;
using Admitere.Models;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
// ReSharper disable CollectionNeverQueried.Global
// ReSharper disable MemberCanBePrivate.Global
namespace Admitere.ViewModels;

public partial class ViewModelAfisareElevi : ObservableObject, INotifyPropertyChanged
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
        if (Elevi.Count != 0) Gol = false;
        Constants.Elevi = Elevi;
    }
}   