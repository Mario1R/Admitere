using Admitere.DBs;
using Admitere.Models;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Mopups.Services;
// ReSharper disable ConditionIsAlwaysTrueOrFalseAccordingToNullableAPIContract
// ReSharper disable InconsistentNaming
namespace Admitere.ViewModels;

public partial class ViewModelAutentificare(VisualElement logo) : ObservableObject
{
    [ObservableProperty] private bool eroareVizibila;
    [ObservableProperty] private string nume = null!;
    [ObservableProperty] private string prenume = null!;
    [ObservableProperty] private string parola = null!;

    [RelayCommand]
    private async Task Autentificare()
    {
        var profesorAutentificat = await AdmitereDatabase.CautareProfesor(Nume, Prenume, Parola);
        if (Nume != null && Prenume != null && Parola != null && profesorAutentificat != null)
        {
            await MopupService.Instance.PopAsync();
            await logo.RotateTo(360, 300);
        }
        else if (Nume == null || Prenume == null || Parola == null)
        {
            EroareVizibila = true;
        }

    }

    [RelayCommand]
    private async Task Inregistrare()
    {
        await AdmitereDatabase.AdaugareProfesor(new Profesor
        {
            Nume = Nume,
            Prenume = Prenume,
            Parola = Parola
        });
        await Autentificare();
    }
}