def hello(name: str = "Dünya") -> str:
    """Basit bir selamlama fonksiyonu."""
    text = f"Merhaba, {name}!"
    print(text)
    return text

if __name__ == "__main__":
    hello()
