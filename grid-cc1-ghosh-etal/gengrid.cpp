#include<iostream>
#include<unistd.h>
#include<stdlib.h>
#include<math.h>
#include<vector>
#include<string>
#include<sstream>

class cellid {
public:
    size_t x;
    size_t y;
    cellid(size_t _x, size_t _y):x(_x),y(_y){};
} ;
using namespace std;
vector<cellid> cellqueue;
int base;
char **matrix;
int squarearm;
int seed;

void    push_neighbours_in_queue(int startx, int starty, int squarearm) {
    if(startx > 0) {
        if(matrix[startx - 1][starty] != 'b') {
            cellid neigh(startx - 1, starty);
            cellqueue.push_back(neigh);
        }
    }
    if(startx < (squarearm - 1)) {
        if(matrix[startx + 1][starty] != 'b') {
            cellid neigh(startx + 1, starty);
            cellqueue.push_back(neigh);
        }
    }
    if(starty > 0) {
        if(matrix[startx][starty - 1] != 'b') {
            cellid neigh(startx, starty - 1);
            cellqueue.push_back(neigh);
        }
    }
    if(starty < (squarearm - 1)) {
        if(matrix[startx][starty + 1] != 'b') {
            cellid neigh(startx, starty + 1);
            cellqueue.push_back(neigh);
        }
    }
}

int numbusyneighs(int x, int y) {
    int numbneighs = 0;
    if(x > 0) {
        if(matrix[x - 1][y] == 'b') {
            numbneighs++;
        }
    }
    if(x < (squarearm - 1)) {
        if(matrix[x + 1][y] == 'b') {
            numbneighs++;
        }
    }
    if(y > 0) {
        if(matrix[x][y - 1] == 'b') {
            numbneighs++;
        }
    }
    if(y < (squarearm - 1)) {
        if(matrix[x][y + 1] == 'b') {
            numbneighs++;
        }
    }
    return numbneighs;
}

bool	check_neighbourhood(int x, int y) {
    if(matrix[x][y] == 'b') {
        if(numbusyneighs(x, y) > 2)
            return false;
        else
            return true;
        
    } else {
        return true;
    }
}

void	fix_neighbourhood(int x, int y) {
    if(random()%2) {
        matrix[x][y] = 'n';
    } else {
        while(numbusyneighs(x, y) > 2) {
            switch(random() % 4) {
            case 0:
                if(x > 0) {
                    if(matrix[x - 1][y] == 'b') {
                        matrix[x - 1][y] = 'n';
                    }
                }
                break;
            case 1:
                if(x < (squarearm - 1)) {
                    if(matrix[x + 1][y] == 'b') {
                        matrix[x + 1][y] = 'n';
                    }
                }
                break;
            case 2:
                if(y > 0) {
                    if(matrix[x][y - 1] == 'b') {
                        matrix[x][y - 1] = 'n';
                    }
                }
                break;
            default:
                if(y < (squarearm - 1)) {
                    if(matrix[x][y + 1] == 'b') {
                        matrix[x][y + 1] = 'n';
                    }
                }
                break;
            }
        }
    }
}

string	getcellname(int x, int y) {
    stringstream namestrm;
    namestrm << (char)('A' + x) << y;
    return namestrm.str();
}

void	print_neighbours(int x, int y) {
    string leftneighbour;
    string rightneighbour;
    string upneighbour;
    string downneighbour;

    if(matrix[x][y] != '\0') {
        string selfname = getcellname(x, y);
        // Left and Up neighbour only need to be 
        // entered if border. Otherwise it will have
        // been taken care of by earlier entries in
        // the order.
        if((x == 0) ||
           (matrix[x - 1][y] == '\0')) {
            upneighbour = "BORDER";
        } 

        if((x == (squarearm - 1)) ||
            (matrix[x + 1][y] == '\0')) {
            downneighbour = "BORDER";
        } else {
            downneighbour = getcellname(x + 1, y);
        }

        if((y == 0) ||
           (matrix[x][y - 1] == '\0')) {
            leftneighbour = "BORDER";
        }

        if((y == (squarearm - 1)) ||
           (matrix[x][y + 1] == '\0')) {
            rightneighbour = "BORDER";
        } else {
            rightneighbour = getcellname(x, y + 1);
        }

        if (leftneighbour == "BORDER") {
            cout << "               (neighbour left BORDER " << selfname << ")" << endl;
            cout << "               (neighbour right " << selfname << " BORDER)" << endl << endl;
        }

        cout << "               (neighbour right " << rightneighbour << " " << selfname << ")" << endl;
        cout << "               (neighbour left " << selfname << " " << rightneighbour << ")" << endl << endl;

        if(upneighbour == "BORDER") {
            cout << "               (neighbour up BORDER " << selfname << ")" << endl;
            cout << "               (neighbour down " << selfname << " BORDER)" << endl << endl;
        }

        cout << "               (neighbour down " << downneighbour << " " << selfname << ")" << endl;
        cout << "               (neighbour up " << selfname << " " << downneighbour << ")" << endl << endl;

    }
}

