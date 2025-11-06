# Isso Comment Server

This is a lightweight, privacy-focused comment server for anonymous commenting.

## Features

- Anonymous commenting (no registration required)
- Optional name/email fields
- Spam protection and rate limiting
- Admin interface for moderation
- Multi-language support
- CORS enabled for cross-origin requests

## Deployment

This server is configured to deploy on **Render.com** (free tier).

### Files

- `Dockerfile` - Container configuration
- `isso.conf` - Isso server configuration
- `README.md` - This file

### Configuration

- **Port**: 10000 (Render.com requirement)
- **Database**: SQLite in `/tmp/comments.db`
- **Admin**: Enabled at `/admin` with password protection
- **Rate limiting**: Enabled (2 comments per minute)
- **Anonymous posting**: Enabled
- **CORS**: Enabled for cross-origin requests (required for delete operations)
- **Delete permission**: Users can delete their own comments within 15 minutes

## Admin Access

Access the admin interface at: `https://your-isso-url.onrender.com/admin`

Default password: `your-secure-admin-password-123` (change this!)

## CORS Configuration

Update the `host` field in `isso.conf` with your blog domain after deployment.