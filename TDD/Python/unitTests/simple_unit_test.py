import unittest

class firstTestClass(unittest.TestCase):
    def test_upper(self):
        # Arrange
        test_string = 'rubiks code'

        # ACT
        output = test_string.upper() 

        # Assert
        self.assertEqual(output, 'RUBIKS CODE')


if __name__ == '__main__':
    unittest.main()
