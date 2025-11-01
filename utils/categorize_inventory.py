#!/usr/bin/env python3
"""
Categorize PROJECT_INVENTORY.csv entries into proper CV sections
and check for existing raw data in projects/ folders
"""

import csv
import os
from pathlib import Path

# CV Section mapping based on cv.md
CV_CATEGORIES = {
    # Work & Professional
    'internship': 'Work Experience',
    'full-time': 'Work Experience',
    'freelance': 'Internships & Freelance Work',
    'consultant': 'Internships & Freelance Work',
    'developer': 'Work Experience',
    'designer': 'Work Experience',
    'engineer': 'Work Experience',

    # Research & Academic
    'research': 'Research Experience',
    'lab': 'Research Experience',
    'capstone': 'Research Experience',
    'university': 'Education',
    'student': 'Education',
    'ta': 'Teaching and Mentorship Portfolio',
    'teaching': 'Teaching and Mentorship Portfolio',

    # Projects
    'platform': 'Personal Projects',
    'app': 'Personal Projects',
    'tool': 'Personal Projects',
    'bot': 'Personal Projects',
    'extension': 'Personal Projects',
    'website': 'Personal Projects',
    'game': 'Personal Projects',

    # Leadership & Volunteer
    'captain': 'Leadership Experience',
    'lead': 'Leadership Experience',
    'director': 'Leadership Experience',
    'volunteer': 'Volunteer Experience',
    'creative marketing': 'Volunteer Experience',

    # Awards & Recognition
    'winner': 'Awards and Honors',
    'champion': 'Awards and Honors',
    'recipient': 'Awards and Honors',
    'scholarship': 'Grants, Fellowships, and Funding',
    'fellowship': 'Grants, Fellowships, and Funding',
    'grant': 'Grants, Fellowships, and Funding',
    'nominee': 'Awards and Honors',

    # Speaking & Media
    'speaker': 'Presentations',
    'host': 'Presentations',
    'feature': 'Media Appearances / Public Engagement',
    'interview': 'Media Appearances / Public Engagement',

    # Certifications
    'certificate': 'Certifications & Licenses',
    'certification': 'Certifications & Licenses',
    'certified': 'Certifications & Licenses',

    # Creative
    'art': 'Creative Works',
    'design': 'Creative Works',
    'photography': 'Creative Works',
    'animation': 'Creative Works',
}

def categorize_entry(title, affiliation):
    """Determine CV section based on title and affiliation"""
    text = f"{title} {affiliation}".lower()

    for keyword, category in CV_CATEGORIES.items():
        if keyword in text:
            return category

    # Default categories
    if 'hackathon' in text or 'competition' in text:
        return 'Awards and Honors'
    if 'member' in text or 'club' in text:
        return 'Professional Affiliations'

    return 'Personal Projects'  # Default

def check_raw_data(title):
    """Check if project has raw data folder"""
    projects_dir = Path('/Users/cvk/Downloads/carl/md-cv/projects')

    # Try to match folder name
    folder_patterns = [
        f"PROJ-{title.lower().replace(' ', '-').replace('/', '-')[:30]}",
        f"EXP-{title.lower().replace(' ', '-').replace('/', '-')[:30]}",
    ]

    for folder in projects_dir.iterdir():
        if folder.is_dir():
            folder_name = folder.name.lower()
            for pattern in folder_patterns:
                if pattern[:15] in folder_name:
                    # Check for raw/ subfolder
                    raw_folder = folder / 'raw'
                    if raw_folder.exists():
                        file_count = len(list(raw_folder.glob('*')))
                        return 'Yes', f"projects/{folder.name}/raw/ ({file_count} files)"
                    return 'Yes', f"projects/{folder.name}/"

    return 'No', ''

def main():
    input_file = '/Users/cvk/Downloads/carl/md-cv/PROJECT_INVENTORY.csv'
    output_file = '/Users/cvk/Downloads/carl/md-cv/PROJECT_INVENTORY_CATEGORIZED.csv'

    rows = []
    with open(input_file, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)

        for row in reader:
            title = row.get('Title', '')
            affiliation = row.get('Affiliation', '')

            # Skip if already has CV_Section
            if row.get('CV_Section'):
                rows.append(row)
                continue

            # Categorize
            cv_section = categorize_entry(title, affiliation)

            # Check for raw data
            has_raw, notes = check_raw_data(title)

            # Determine status
            if has_raw == 'Yes':
                if 'raw/' in notes and '(' in notes:
                    status = f"📁 Has raw data"
                else:
                    status = "⏳ Needs Extraction"
            else:
                status = "❌ No folder"

            row['CV_Section'] = cv_section
            row['Status'] = status
            row['Has_Raw_Data'] = has_raw
            row['Notes'] = notes

            rows.append(row)

    # Write output
    fieldnames = ['Title', 'Duration', 'Affiliation', 'CV_Section', 'Status', 'Has_Raw_Data', 'Notes']
    with open(output_file, 'w', encoding='utf-8', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)

    print(f"✅ Categorized {len(rows)} entries")
    print(f"📄 Output: {output_file}")

    # Stats
    sections = {}
    for row in rows:
        section = row.get('CV_Section', 'Unknown')
        sections[section] = sections.get(section, 0) + 1

    print("\n📊 Breakdown by CV Section:")
    for section, count in sorted(sections.items(), key=lambda x: -x[1]):
        print(f"  {section}: {count}")

if __name__ == '__main__':
    main()
