#include <bits/stdc++.h>
using namespace std;

int calculateParity(string data) {
    int count = 0;
    for (char bit : data)
        if (bit == '1') count++;
    return count % 2; 
}
int main() {
    string data;
    cout << "Enter binary data: ";
    cin >> data;

    int parity = calculateParity(data);
    string transmitted = data + to_string(parity);
    cout << "Transmitted data with parity bit: " << transmitted << endl;
    string received;
    cout << "Enter received data: ";
    cin >> received;
    int receivedParity = calculateParity(received.substr(0, received.size() - 1));

    if (receivedParity == (received.back() - '0'))
        cout << "No Error Detected " << endl;
    else
        cout << "Error Detected " << endl;

    return 0;
}
