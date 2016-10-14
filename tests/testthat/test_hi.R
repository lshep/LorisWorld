test_that("hi() starts a conversation", {
    expect_identical(
        hi("world"),
        "Hello WORLD You have 5 letters in your name!")
    expect_identical(
        hi("world", "whisper"),
        "Hello world You have 5 letters in your name!")
    expect_error(hi("world", how="somethingElse"))
    expect_error(hi(c("world", "global")))
})
