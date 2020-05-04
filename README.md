1. Run tests

```
rails test
```

2. While tests are running, modify `post.rb`

You will get an `ActiveRecord::ConnectionNotEstablished` error.

There is a dummy [`PostControllerTest`](https://github.com/jorgemanrubia/rails-error-when-editing-test-files/blob/master/test/controllers/posts_controller_test.rb#L3) that keeps doing the same request. Each request triggers a classes reload, and that executes [`.connects_to` in `post.rb`](https://github.com/jorgemanrubia/rails-error-when-editing-test-files/blob/28ee83280593c20086b9cb5732432aa4ff212400/app/models/post.rb#L2), causing the problem.
