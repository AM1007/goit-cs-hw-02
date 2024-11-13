#!/bin/bash

# Визначаємо шлях до папки task_01 та файл для логів
LOG_FILE="$(dirname "$0")/website_status.log"

# Перевіряємо, чи існує папка, і якщо ні, створюємо її
mkdir -p "$(dirname "$LOG_FILE")"

# Очищуємо файл логів перед початком роботи
> "$LOG_FILE"

# Масив веб-сайтів для перевірки
websites=(
    "https://google.com"
    "https://facebook.com"
    "https://twitter.com"
)

# Функція для перевірки доступності сайту
check_website() {
    local url=$1
    http_code=$(curl -L -s -o /dev/null -w '%{http_code}' "$url")
    
    if [ "$http_code" -eq 200 ]; then
        echo "$url is UP"
        echo "$url is UP" >> "$LOG_FILE"
    else
        echo "$url is DOWN (HTTP code: $http_code)"
        echo "$url is DOWN (HTTP code: $http_code)" >> "$LOG_FILE"
    fi
}

# Виводимо початкове повідомлення
echo "Починаємо перевірку веб-сайтів..."
echo "Перевірка розпочата: $(date)" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Перевіряємо кожен сайт
for site in "${websites[@]}"; do
    check_website "$site"
done

# Додаємо порожній рядок та часову мітку завершення
echo "" >> "$LOG_FILE"
echo "Перевірка завершена: $(date)" >> "$LOG_FILE"

echo -e "\nРезультати перевірки записано у файл: $LOG_FILE"
