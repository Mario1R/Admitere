using Admitere.ViewModels;

namespace Admitere.Views;

public partial class ViewAfisareElevi
{
    public ViewAfisareElevi()
    {
        InitializeComponent();
        Constants.AfisareEleviRef = this;
        Constants.ModelAfisareEleviRef = new ViewModelAfisareElevi();
        BindingContext = Constants.ModelAfisareEleviRef;
    }
}