import sys
from utils.operator import add


if __name__ == "__main__":
    args = sys.argv
    print(args[0])
    print(add(1, 2))
