/// Tic Tac Toe = TTT

#include <iostream>
#include <string>

void print_tab(int tab[3][3])
{
  std::cout << tab[0][0] << '|' << tab[0][1] << '|' << tab[0][2] << '\n';
  std::cout << tab[1][0] << '|' << tab[1][1] << '|' << tab[1][2] << '\n';
  std::cout << tab[2][0] << '|' << tab[2][1] << '|' << tab[2][2] << '\n';
}

int game_is_finished(int tab[3][3])
{
  
  return (-1);
}

int main()
{
  int tab[3][3] = { 0 };
  std::string input;
  int turn = 1;

  if (tab[2][0] == 0)
    std::cout << "ok\n";
  while (game_is_finished(tab) < 0)
    {
      print_tab(tab);
      std::cin >> input;
      int curr_idx = input[0] - '0';
      int i = curr_idx / 3;
      int j = curr_idx % 3;
      std::cout << "i = " << i << '\n';
      std::cout << "j = " << j << '\n';
      if (tab[i][j] != 0)
	{
	  std::cout << "Case non vide\n";
	  continue;
	}
      tab[i][j] = turn;
      turn = (-1) * turn + 3;
    }
  print_tab(tab);
  turn = (-1) * turn + 3;
  std::cout << "Player " << turn << " a gagné !\n";
  return (0);
}
