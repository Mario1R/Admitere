using System.Collections.ObjectModel;
using System.Diagnostics;
using Admitere.DBs;
using Admitere.Models;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Maui.Controls.Shapes;
using UraniumUI.Material.Controls;
// ReSharper disable once MemberCanBePrivate.Global
// ReSharper disable AccessToModifiedClosure
namespace Admitere.ViewModels;

public partial class ViewModelAfisareClase : ObservableObject
{
    public ObservableCollection<Elev>? Elevi { get; set; } = [];
    private readonly StackLayout _claseRepartizate;
    private readonly char[] _litere = ['A', 'B', 'C', 'D', 'E', 'F'];

    public ViewModelAfisareClase(StackLayout claseRepartizate)
    {
        _claseRepartizate = claseRepartizate;
#pragma warning disable CS4014
        AfisareClase();
#pragma warning restore CS4014
    }

    [RelayCommand]
    public async Task AfisareClase()
    {
        Elevi?.Clear();
        _claseRepartizate.Clear();
        foreach (var elev in await AdmitereDatabase.AfisareEleviAlfabetic())
        {
            Elevi?.Add(elev);   
        }
        var eleviPerClasa = Elevi!.Count / Constants.NumarClase;
        var eleviRamasi = Elevi.Count % Constants.NumarClase;
        var startIndex = 0;
        for (var i = 0; i < Constants.NumarClase; ++i)
        {
            var eleviDeAdaugat = eleviPerClasa + (i < eleviRamasi ? 1 : 0);
            var interval = Elevi.Skip(startIndex).Take(eleviDeAdaugat).ToList();
            foreach (var elev in interval)
            {
                await AdmitereDatabase.ModificareClasa(elev.NrCrt, Convert.ToString(_litere[i]));
            }
            var border = new Border
            {
                Margin = new Thickness(0, 0, 0, 0),
                StrokeShape = new Rectangle(),
                Stroke = Brush.Transparent,
                Content = new ScrollView
                {
                    VerticalScrollBarVisibility = ScrollBarVisibility.Always,
                    HorizontalScrollBarVisibility = ScrollBarVisibility.Never,
                    Orientation = ScrollOrientation.Vertical,
                    Content = new DataGrid
                    {
                        BackgroundColor = Color.FromArgb("#EEEEEE"),
                        LineSeparatorColor = Color.FromArgb("#323643"),
                        UseAutoColumns = false,
                        ItemsSource = interval,
                        TitleTemplate = new DataTemplate(() =>
                        {
                            var label = new Label
                            {
                                TextColor = Color.FromArgb("#323643"),
                                FontSize = 15,
                                FontFamily = "Robo",
                                Text = Convert.ToString(_litere[i]),
                                Margin = new Thickness(18.5, 10, 18.5, 15),
                                VerticalOptions = LayoutOptions.Center,
                                HorizontalOptions = LayoutOptions.Center
                            };
                            return label;
                        }),
                        Columns =
                        {
                            new DataGridColumn()
                            {
                                Title = "Cod",
                                Width = 100,
                                CellItemTemplate = new DataTemplate(() =>
                                {
                                    var button = new ButtonView()
                                    {
                                        Content = new Label()
                                        {
                                            TextColor = Color.FromArgb("#323643"),
                                            FontSize = 15,
                                            FontFamily = "Robo",
                                            Margin = new Thickness(0, 16, 0, 16),
                                            VerticalOptions = LayoutOptions.Center,
                                            HorizontalOptions = LayoutOptions.Center
                                        }
                                    };
                                    button.SetBinding(ButtonView.PressedCommandProperty, "InfoElevCommand");
                                    (button.Content as Label)?.SetBinding(Label.TextProperty, "Cod");
                                    return button;
                                })
                            }
                        }
                    }
                }
            };
            _claseRepartizate.Add(border);
            startIndex += eleviDeAdaugat;
        }
    }
}