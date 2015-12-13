# Week 2 Assignment - *Ruby Chat*

**Ruby Chat** is a Ruby on Rails chat application.

Submitted by: **An Ta**

Time spent: **8** hours spent in total

URL: **https://sleepy-caverns-2160.herokuapp.com**

## User Stories

The following **required** functionality is complete:

* User can sign up by providing their email, password, and name.
* User can login using an email and password.
* After logging in, the user is taken to a page that has a list of incoming messages, sorted in descending chronological order (newest messages at top), a “new message” link, an “add friends” link, and a “sent messages” link.
* Unread messages should be bold or something similar in the list of messages.
* Clicking the “add friends” link takes the user to a page with all users listed, with a link to “add user to friends list”.
* Clicking on “new message” takes the user to a page where they can write a new mesasge. The recipient field should be a dropdown, where the options are names from the user’s friends.
* Clicking on “sent messages” takes the user to a page listing messages they have sent. Each message should display at what time it was read by the recipient, or “unread”. The user cannot read the contents of the messages.
* User can read a message’s content only once. Once the message has been read, the user will see a page indicating the message has already been read.
* User can only read messages where they are the recipient.

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

GIF created with [LiceCap](https://drive.google.com/open?id=0BwwwHC2oIXDMTE8yMTJWNW5zU1E).

## Notes

Some Bootstrap components (such as panel) doesn't seem to work with Rails out of the box.

## License

    Copyright [2015] [An Ta]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
