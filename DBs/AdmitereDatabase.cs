using Admitere.Models;
using SQLite;

namespace Admitere.DBs;

public static class AdmitereDatabase
{
    private static SQLiteAsyncConnection _database = null!;
    
    private static async Task Init()
    {
        _database = new SQLiteAsyncConnection(Constants.DatabasePath, Constants.Flags);
        await _database.CreateTableAsync<Elev>();
        await _database.CreateTableAsync<Profesor>();
    }
    
#region ELEVI
    public static async Task<List<Elev>> AfisareEleviAsync()
    {
        await Init();
        return await _database.Table<Elev>().ToListAsync();
    }

    public static async Task<List<Elev>> AfisareEleviAlfabetic()
    {
        await Init();
        return await _database.Table<Elev>().OrderBy(elev => elev.Nume).ToListAsync();
    }
    
    public static async Task<List<string>> AfisareScoliAsync()
    {
        await Init();
        return await _database.QueryScalarsAsync<string>("SELECT DISTINCT Scoala FROM Elev");
    }
    
    public static async Task<int> AdaugareElevAsync(Elev elev)
    {
        await Init();
        return await _database.InsertAsync(elev);
    }

    public static async Task StergereElevAsync(int nrCrt)
    {
        await Init();
        await _database.DeleteAsync<Elev>(nrCrt);
        await _database.ExecuteAsync($"UPDATE Elev SET NrCrt = NrCrt - 1 WHERE NrCrt > {nrCrt}");
        await _database.ExecuteAsync("UPDATE sqlite_sequence SET seq = seq - 1");
    }

    public static async Task ModificareClasa(int nrcrt, string clasa)
    {
        await Init();
        await _database.ExecuteAsync($"UPDATE Elev SET Clasa = '{clasa}' WHERE NrCrt = {nrcrt}");
    }
    
#endregion

#region PROFESORI
    public static async Task<Profesor> CautareProfesor(string nume, string prenume, string parola)
    {
        await Init();
        return await _database.Table<Profesor>().
            Where(p => p.Nume == nume && p.Prenume == prenume && p.Parola == parola).FirstOrDefaultAsync();
    }

    public static async Task<int> AdaugareProfesor(Profesor profesor)
    {
        await Init();
        return await _database.InsertAsync(profesor);
    }
#endregion
}