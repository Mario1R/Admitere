using Admitere.Popups;
using Mopups.Services;

namespace Admitere.Views;

public partial class ViewTabs
{
    public ViewTabs()
    {
        InitializeComponent();
        Constants.ViewTabsRef = this;
    }

    public void AfiseazaElevi(object? sender, TappedEventArgs e)
    {
        Constants.AfisareClaseRef.TranslateTo(-Constants.AfisareClaseRef.Width, 0, 300);
        Constants.AfisareEleviRef.TranslateTo(0, 0, 300);
        Constants.BackImage.IsVisible = false;
        Constants.ForthImage.IsVisible = true;
        ActivareTabElevi();
    }

    private void RepartizeazaClase(object? sender, TappedEventArgs e)
    {
        
        MopupService.Instance.PushAsync(new PopupAdaugareClase());
    }

    public void ActivareTabElevi()
    {
        ClaseTab.BackgroundColor = Color.FromArgb("#EEEEEE").WithAlpha(0.8f);
        EleviTab.BackgroundColor = Color.FromArgb("#EEEEEE");
    }

    public void ActivareTabClase()
    {
        EleviTab.BackgroundColor = Color.FromArgb("#EEEEEE").WithAlpha(0.8f);
        ClaseTab.BackgroundColor = Color.FromArgb("#EEEEEE");
    }
}