
class StrategyPattern(object):
    def __init__(self, formatter):
        self.formatter = formatter

    def printing(self, fnumber: str) -> str:
        formatted = self.formatter.format(fnumber)
        print(formatted)
        return formatted

class Formatter1(object):
    def format(self, fnumber: float) -> float:
        return "%.2f" % fnumber

class Formatter2(object):
    def format(self, fnumber):
        return "%.4f" % fnumber
        
strategy_instance1 = StrategyPattern(Formatter1())
strategy_instance2 = StrategyPattern(Formatter2())

pi = 3.1415962
strategy_instance1.printing(pi)
strategy_instance2.printing(pi)

a: str = "123"
b: float = "123"
