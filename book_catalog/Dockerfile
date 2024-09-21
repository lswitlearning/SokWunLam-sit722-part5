#book_catalog
FROM python:3.12-slim
WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app /usr/src/app/app

ENV DATABASE_URL="postgresql://projectpart5_v6vb_user:AfkEuDFZYIdbvgbq9hAm3rly9nOkoZjb@dpg-crh6edlsvqrc7388l790-a.oregon-postgres.render.com/projectpart5_v6vb"

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
