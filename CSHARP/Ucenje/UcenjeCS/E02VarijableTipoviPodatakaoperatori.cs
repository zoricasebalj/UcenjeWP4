

namespace UcenjeCS
{
    internal class E02VarijableTipoviPodatakaoperatori
    {

        public static void Izvedi()

        { //RAD S VARIJABLAMA SE SASTOJI OD TRI STADIJA:

            //Deklaracija varijable
            int broj;

            //Dodjeljivanje vrijednosti
            broj = 7;

            Console.WriteLine("Upiši broj: ");
            broj = int.Parse(Console.ReadLine());


            //Korištenje varijable

            Console.WriteLine(broj + 1);

            //To se može poopćiti, ne moraju biti tri odvojena koraka
            //Format koda ctrl+d+k
            Console.WriteLine("Unesi decimalni broj:");
            decimal db = decimal.Parse(Console.ReadLine());

            Console.WriteLine(db / 10);

            Console.WriteLine(db + 2);

            Console.WriteLine(broj - 1);

            Console.WriteLine(broj * 2);

            //MODULO : Ostatak nakon cjelobrojnog djeljenja

            int modulo = 10 % 5;
            Console.WriteLine(modulo);

            int i = 5;
            int j = 3;

            Console.WriteLine(i/(float)j);//float je cast. Ovo radim da dobijem pravi rezultat

            bool logickaVrijednost=true;//u SQL bit

            // Neki od operatora:
            //= dodjeljivanje 
            //% modulo


            // == provjera jednakosti , rezultat operatora == je bool
            Console.WriteLine(i==j);











        }
    }
}


