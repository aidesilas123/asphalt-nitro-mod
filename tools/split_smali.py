import os
import re
import sys

def split_smali_file(file_path, smali_root):
    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
    except Exception:
        return 0

    # Quick check
    if content.count('\n.class ') + (1 if content.startswith('.class ') else 0) <= 1:
        return 0

    class_matches = list(re.finditer(r'(?m)^\.class\s+(?:.*?\s+)?L([^;]+);', content))
    if len(class_matches) <= 1:
        return 0

    # Try splitting by JADX delimiter '###### Class '
    parts = re.split(r'(?m)^###### Class ', content)
    valid_chunks = []
    for p in parts:
        if not p.strip():
            continue
        chunk = '###### Class ' + p if not p.startswith('.class ') and not p.startswith('###### ') else p
        m = re.search(r'(?m)^\.class\s+(?:.*?\s+)?L([^;]+);', chunk)
        if m:
            cname = m.group(1)
            valid_chunks.append((cname, chunk))

    # Fallback to splitting directly at .class if ###### was absent
    if len(valid_chunks) <= 1:
        class_indices = [m.start() for m in class_matches]
        class_indices.append(len(content))
        valid_chunks = []
        for i in range(len(class_matches)):
            start = class_indices[i]
            end = class_indices[i+1]
            chunk = content[start:end]
            cname = class_matches[i].group(1)
            valid_chunks.append((cname, chunk))

    for cname, chunk in valid_chunks:
        # e.g. com/gameloft/MainActivity$a -> smali/com/gameloft/MainActivity$a.smali
        rel_path = cname.replace('/', os.sep) + '.smali'
        target_path = os.path.join(smali_root, rel_path)
        os.makedirs(os.path.dirname(target_path), exist_ok=True)
        with open(target_path, 'w', encoding='utf-8') as out_f:
            out_f.write(chunk.strip() + '\n')

    return len(valid_chunks)

def main():
    smali_dir = sys.argv[1] if len(sys.argv) > 1 else 'smali'
    if not os.path.isdir(smali_dir):
        print(f"Smali directory '{smali_dir}' not found.")
        return

    print(f"Cleaning duplicate parenthesized files and splitting multi-class files in '{smali_dir}'...")
    deleted_dups = 0
    for root, dirs, files in os.walk(smali_dir):
        for file in files:
            if '(' in file and ')' in file and file.endswith('.smali'):
                try:
                    os.remove(os.path.join(root, file))
                    deleted_dups += 1
                except Exception:
                    pass
    if deleted_dups > 0:
        print(f"Removed {deleted_dups} duplicate parenthesized smali files.")

    total_split_files = 0
    total_classes = 0

    for root, dirs, files in os.walk(smali_dir):
        for file in files:
            if file.endswith('.smali'):
                fp = os.path.join(root, file)
                count = split_smali_file(fp, smali_dir)
                if count > 1:
                    total_split_files += 1
                    total_classes += count

    print(f"Done! Processed {total_split_files} multi-class files and extracted {total_classes} individual class files.")

if __name__ == '__main__':
    main()
