# share_map
# README

**1. Super secure field**

```ruby
u = User.create email: 'jon.de1oe@example.com', password: "absdadadsac", super_secure_field: "abcd"
  TRANSACTION (0.3ms)  BEGIN
  User Exists? (9.5ms)  SELECT 1 AS one FROM "users" WHERE "users"."email" = $1 LIMIT $2  [["email", "jon.de1oe@example.com"], ["LIMIT", 1]]
  User Create (7.5ms)  INSERT INTO "users" ("id", "email", "encrypted_password", "reset_password_token", "reset_password_sent_at", "remember_created_at", "super_secure_field", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING "id"  [["id", "ad7d8bb0-e524-4bdb-a360-d7d46112fbd5"], ["email", "jon.de1oe@example.com"], ["encrypted_password", "[FILTERED]"], ["reset_password_token", "[FILTERED]"], ["reset_password_sent_at", "[FILTERED]"], ["remember_created_at", nil], ["super_secure_field", "{\"p\":\"DkrQdA==\",\"h\":{\"iv\":\"bRm7ZsBArGmiG9/C\",\"at\":\"U3A+JcZfaJG5dEXvQUMs8g==\"}}"], ["created_at", "2023-02-17 01:19:28.890335"], ["updated_at", "2023-02-17 01:19:28.890335"]]
  TRANSACTION (0.7ms)  COMMIT
 => #<User id: "ad7d8bb0-e524-4bdb-a360-d7d46112fbd5", email: "jon.de1oe@example.com", super_secure_field: "abcd", created_at: "2023-02-17 01:19:28.890335000 +00
```

**2. Rspec test**

```ruby

rspec spec/models/user_spec.rb
DEPRECATION WARNING: The factory_girl gem is deprecated. Please upgrade to factory_bot. See https://github.com/thoughtbot/factory_bot/blob/v4.9.0/UPGRADE_FROM_FACTORY_GIRL.md for further instructions. (called from require at /Users/thanhle/Downloads/arival_test/spec/spec_helper.rb:16)
Finished in 0.32018 seconds (files took 2.51 seconds to load)
4 examples, 0 failures


```
