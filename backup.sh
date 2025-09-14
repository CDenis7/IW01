if [ -z "$1" ]; then
  echo "Error: Source directory not specified."
  echo "Usage: $0 <source_directory> [destination_directory]"
  exit 1
fi

SOURCE_DIR="$1"
DEST_DIR="${2:-/backup}"

if [ ! -d "$SOURCE_DIR" ]; then
  echo "Error: Source directory '$SOURCE_DIR' does not exist."
  exit 1
fi

if [ ! -d "$DEST_DIR" ]; then
  echo "Destination directory '$DEST_DIR' does not exist. Creating it..."
  mkdir -p "$DEST_DIR"
  if [ $? -ne 0 ]; then
    echo "Error: Could not create destination directory '$DEST_DIR'."
    exit 1
  fi
fi

CURRENT_DATE=$(date +%Y-%m-%d)
DIR_NAME=$(basename "$SOURCE_DIR")
BACKUP_FILENAME="${DIR_NAME}-${CURRENT_DATE}.tar.gz"
ARCHIVE_PATH="$DEST_DIR/$BACKUP_FILENAME"

echo "Backing up '$SOURCE_DIR' to '$ARCHIVE_PATH'..."

tar -czf "$ARCHIVE_PATH" -C "$(dirname "$SOURCE_DIR")" "$DIR_NAME"

if [ $? -eq 0 ]; then
  echo "Backup successful!"
else
  echo "Error: Backup failed."
  exit 1
fi
