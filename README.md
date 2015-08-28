Concert

version 1.0, 28 August 2015
By Alexa Zeazas

Description
This app allows the user to view, update, and delete their favorite bands. It also allows the user to add concert venues and update where their favorite bands have played.

Setup
1. Clone the repo by typing "git clone https://github.com/amzeazas/concert.git" into the terminal.
2. To bundle the gems, type "bundle" into the terminal.
3. To build the necessary database and tables, type the following in the terminal:
    $rake db:create
    $rake db:migrate
    $rake db:test:prepare
4. Launch server by typing $ruby app.rb into the terminal and going to localhost:4567 in your browser.
5. You can now begin to add bands and venues to your database!

Technologies Used
This app was built using Ruby, ActiveRecord, Sinatra, and SQL.

Legal

Copyright (c) 2015 Alexa Zeazas

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
