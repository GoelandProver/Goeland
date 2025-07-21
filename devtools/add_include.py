#!/usr/bin/env python3

import os, re, sys

def includeFile(match, axioms_path, current_p_file):
    axiom_file = match.group(1)
    full_path = os.path.join(axioms_path, os.path.basename(axiom_file))
    try:
        with open(full_path, 'r', encoding='utf-8') as f:
            return f.read()
    except Exception as e:
        print(f"[WARN] Failed to include '{axiom_file}' in '{current_p_file}': {e}")
        return match.group(0)  # Leave unchanged

def process_line(line, axioms_path, current_p_file):
    return re.sub(
        r"include\('([^']+)'\)\.",
        lambda m: includeFile(m, axioms_path, current_p_file),
        line
    )

def process_file(src_path, dst_path, axioms_path):
    try:
        with open(src_path, 'r', encoding='utf-8') as f:
            lines = f.readlines()

        processed = [process_line(line, axioms_path, src_path) for line in lines]

        os.makedirs(os.path.dirname(dst_path), exist_ok=True)
        with open(dst_path, 'w', encoding='utf-8') as f:
            f.writelines(processed)
    except Exception as e:
        print(f"[ERROR] Cannot process {src_path}: {e}")

def main():
    if len(sys.argv) != 2:
        print(f"Usage: python3 {sys.argv[0]} folder/")
        sys.exit(1)

    input_root = sys.argv[1].rstrip("/")
    axioms_path = os.path.join(os.path.dirname(input_root), "Axioms")
    output_root = input_root + "_INCLUDE"

    if not os.path.isdir(axioms_path):
        print(f"[ERROR] Axioms folder not found: {axioms_path}")
        sys.exit(1)

    print(f"Expanding includes from: {input_root}")
    print(f"Using axioms from: {axioms_path}")
    print(f"Writing output to: {output_root}")

    for root, _, files in os.walk(input_root):
        for file in files:
            if file.endswith(".p"):
                src_path = os.path.join(root, file)
                rel_path = os.path.relpath(src_path, input_root)
                dst_path = os.path.join(output_root, rel_path)
                process_file(src_path, dst_path, axioms_path)

    print("Done expanding includes.")

if __name__ == "__main__":
    main()

