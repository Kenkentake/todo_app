FROM python:3.10

WORKDIR /app
COPY . .

# install poetry and dependencies
RUN curl -sSL https://install.python-poetry.org | python3.10 -
ENV PATH /root/.local/bin:$PATH
RUN poetry config virtualenvs.in-project true
RUN poetry install --no-root
CMD ["poetry", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]

