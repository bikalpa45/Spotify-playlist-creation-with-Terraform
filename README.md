# Spotify-playlist-creation-with-Terraform

This project allows you to create and manage Spotify playlists using Terraform. It utilizes the [`terraform-provider-spotify`](https://github.com/conradludgate/terraform-provider-spotify) along with a lightweight [OAuth2 authentication proxy](https://github.com/conradludgate/spotify-auth-proxy).

---

## 🚀 Features

- 🔍 Search for tracks by artist name
- 🎧 Automatically create a public Spotify playlist
- 🔐 Secure OAuth2 authorization using a Docker container

---

## 📦 Requirements

- [Terraform](https://www.terraform.io/downloads)
- [Docker](https://www.docker.com/)
- A **Spotify Developer Account** with `CLIENT_ID` and `CLIENT_SECRET`

---

## 🔐 Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/terraform-spotify.git
cd terraform-spotify
2. Create a .env file
This is used by the Spotify Auth Proxy:

env
Copy
Edit
SPOTIFY_CLIENT_ID=your_spotify_client_id
SPOTIFY_CLIENT_SECRET=your_spotify_client_secret
SPOTIFY_CLIENT_REDIRECT_URI=http://localhost:27228/spotify_callback
⚠️ Never commit your .env file!

3. Run the Spotify OAuth Proxy
bash
Copy
Edit
docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy
After running, you'll see:

APIKey: Copy this and save it.

Auth URL: Open in your browser to authorize access to your Spotify account.

Once authorized, the server will display Authorization successful.

4. Add the API Key to terraform.tfvars
Create a file terraform.tfvars:

hcl
Copy
Edit
spotify_api_key = "your-api-key-from-auth-proxy"
📁 Project Structure

terraform-spotify/
├── main.tf
├── playlist.tf
├── variables.tf
├── terraform.tfvars        
├── .env                    
├── .gitignore
└── README.md
🛠 Usage
Initialize and apply the configuration:

terraform init
terraform plan
terraform apply
