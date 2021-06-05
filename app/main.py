from typing import Any

from fastapi import FastAPI, Request
from fastapi.responses import PlainTextResponse

app = FastAPI()


@app.get('/', response_class=PlainTextResponse, response_model=str)
async def fastami(request: Request) -> Any:
    return request.client.host
