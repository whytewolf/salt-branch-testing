always-passes-with-any-kwarg:
  test.nop:
    - name: foo
    - something: else
    - foo: bar

always-passes:
  test.succeed_without_changes:
    - name: foo

always-fails:
  test.fail_without_changes:
    - name: foo

always-changes-and-succeeds:
  test.succeed_with_changes:
    - name: foo

always-changes-and-fails:
  test.fail_with_changes:
    - name: foo

my-custom-combo:
  test.configurable_test_state:
    - name: foo
    - changes: True
    - result: False
    - comment: bar.baz
    - warnings: A warning
