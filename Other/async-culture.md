
## **Embracing an Asynchronous Culture**

This page contains ideas and best practices that originated from https://about.gitlab.com/company/culture/all-remote/asynchronous/, but have been tailored based on lessons learned and experimentation for SWAT. Furthermore, this document is intended to be a living document with multiple contributors, so please feel free to add and modify content as you learn.

### **Synchronous vs Asynchronous Work**
Let's face it, we're all busy. We work in different time zones, we often work on multiple projects and/or technical areas, many of us work remote (at least part of the time), we are constantly bombarded with context switches, and, most importantly, we all have personal lives that require our attention. The work challenges that result from those facts are very well known: scheduling meetings, getting dedicated time from specific people, making forward progress while waiting on others, focusing on specific work tasks for any extended period of time, etc. The premise behind this document is that these challenges are mostly driven by our conditioned way of working synchronously.

Working synchronously (i.e. in a real-time meeting) is not always a **bad** thing as there are times when progress cannot be made otherwise. One can find many examples of when to use synchronous or asynchronous communication here, but consider the following when contemplating whether to call a meeting:

- Generally, it's best to avoid a meeting for the following items:

    1. Status updates
    2. FYIs and process documentation
    3. Meeting about a meeting  

- Generally, if two people go back-and-forth **more than three times** on the exact same topic — and it's impractical to [break it into smaller async-friendly decisions](https://about.gitlab.com/handbook/values/#minimal-viable-change-mvc) — it makes sense to temporarily pivot to synchronous

- If troubleshooting a specific problem, a live dialog is often faster for all parties to solve the issue

Asynchronous back-and-forth leads to an increase in context-switching, which we desire to minimize

- If asynchronous communications is not leading towards [results](https://about.gitlab.com/handbook/values/#results "We do what we promised to each other, customers, users, and investors"), then switch to synchronous communication until [progress](https://about.gitlab.com/company/culture/all-remote/asynchronous/#aim-for-progress-not-perfection "Aim for progress, not perfection") is made.

### **Meeting Guidance**
- The person who called the meeting is *responsible for informing all meeting invitees via post-meeting documentation*
- Every meeting should be a [review of a concrete proposal](https://about.gitlab.com/handbook/values/#make-a-proposal "Every meeting should be a review of a proposal") or to catalyze a future series of asynchronous events, and only called when it will lead to a more efficient outcome than would be possible asynchronously
- Always attach/provide an [agenda](https://about.gitlab.com/company/culture/all-remote/meetings/#have-an-agenda "Always have an agenda") to the calendar invite, encouraging all parties to contribute textually if they cannot attend in person, and recording the full session for future viewing
- If the request is especially large (GitLab defines this as more than 1000 words) provide a summary at the top of the request highlighting the key points
- "For existing and upcoming meetings, add this question at the top or bottom of the agenda and document the answer: *Could this meeting have been handled asynchronously, and if so, how?*"
- "Meeting attendance becomes optional when each one has an agenda and a Google Doc attached to each invite. This allows people anywhere in the world to contribute questions/input asynchronously in advance, and catch up on documented outcomes [at a later time](https://about.gitlab.com/blog/2019/12/10/how-to-build-a-more-productive-remote-team/)."
- Consider using [virtual meetings](virtual-meetings.md)

### **Individual Guidance**
- As a meeting participant, whether you are scheduling or an invitee, question every work-related meeting:

    1. What is the outcome I am trying to achieve that has led to my desire to schedule a meeting?
    2. Can the desired outcome be broken down into [smaller tasks](https://about.gitlab.com/handbook/values/#iteration "smallest thing possible as quickly as possible")?
    3. Can the desired outcome be achieved or worked towards by [dogfooding](https://about.gitlab.com/handbook/engineering/#dogfooding) and using a [GitLab issue](https://docs.gitlab.com/ee/user/project/issues/) or [merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)?
    4. Am I trying to gather consensus? (If so, this can be done asynchronously.)
    5. Am I trying to make a decision after consensus is gathered and there is a [proposal](https://about.gitlab.com/handbook/values/#make-a-proposal) to react to? (If so, a meeting may be acceptable if it cannot be agreed upon asynchronously, but remember that outcomes must still be [documented in the handbook](https://about.gitlab.com/handbook/handbook-usage/#why-handbook-first "handbook first"). If your outcome(s) will be documented in the end, it calls into question the [efficiency](https://about.gitlab.com/handbook/values/#efficiency) of a synchronous meeting.)

- Below are a few sample regrets, borrowed from an excellent [remote communications guide](https://about.gitlab.com/handbook/values/#efficiency) assembled by Dropbox.

    1. "Thanks for including me! I’m wondering if we could try to solve this using a GitLab issue or merge request instead so our thoughts and progress is documented?"
    2. "I’ve been in so many meetings lately, but I’m trying to be more disciplined about my schedule. Could we try to solve this without a meeting, first?"
    3. "I’d be happy to give you feedback on that! Before we schedule a meeting, could I review it in a GitLab issue/merge request, or shared doc?"
- Create a rudimentary [README](https://about.gitlab.com/handbook/marketing/readmes/dmurph/) that clarifies how you work
- Consider using a Slack channel when OOO instead of a specific DOA. This way, the issues will be handled instead of focusing on the DOA.
- Read up on [low context communication](https://about.gitlab.com/company/culture/all-remote/effective-communication/#understanding-low-context-communication)