# Alert modal

This class is meant to be used as a global to easily open a alert modal to confirm some action.

## Using

There is only one function, used like this:

```python
const title = "Are you sure?"
const message = "Your progress will be lost"
AlertModalGlobal.open_modal(self, title, message, Callable(self, "go_back_to_menu"), Callable(self, "on_cancel_alert"))
```

The callables are optional.