import random

def random_hanzi():
  n = random.randint(0x4e00, 0x9fff)
  return chr(n)

if __name__ == '__main__':
  print(random_hanzi())
