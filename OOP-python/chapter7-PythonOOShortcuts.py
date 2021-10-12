## Function is object
import datetime
import time

class TimedEvent:
    def __init__(self, endtime, callback) -> None:
        self.endtime = endtime
        self.callback = callback
    
    def ready(self):
        return self.endtime <= datetime.datetime.now()


class Timer:
    def __init__(self) -> None:
        self.events = []
    
    def call_after(self, delay, callback):
        end_time = datetime.datetime.now() + datetime.timedelta(seconds=delay)
        self.events.append(TimedEvent(end_time, callback))
    
    def run(self):
        while True:
            ready_events = (e for e in self.events if e.ready)
            for event in ready_events:
                event.callback(self)
                self.events.remove(event)
            time.sleep(0.5)


## Using functions as attributes
class A:
    def print(self):
        print("my class is A")
    
def fake_print():
    print("my class is not A")

a = A()
a.print()
a.print = fake_print
a.print()