FROM next_task_base

LABEL Name=next_task

USER user

WORKDIR /app

# CMD ["rails", "server", "-b", "0.0.0.0"]

CMD ["bin/dev"]
