
if __name__ == "__main__":
    from sys import stdin

    text = stdin.read().replace('\\', '\\\\').replace('\'', '\\\'')

    print(text)
