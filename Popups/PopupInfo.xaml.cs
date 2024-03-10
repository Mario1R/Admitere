using Admitere.Models;
using Admitere.ViewModels;

namespace Admitere.Popups;

public partial class PopupInfo
{
    public PopupInfo(Elev elev)
    {
        InitializeComponent();
        BindingContext = new ViewModelInfo(elev);
    }
}