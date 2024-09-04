# Event Manager

## Overview

Event Manager is a Ruby-based script designed to manage event attendees. It reads attendee data from a CSV file, cleans and processes the data, and generates personalized thank-you letters for each attendee. Additionally, it fetches information about the attendees' legislators based on their zip codes using the Google Civic Information API.

## Project Structure

- **lib/event_manager.rb**: The main script that runs the event manager.
- **event_attendees.csv**: A CSV file containing the data of event attendees.
- **form_letter.erb**: An ERB template used to generate personalized thank-you letters.

## Features

1. **Data Cleaning**:

   - The script cleans up zip codes to ensure they are in the correct format (5 digits).

2. **Legislator Lookup**:

   - It fetches the list of legislators representing the attendee's location using the Google Civic Information API.

3. **Personalized Thank-You Letters**:

   - The script generates personalized HTML thank-you letters for each attendee using an ERB template.

4. **File Output**:
   - The generated letters are saved as HTML files in the `output` directory.

## Requirements

- Ruby (version 2.5 or later)
- Google Civic Information API key (stored in a file named `secret.key` in the project root directory)
- The following Ruby gems:
  - `csv`
  - `google/apis/civicinfo_v2`
  - `erb`

## Setup

1. **Clone the Repository**:

   ```
   git clone <repository_url>
   ```

2. **Install Dependencies**:
   Ensure you have the required gems installed:

   ```
   bundle install
   ```

3. **Add API Key**:
   - Place your Google Civic Information API key in a file named `secret.key` in the root directory of the project.

## Usage

1. **Run the Script**:

   - Navigate to the `lib` directory and run the script:
     ```
     ruby event_manager.rb
     ```
   - This will process the attendee data and generate thank-you letters in the `output` directory.

2. **Output**:
   - The output files will be named `thanks_<id>.html` where `<id>` is the attendee's ID from the CSV file.

## Example

For an attendee with the following data:

```csv
1,11/12/08 10:47,Allison,Nguyen,arannon@jumpstartlab.com,6154385000,3155 19th St NW,Washington,DC,20010
```

The script will generate a file named `thanks_1.html` containing a personalized thank-you letter addressed to Allison Nguyen, with a list of her local legislators.

## License

This project is open-source and available under the MIT License.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests for any improvements or bug fixes.
