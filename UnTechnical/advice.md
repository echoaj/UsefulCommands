# Advice to Junior Developers

## Zoom Out
Junior developers tend to have a much smaller zone of focus when working within a system. \
Junior developers look at SWE through a microscope, while more senior developers look at it through a wide-angle lens.\
Senior developers take time to think through the potential side effects of what they’re working on, as well as how it fits into the overall system.\
They’ll ask questions like: 
1. Is this consistent with how things have been done elsewhere in the codebase? 
2. Is the code reused elsewhere in the system? 
3. Will this code be easy to maintain in the future?

---

## Understand the "Why's"
Understanding the whys of what you’re doing are more important than the hows. \
If you’re missing an understanding of the business, you may end up building things that people don’t need, or won’t use.

---

## The "And" Test (Separate your concerns)
Use the "and" test to determine if you need to seperate your code. \
**Example:**

The Conference class is responsible for scheduling AND displaying conference timetables. (Fails the AND test).

**Instead do:**

The `ConferenceScheduler` class is responsible for scheduling conferences.

The `SchedulePresenter` is responsible for presenting schedules.

When you divide your code like this you may end up with files that are quite concise – less than 50 lines, even. This is OK! An application composed of small classes that work well together is likely to be much easier to work with than a monolithic application composed of several large classes that each do many different things.

## Kill the Ego
Stop saying “I know that”. Everybody knows that you are a junior. \
Know that every junior is a company’s investment for the future. \

# Recources

https://www.codementor.io/learn-programming/15-ways-to-improve-as-a-junior-developer