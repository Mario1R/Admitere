using Admitere.ViewModels;

namespace Admitere.Views;

public partial class ViewAdaugareElevi
{
    public ViewAdaugareElevi()
    {
        InitializeComponent();
        BindingContext = new ViewModelAdaugareElevi(Eroare);
    }
}