#include <iostream>
#include "Gauss.h"

int main()
{
    Matrix<double> matrix = {{10.3, 5.33},{5.3, 65.3},{20.5, 19.003}};
    auto gauss = Gauss<double>(matrix);
    cout << "Hello" << endl;
    auto answers = gauss.GetAnswers();
    for (int i = 0; i < answers.size(); i++)
    {
        cout << answers[i] << endl;
    }

    return 0;
}