# README

Demo app to demonstrate how with randomized test order, sometimes the ActionMailer
test queue is not empty.

This app doesn't use a database, you should be able to run tests w/o any work.

Overview:

* I've setup two tests: `test_mailer_test.rb` and `test_controller_test.rb`
* Test ordering is randomized
* The controller test simply sends an email
* The mailer test just does `assert_emails 0` (which according to the rails guides *should* always
be true when an ActionMailer test starts)

I did some experimenting to get some seed values that would reliably reproduce different
orderings:

See the tests pass: 
```
rake test TESTOPTS="--seed=10222"
```

See the tests fail:
```
rake test TESTOPTS="--seed=20787"
```

I left `puts` statements in the test files that you may uncomment to verify that when
the order of the tests changes the assertion will either pass or fail.