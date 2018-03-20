import requests


def main():
    domain = "google.com"
    print(requests.get(f"https://{domain}/index.html"))


if __name__ == "__main__":
    main()
