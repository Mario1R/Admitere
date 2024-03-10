using Admitere.ViewModels;

namespace Admitere.Views;

public partial class ViewAfisareClase
{
    public ViewAfisareClase()
    {
        InitializeComponent();
        Constants.AfisareClaseRef = this;
        Constants.ModelAfisareClaseRef = new ViewModelAfisareClase(ClaseRepartizate);
        BindingContext = Constants.ModelAfisareClaseRef;
    }
}
