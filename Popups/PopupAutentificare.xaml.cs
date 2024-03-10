using Admitere.ViewModels;

namespace Admitere.Popups;

public partial class PopupAutentificare
{
    public PopupAutentificare(VisualElement logo)
    {
        InitializeComponent();
        BindingContext = new ViewModelAutentificare(logo);
    }
}