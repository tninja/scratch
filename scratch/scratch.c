auto y=1+1;



int testme(int x) {
  return x+1;
}

auto x=1+1;

#include <stdio.h>
#include <stdlib.h>
#include <iostream>

printf("x=%i\n", x);

using namespace std;

cout << "123";

// Manning: FP in C++

std::vector<int> count_lines_in_files(const std::vector<std::string> &files)
{
  std::vector<int> results; char c = 0;
  for (const auto &file: files) {
	int line_count = 0;
	std::ifstream in(file);
	while (in.get(c)) {
	  if (c == '\n') {
		line_count++;
	  }
	}
	results.push_back(line_count);
  }
  return results;
}

// Effiective Modern C++

/// modern C++

int x;
auto c1 = [x](int y) { return x * y > 55; };

#include <stdio.h>
#include <stdlib.h>

printf("123%d", 1);

auto z = (int y) {
  return 1 + 1;
};

auto x = 1;

std::vector<int> v { 99, -8, 3-2, 3*3 };

int a[] { x, y, 7, 22, -13, 44 };

#include <stdlib.h>
sprintf("123%s", "123");

const auto z = 1;

using namespace std;

#include <vector>
std::vector<int> xs = { 1, 2, 3, 4, 5 };

#include <math.h>

auto result = sum(xs | transform(sqrt));
result
