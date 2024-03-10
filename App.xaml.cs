using Admitere.Pages;

namespace Admitere;

public partial class App
{
    public App()
    {
        InitializeComponent();
        MainPage = new PageAfisare();
    }

    protected override Window CreateWindow(IActivationState? activationState)
    {
        var window = base.CreateWindow(activationState);
        window.MaximumWidth = 1375;
        window.MaximumHeight = 787;
        return window;
    }
}