void	print_matrix() {
    int i;
    int j;
    for(i = 0; i < squarearm; i++) {
        cout << ";; ";
        for(j = 0; j < squarearm; j++) {
            if(matrix[i][j] == '\0')
                cout << '-';
            else
                cout << matrix[i][j];
        }
        cout << endl;
    }
    cout << "(define (problem " << "N" << base << "-S" << seed << ")" << endl; 
    cout << "  (:domain grid)" << endl;
    cout << "  (:objects" << endl;
    for(i = 0; i < squarearm; i++) {
        for(j = 0; j < squarearm; j++) {
            if(matrix[i][j] != '\0')
                cout << "        " << (char)('A' + i) << j << " - cell" << endl;
        }
    }
    cout << "        BORDER - cell" << endl;
    cout << "  )" << endl;
    cout << "  (:init" << endl;
    for(i = 0; i < squarearm; i++) {
        for(j = 0; j < squarearm; j++) {
            if(matrix[i][j] == 'n' || matrix[i][j] == 'b') {
                cout << "               (proc " << (char)('A' + i) << j << ")" << endl;
            } else if(matrix[i][j] == 'd') {
                cout << "               (dispenser " 
                                << (char)('A' + i) << j << ")" << endl;

            }
        }
    }

    for(i = 0; i < squarearm; i++) {
        for(j = 0; j < squarearm; j++) {
            if(matrix[i][j] == 'n' || matrix[i][j] == 'b') {
                cout << "               (available " << (char)('A' + i) << j << ")" << endl;
            } else if(matrix[i][j] == 'd') {
                cout << "               (reject "
                                << (char)('A' + i) << j << " left)" << endl;
                cout << "               (reject "
                                << (char)('A' + i) << j << " right)" << endl;
                cout << "               (reject "
                                << (char)('A' + i) << j << " up)" << endl;
                cout << "               (reject "
                                << (char)('A' + i) << j << " down)" << endl;
            }
        }
    }
    cout << "               (reject BORDER left)" << endl;
    cout << "               (reject BORDER right)" << endl;
    cout << "               (reject BORDER up)" << endl;
    cout << "               (reject BORDER down)" << endl;
    for(i = 0; i < squarearm; i++) {
        for(j = 0; j < squarearm; j++) {
            if(matrix[i][j] == 'n' || matrix[i][j] == 'b' 
              || matrix[i][j] == 'd') {
                print_neighbours(i, j);
            }
        }
    }
    cout << "  )" << endl;
    cout << "  (:goal (and " << endl;

    
    for(i = 0; i < squarearm; i++) {
        for(j = 0; j < squarearm; j++) {
            if(matrix[i][j] == 'b') {
                string selfname = getcellname(i, j);
                cout << "              (busy ";
                cout << selfname << ")" << endl;
            }
        }
    }

    cout << "  ))" << endl;
    cout << ")" << endl;
}

main(int argc, char *argv[]) {
    int squarearmlow;
    int i;
    int j;
    int startx;
    int starty;

    if(argc != 3) {
        cout << "Only two numeric arguments expected, number of cells and random seed" << endl;
        exit(1);
    }

    base = atoi(argv[1]);
    seed = atoi(argv[2]);
    if (base <= 0 || seed <= 0) {
        cout << "Only two numeric arguments expected, number of cells and random seed" << endl;
        exit(1);
    }

    srandom((size_t)seed);

    squarearmlow = (int)ceil(sqrt((float)(base + 1)));

    squarearm = squarearmlow + random()%(base - squarearmlow);
    matrix = (char**)malloc(squarearm * sizeof(char*));
    for (i = 0; i < squarearm; i++) {
        matrix[i] = (char *)calloc(squarearm, sizeof(char));
    }
    
    startx = random()%squarearm;
    starty = random()%squarearm;
    matrix[startx][starty] = 'b';

    push_neighbours_in_queue(startx, starty, squarearm);

    for(i = 0; i < base - 1; i++) {
        bool foundnext = false;
        while (!foundnext) {
            size_t nextit = random() % cellqueue.size();
            int x = cellqueue[nextit].x;
            int y = cellqueue[nextit].y;
            cellqueue.erase(cellqueue.begin() + nextit);
            if(matrix[x][y] != 'b') {
                matrix[x][y] = 'b';
                push_neighbours_in_queue(x, y, squarearm);
                foundnext = true;
            }
        }
    }

    for(i = 0; i < ceil(((float)base)/(float)6); i++) {
        bool foundnext = false;
        while (!foundnext && (cellqueue.size() > 1)) {
            size_t nextit = random() % cellqueue.size();
            int x = cellqueue[nextit].x;
            int y = cellqueue[nextit].y;
            cellqueue.erase(cellqueue.begin() + nextit);
            if(matrix[x][y] == '\0') {
                matrix[x][y] = 'd';
                foundnext = true;
            }
        }
    }
    
    for(i = 0; i < squarearm; i++) {
        for(j = 0; j < squarearm; j++) {
            if(matrix[i][j] == 'b') {
                if(!check_neighbourhood(i,j))
                    fix_neighbourhood(i,j);
            }
        }
    }

    
    print_matrix();

}
