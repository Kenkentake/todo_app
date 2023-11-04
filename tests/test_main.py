import pytest
import httpx
from fastapi import FastAPI
from fastapi.testclient import TestClient

from main import app

client = TestClient(app)


def test_root():
    response = client.get("/")
    assert (
        response.status_code == 200
    ), f"Unexpected status code: {response.status_code}"
    assert response.json() == {
        "message": "Hello World"
    }, f"Unexpected response: {response.json()}"


def test_health_check():
    response = client.get("/health_check")
    assert (
        response.status_code == 200
    ), f"Unexpected status code: {response.status_code}"
    assert response.json() == {
        "message": "OK"
    }, f"Unexpected response: {response.json()}"
