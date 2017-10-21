
import unittest

from p690_employee_importance import Solution, Employee

class SolutionTestCase(unittest.TestCase):

    def testSolution(self):
        pass

    def testEmployee(self):
        employee = Employee(1, 5, [2, 3])
        print employee
