import capstone_hello_world
import unittest

class TestCapstoneHelloWorld(unittest.TestCase):

    def setUp(self):
        self.app = capstone_hello_world.app.test_client()
        self.app.testing = True

    def test_status_code(self):
        response = self.app.get('/')
        self.assertEqual(response.status_code, 200)
    
    def test_message(self):
        response = self.app.get('/')
        message = capstone_hello_world.wrap_html('Hello Friends! My name is Maria Jose Gomez Mora presenting my Udacity Cloud DevOps Engineer Nanodegree - Capstone project!')
        self.assertEqual(response.data, message)

if __name__ == '__main__':
    unittest.main()