import unittest
from '../helloworld.py' import get_greetings
 class HelloworldTest(unittest.TestCase):
     def test_get_helloworld(self):
         self.assertEqual(get_greetings(), "Hello World!")

if __name__ == '__main__':
    unittest.main()
