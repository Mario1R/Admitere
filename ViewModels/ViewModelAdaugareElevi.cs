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

// ReSharper disable once PartialTypeWithSinglePart
public partial class ViewModelAdaugareElevi : ObservableObject, INotifyPropertyChanged
{
    private Elev _elev = new();
    private VerticalStackLayout _eroare;
    public ObservableCollection<string>? Scoli { get; set; } = [];
    
    private bool _absent;

    public bool Absent
    {
        get => _absent;
        set
        {
            if (_absent != value)
            {
                _absent = value;
                OnPropertyChanged();
            }
        }
    }
    
    private string _cnp;
    public string Cnp
    {
        get => _cnp;
        set
        {
            if (_cnp != value)
            {
                _cnp = value;
                OnPropertyChanged();
            }
        }
    }
    
    private string _cod;
    public string Cod
    {
        get => _cod;
        set
        {
            if (_cod != value)
            {
                _cod = value;
                OnPropertyChanged();
            }
        }
    }
    
    private string _scoala;
    public string Scoala
    {
        get => _scoala;
        set
        {
            if (_scoala != value)
            {
                _scoala = value;
                OnPropertyChanged();
            }
        }
    }
    
    private string _prenume;
    public string Prenume
    {
        get => _prenume;
        set
        {
            if (_prenume != value)
            {
                _prenume = value;
                OnPropertyChanged();
            }
        }
    }
    
    private string _nume;
    public string Nume
    {
        get => _nume;
        set
        {
            if (_nume != value)
            {
                _nume = value;
                OnPropertyChanged();
            }
        }
    }

    private string _initiala;

    public string Initiala
    {
        get => _initiala;
        set
        {
            if (_initiala != value)
            {
                _initiala = value;
                OnPropertyChanged();
            }
        }
    }
    
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

#pragma warning disable CS8618
public ViewModelAdaugareElevi(VerticalStackLayout eroare)
#pragma warning restore CS8618
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
            _elev.Cnp = Cnp; _elev.Cod = Cod; _elev.Absent = Absent;

            if (_elev.MediaPost != 0)
            {
                _elev.Contestat = true;
                if (_elev.MediaPost >= 6)
                    _elev.Rezultat = true;
            }
            else if (_elev.MediaInit >= 6) _elev.Rezultat = true;
        
            await AdmitereDatabase.AdaugareElevAsync(_elev);
            Constants.ModelAfisareEleviRef.Gol = false;
            Constants.Elevi?.Add(_elev);
            await Constants.ModelAfisareClaseRef.AfisareClase();

            Nume = ""; Initiala = ""; Prenume = ""; Scoala = "";
            MateInit = 0; RoInit = 0; MediaInit = 0;
            MatePost = 0; RoPost = 0; MediaPost = 0;
            Cnp = ""; Cod = ""; Absent = false;
        }
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