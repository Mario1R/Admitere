using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Admitere.DBs;
using Admitere.Models;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
// ReSharper disable InconsistentNaming
// ReSharper disable MemberCanBePrivate.Global
// ReSharper disable FieldCanBeMadeReadOnly.Local
// ReSharper disable MemberCanBePrivate.Global
// ReSharper disable CollectionNeverQueried.Global
// ReSharper disable UnusedMember.Local
namespace Admitere.ViewModels;

public partial class ViewModelAdaugareElevi : ObservableObject, INotifyPropertyChanged
{
    private Elev _elev = new();
    private VerticalStackLayout _eroare;
    public ObservableCollection<string>? Scoli { get; set; } = [];
    
    [ObservableProperty] private string? nume;
    [ObservableProperty] private string? initiala;
    [ObservableProperty] private string? prenume;
    [ObservableProperty] private string? scoala;
    [ObservableProperty] private string? cod;
    [ObservableProperty] private string? cnp;
    [ObservableProperty] private bool rezultat;
    
#region NOTE_INIT
    private float _mateInit;
    public float MateInit
    {
        get => _mateInit;
        set
        {
            if (!(Math.Abs(_mateInit - value) > 0.1)) return;
            _mateInit = value;
            OnPropertyChanged();
            NotaInitAdaugata();
        }
    }

    private float _roInit;
    public float RoInit
    {
        get => _roInit;
        set
        {
            if (!(Math.Abs(_roInit - value) > 0.1)) return;
            _roInit = value;
            OnPropertyChanged();
            NotaInitAdaugata();
        }
    }

    private float _mediaInit;
    public float MediaInit
    {
        get => _mediaInit;
        set
        {
            if (!(Math.Abs(_mediaInit - value) > 0.1)) return;
            _mediaInit = value;
            OnPropertyChanged();
        }
    }
    private float _noteInit;
#endregion    
#region NOTE_POST
    private float _matePost;
    public float MatePost
    {
        get => _matePost;
        set
        {
            if (!(Math.Abs(_matePost - value) > 0.1)) return;
            _matePost = value;
            OnPropertyChanged();
            NotaPostAdaugata();

        }
    }

    private float _roPost;
    public float RoPost
    {
        get => _roPost;
        set
        {
            if (!(Math.Abs(_roPost - value) > 0.1)) return;
            _roPost = value;
            OnPropertyChanged();
            NotaPostAdaugata();
        }
    }
    
    private float _mediaPost;
    public float MediaPost
    {
        get => _mediaPost;
        set
        {
            if (!(Math.Abs(_mediaPost - value) > 0.1)) return;
            _mediaPost = value;
            OnPropertyChanged();
        }
    }
    private float _notePost;
#endregion

public ViewModelAdaugareElevi(VerticalStackLayout eroare)
{
    _eroare = eroare;
#pragma warning disable CS4014
    AfisareScoli();
#pragma warning restore CS4014
}

    [RelayCommand]
    private async Task AdaugareElev()
    {
        if (string.IsNullOrEmpty(Nume) || string.IsNullOrEmpty(Initiala) || string.IsNullOrEmpty(Prenume) ||
            string.IsNullOrEmpty(Scoala) ||
            MateInit == 0 || RoInit == 0 || MediaInit == 0 || string.IsNullOrEmpty(Cnp) || string.IsNullOrEmpty(Cod))
        {
            _eroare.IsVisible = true;
        }
        else
        {
            _eroare.IsVisible = false;
            
            _elev.Nume = Nume; _elev.Initiala = Initiala; _elev.Prenume = Prenume; _elev.Scoala = Scoala;
            _elev.MateInit = MateInit; _elev.RoInit = RoInit; _elev.MediaInit = MediaInit;
            _elev.MatePost = MatePost; _elev.RoPost = RoPost; _elev.MediaPost = MediaPost;
            _elev.Cnp = Cnp; _elev.Cod = Cod; _elev.Rezultat = Rezultat;

            if (_elev.MediaPost != 0)
            {
                _elev.Contestat = true;
                if (_elev.MediaPost >= 6)
                    _elev.Rezultat = true;
            }
            else if (_elev.MediaInit >= 6) _elev.Rezultat = true;
        
            await AdmitereDatabase.AdaugareElevAsync(_elev);
            Constants.Elevi?.Add(_elev);
            
            //await _adaugareEleviPanel.TranslateTo(-5, 0, 25, Easing.Linear);
            //await _adaugareEleviPanel.TranslateTo(0, 0, 25, Easing.Linear);
;        }
    }

    private async Task AfisareScoli()
    {
        foreach (var scoalaDB in await AdmitereDatabase.AfisareScoliAsync())
            Scoli?.Add(scoalaDB);
    }
    
    private void NotaInitAdaugata()
    {
        _noteInit++;
        if (!(_noteInit >= 2)) return;
        MediaInit = (RoInit + MateInit) / 2;
        Debug.WriteLine(MediaInit);
        _noteInit = 0;
    }
    private void NotaPostAdaugata()
    {
        _notePost++;
        if (!(_notePost >= 2)) return;
        MediaPost = (RoPost + MatePost) / 2;
        Debug.WriteLine(MediaPost);
        _notePost = 0;
    }
    
    
    public new event PropertyChangedEventHandler? PropertyChanged;

    private new void OnPropertyChanged([CallerMemberName] string? propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}