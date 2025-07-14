Tempestuous Detour

This repository contains a suite of tools designed for social media reconnaissance, disinformation generation, and deepfake manipulation. The tools are written in Python and Bash and are intended for security research and educational purposes. They include social media payloads, disinformation campaigns, and tools to trace cryptocurrency transactions and generate deepfake content.
Contents
Python Scripts:

    breachhunter.py
    A script that automates the search for data breaches across various platforms. It allows users to search for compromised user data.

    cryptotrace.py
    A script designed for tracking cryptocurrency transactions. This tool helps in identifying the flow of funds across the blockchain.

    crystal_clear.py
    A script that attempts to clean and standardize data collected from various social media platforms. It can be used for better analysis and report generation.

    fb_disinfo_generator.py
    Generates disinformation campaigns on Facebook. It can create fake posts and profiles to test the efficacy of disinformation strategies.

    userpivot.py
    Helps in pivoting user data across multiple platforms to generate a more holistic understanding of a target's digital footprint.

Shell Scripts:

    vitour_deepfake_ops.sh
    A shell script that orchestrates the execution of deepfake creation operations, leveraging AI models to manipulate media.

    vitour_fb_disruptor.sh
    A shell script designed to disrupt Facebook groups by automating the creation of fake accounts and posting controversial content.

    vitour_fb_group_infiltrate.sh
    A script for infiltrating Facebook groups by automating the creation of new accounts and joining target groups.

    vitour_payload_blaster.sh
    A shell script designed to automate the distribution of disinformation payloads across multiple social media accounts.

    vitour_smear_campaign.sh
    A script that launches smear campaigns on social media by automating the creation of fake profiles and posting defamatory content.

Other Files:

    crystal_readme.md
    This is a brief readme for specific tools related to data cleaning (i.e., crystal_clear.py).

    notes
    A collection of notes on the usage of different tools within the repository.

    social_links.json
    Contains social media links associated with target profiles used in the reconnaissance and disinformation tools.

    sample_social_payloads
    A folder containing various pre-built social media payloads for disinformation campaigns, including fake posts and media files.

    socialsmear
    Contains tools to automate the creation of smear campaigns on social media.

    vitoursocialrecon
    A module used for reconnaissance on social media platforms, gathering key data about profiles and activities.

Installation

    Clone the repository:

git clone https://github.com/MrSiebel585/tempestuous-detour.git
cd tempestuous-detour

    Install Python dependencies:

Create a Python virtual environment and install the required libraries.

python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

If there is no requirements.txt, please manually install the following dependencies:

    requests

    beautifulsoup4

    cryptography

    pillow

    opencv-python

For deepfake creation, you may also need to install dlib and torch.

pip install dlib torch

    Setup Shell Scripts:

Ensure you have the necessary permissions to execute the shell scripts:

chmod +x vitour_deepfake_ops.sh vitour_fb_disruptor.sh vitour_fb_group_infiltrate.sh vitour_payload_blaster.sh vitour_smear_campaign.sh

Usage
Python Scripts:

    breachhunter.py:
    To search for data breaches, run:

python breachhunter.py <target_username_or_email>

    cryptotrace.py:
    To trace cryptocurrency transactions, run:

python cryptotrace.py <cryptocurrency_address>

    crystal_clear.py:
    To clean and standardize data, run:

python crystal_clear.py <data_file>

    fb_disinfo_generator.py:
    To generate fake disinformation posts on Facebook, run:

python fb_disinfo_generator.py --target <target_profile> --content <content_file>

    userpivot.py:
    To perform user pivoting across multiple platforms, run:

python userpivot.py <target_username>

Shell Scripts:

    vitour_deepfake_ops.sh:
    To execute a deepfake operation, run:

./vitour_deepfake_ops.sh <source_media> <target_face>

    vitour_fb_disruptor.sh:
    To disrupt Facebook groups, run:

./vitour_fb_disruptor.sh <group_id>

    vitour_fb_group_infiltrate.sh:
    To infiltrate a Facebook group, run:

./vitour_fb_group_infiltrate.sh <group_id>

    vitour_payload_blaster.sh:
    To distribute disinformation payloads, run:

./vitour_payload_blaster.sh <target_profiles> <payload>

    vitour_smear_campaign.sh:
    To start a smear campaign, run:

./vitour_smear_campaign.sh <target_profile> <smear_content>

Contributing

We welcome contributions to the repository. If you'd like to add features, improve documentation, or fix bugs, feel free to fork the repository and submit a pull request. Make sure to follow the existing code style and include tests for any new features.
