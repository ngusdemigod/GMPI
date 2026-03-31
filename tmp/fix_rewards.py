import os
path = r'c:\Users\USER\Documents\dev\gmpi\church_fintech_admin\church_fintech_admin\lib\pages\rewards\rewards_widget.dart'
try:
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    # Correcting the literal backtick-r strings if they exist
    content = content.replace('`r`n', '\n')
    with open(path, 'w', encoding='utf-8') as f:
        f.write(content)
    print("Success")
except Exception as e:
    print(f"Error: {e}")
