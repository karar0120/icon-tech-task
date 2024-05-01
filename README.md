# icon_tech_task

This task involves implementing several features within a Flutter application, including authentication, displaying restaurant branches on a map, showing branch categories and products, and displaying product details.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Project Structure](#project-structure)

## Introduction

This task involves implementing several features within a Flutter application, including authentication, displaying restaurant branches on a map, showing branch categories and products, and displaying product details.

## Features
1 - Authentication:
- Implement authentication functionality using a provided API endpoint for user sign-in.
- Handle user authentication using phone number and password.
- Securely store authentication tokens for subsequent API requests.
2 - Restaurant Branches on Map Screen:
- Fetch restaurant branch data from a provided API endpoint based on the user's location.
- Display branch locations on a map with markers.
- Provide detailed information about branches when markers are clicked.
3 - Branch Categories and Products Screen:
- Retrieve branch categories and products data from API endpoints.
- Display branch categories horizontally with images and names.
- Paginate and display products based on selected categories.
- Show product details including image, name, description, and price.
4 - Product Details Screen:
- Display detailed information about selected products.
- Include product image, name, description, and price.

## Getting Started

### Prerequisites

Make sure you have Flutter and Dart installed on your machine. If not, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/karar0120/icon-tech-task.git
    cd icon-tech-app-flutter
    ```

2. Install dependencies:

    ```bash
    flutter pub get
    ```

3. Run the app:

    ```bash
    flutter run
    ```

## Project Structure

    .
    ├── core                       # For all common and core files.
    │   ├── error                  # contains all Exceptions and Failures classes
    │   ├── presentation           # Common presentation files
    |   │   └── blocs              # Common blocs
    |   │   └── pages              # Core pages
    |   │   └── widgets            # Common widgets
    │   └── route                  # Routes for navigation
    │   └── theme                  # Theme data
    │   └── usecases               # Common usecases
    |
    ├── data                       # Data Files of Feature 1
    │   ├── datasources            # DataSources Abstract Files and Implementations
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   ├── models                 # Models for data
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   └── repositories           # Repositories Implementation Classes
    │       └── feature            # Feature 1 (for exp : Todo Feature)
    │           └── sub-feat.      # Sub feature
    ├── domain                     # Domain
    │   ├── entities               # Entities For Feature 1
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   ├── usecases               # Usecases of Feature 1
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   └── repositories           # Repositories Abstract Classes
    │       └── feature            # Feature 1 (for exp : Todo Feature)
    │           └── sub-feat.      # Sub feature
    └── presentation               # Presentation files
        ├── blocs                  # Blocs
        │   └── feature            # Feature 1 (for exp : Todo Feature)
        │       └── sub-feat.      # Sub feature
        ├── pages                  # Pages
        │   └── feature            # Feature 1 (for exp : Todo Feature)
        │       └── sub-feat.      # Sub feature
        └── widgets                # Widgets
            └── feature            # Feature 1 (for exp : Todo Feature)
                └── sub-feat.      # Sub feature

## Architecture

This app uses [***Clean Architecture by Robert C Martin***]

<img src="https://github.com/ResoCoder/flutter-tdd-clean-architecture-course/blob/master/architecture-proposal.png" style="display: block; margin-left: auto; margin-right: auto; width: 75%;"/>

Image Source : [ResoCoder](https://resocoder.com)

## Branches

    .
    ├── master                       # Contains the latest release
           ├── dev                   # Contains the latest development
                ├── feature1         # feature 1 created from dev
                ├── feature2         # feature 2 created from dev
                ├── feature3         # feature 3 created from dev
                ├── bugFix1          # bugfix 1 created from dev
                ├── bugFix2          # bugfix 1 created from dev
                ├── docChange1       # docChange 1 created from dev
                ├── docChange1       # docChange 2 created from dev

## Authentication:
- Implement authentication functionality using a provided API endpoint for user sign-in.
- Handle user authentication using phone number and password.
- Securely store authentication tokens for subsequent API requests.
  
# :iphone: Screens
![WhatsApp Image 2024-05-02 at 02 13 54_5a28d371](https://github.com/karar0120/icon-tech-task/assets/92108624/2e8dc7db-8e81-4d5d-af6e-0b7dcc4b2e34)
![WhatsApp Image 2024-05-02 at 02 13 50_f636f5d7](https://github.com/karar0120/icon-tech-task/assets/92108624/9e10cf76-fc2c-46b6-a521-e870668731e9)
![WhatsApp Image 2024-05-02 at 02 13 53_c8788d6c](https://github.com/karar0120/icon-tech-task/assets/92108624/63c29274-175d-4050-814b-9a760aab7b05)


## Restaurant Branches on Map Screen:
- Fetch restaurant branch data from a provided API endpoint based on the user's location.
- Display branch locations on a map with markers.
- Provide detailed information about branches when markers are clicked.
# :iphone: Screens
![WhatsApp Image 2024-05-02 at 02 13 53_9eda1e38](https://github.com/karar0120/icon-tech-task/assets/92108624/7bba44fd-811e-479a-9045-96342c3aa71b)
![WhatsApp Image 2024-05-02 at 02 13 53_25fcef50](https://github.com/karar0120/icon-tech-task/assets/92108624/02ef6e71-cc49-44f9-96b1-f435f0bcb5af)
![WhatsApp Image 2024-05-02 at 02 13 57_d9a2decf](https://github.com/karar0120/icon-tech-task/assets/92108624/71b947f2-997f-43e0-8f82-f9eb6e9621d1)
![WhatsApp Image 2024-05-02 at 02 13 57_6904269a](https://github.com/karar0120/icon-tech-task/assets/92108624/2da94bc6-7ce3-4885-845f-49bebbb85267)
![WhatsApp Image 2024-05-02 at 02 13 50_b0e39a10](https://github.com/karar0120/icon-tech-task/assets/92108624/2a092d27-057a-4481-b002-3ef408508e99)
![WhatsApp Image 2024-05-02 at 02 13 53_01d9e7bc](https://github.com/karar0120/icon-tech-task/assets/92108624/4e209b40-442d-4ac8-8ad9-87c42699e5e0)

  
## Branch Categories and Products Screen:
- Retrieve branch categories and products data from API endpoints.
- Display branch categories horizontally with images and names.
- Paginate and display products based on selected categories.
- Show product details including image, name, description, and price.
# :iphone: Screens
![WhatsApp Image 2024-05-02 at 02 13 55_dea9d25d](https://github.com/karar0120/icon-tech-task/assets/92108624/90a74aa8-ef3c-454c-a6b4-6b8568256f2d)
![WhatsApp Image 2024-05-02 at 02 13 57_d8d40c62](https://github.com/karar0120/icon-tech-task/assets/92108624/54888953-1d28-483b-a987-430f71e5f5f9)
![WhatsApp Image 2024-05-02 at 02 13 54_29d197e4](https://github.com/karar0120/icon-tech-task/assets/92108624/59009066-7018-4f03-83cf-c85864a7c9c4)
![WhatsApp Image 2024-05-02 at 02 13 56_003ef76b](https://github.com/karar0120/icon-tech-task/assets/92108624/b9decf1c-cae1-4457-b3d7-037844ef16bf)
![WhatsApp Image 2024-05-02 at 02 13 50_dedc5c16](https://github.com/karar0120/icon-tech-task/assets/92108624/804998c3-24d8-4ab4-b035-1adec43aad6b)
![WhatsApp Image 2024-05-02 at 02 13 54_b0e6bba7](https://github.com/karar0120/icon-tech-task/assets/92108624/32d4ab93-23e3-4b8d-ae0f-ee0628d9c980)
![WhatsApp Image 2024-05-02 at 02 13 55_53994f74](https://github.com/karar0120/icon-tech-task/assets/92108624/b272f3f9-0256-48c3-8de6-dfa574b53100)


## Product Details Screen:
- Display detailed information about selected products.
- Include product image, name, description, and price.
# :iphone: Screens
![WhatsApp Image 2024-05-02 at 02 13 55_17330833](https://github.com/karar0120/icon-tech-task/assets/92108624/8103a510-becf-4fd3-a233-408cb2280885)
![WhatsApp Image 2024-05-02 at 02 13 50_682d40e9](https://github.com/karar0120/icon-tech-task/assets/92108624/b33d72c9-63d6-43d8-a018-4e55661873ec)
![WhatsApp Image 2024-05-02 at 02 13 56_d5f57bab](https://github.com/karar0120/icon-tech-task/assets/92108624/41b5a6a7-e646-497e-b707-d8bd8b8b6464)
![WhatsApp Image 2024-05-02 at 02 13 55_54984117](https://github.com/karar0120/icon-tech-task/assets/92108624/c933917b-9c66-414d-b286-95a434426bb4)
![WhatsApp Image 2024-05-02 at 02 13 56_328a7ff5](https://github.com/karar0120/icon-tech-task/assets/92108624/ccd4f067-5477-4f60-aebc-69b8a6f4fcc6)
![WhatsApp Image 2024-05-02 at 02 13 56_719960c4](https://github.com/karar0120/icon-tech-task/assets/92108624/4d62f52a-6fc4-4c44-b352-4c8324dc354d)

## APK: https://drive.google.com/file/d/1-9Nk4gxXYhfxamqP39j3EkwxfPnci79A/view?usp=sharing
