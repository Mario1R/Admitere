using Mopups.Services;

namespace Admitere.Popups;

public partial class PopupAdaugareClase
{
    public PopupAdaugareClase()
    {
        InitializeComponent();
    }
    
    private void Tranzitie(object? sender, TappedEventArgs e)
    {
        Constants.NumarClase = Convert.ToInt16(NumarClase.Text);
        MopupService.Instance.PopAsync();
        
#pragma warning disable CS4014 
        Constants.ModelAfisareClaseRef.AfisareClase();
#pragma warning restore CS4014
        
        Constants.AfisareEleviRef.TranslateTo(-Constants.AfisareEleviRef.Width, 0, 300);
        Constants.AfisareClaseRef.TranslateTo(0, 0, 300);
        Constants.BackImage.IsVisible = true;
        Constants.ForthImage.IsVisible = false;
        Constants.ViewTabsRef.ActivareTabClase();
    }
}