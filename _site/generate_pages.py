from pathlib import Path
from xml.etree import ElementTree as ET
from datetime import datetime
import json

def extract_dc_metadata(element):
    metadata = []
    for child in element.findall(".//dcvalue"):
        name = child.attrib.get('element', 'unknown')
        qualifier = child.attrib.get('qualifier')
        full_name = f"{name}.{qualifier}" if qualifier else name
        metadata.append((full_name, child.text))
    return metadata

def generate_library_data(base_dir, json_output):
    base_dir = Path(base_dir)
    xml_files = [f for f in base_dir.rglob("*.xml") if "_site" not in f.parts]
    total = len(xml_files)
    print(f"Generating library.json with {total} resources...")

    entries = []
    for i, xml_path in enumerate(xml_files, 1):
        if i % 1000 == 0 or i == total:
            print(f"[{i}/{total}] {xml_path.relative_to(base_dir)}")
        try:
            tree = ET.parse(xml_path)
            root = tree.getroot()
            metadata = extract_dc_metadata(root)
        except Exception as e:
            print(f"Warning: Failed to parse {xml_path}: {e}")
            continue

        meta = {k: v for k, v in metadata if v}
        title = meta.get("title.none", xml_path.stem)
        author = meta.get("contributor.author", "Unknown")
        date_raw = meta.get("date.issued", "1977-07-07")
        try:
            date = datetime.strptime(date_raw, "%Y-%m-%d").date().isoformat()
        except Exception:
            date = "1977-07-07"
        description = meta.get("description.abstract") or meta.get("description.none") or ""
        uri = meta.get("identifier.uri", "")
        folder = xml_path.parent
        rel_path = folder.relative_to(base_dir)
        pdfs = list(folder.glob("*.pdf"))
        images = [f.name for f in folder.glob("*.jpg")] + [f.name for f in folder.glob("*.png")]

        entries.append({
            "title": title,
            "author": author,
            "date": date,
            "description": description,
            "uri": uri,
            "pdf": pdfs[0].name if pdfs else "",
            "images": images,
            "folder": str(rel_path).replace("\\", "/"),
        })

    Path(json_output).parent.mkdir(parents=True, exist_ok=True)
    with open(json_output, "w", encoding="utf-8") as fj:
        json.dump(entries, fj, ensure_ascii=False, indent=2)

    print(f"✅ Done. Wrote {len(entries)} entries to {json_output}")

# Minimal static-only usage
generate_library_data("..", "library.json")
