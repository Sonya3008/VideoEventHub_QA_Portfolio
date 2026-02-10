Примеры запросов:

Проверка сохранения события:
  
SELECT * FROM events WHERE camera_id = 1 ORDER BY created_at DESC;

Проверка отсутствия дублирования событий:
  
SELECT camera_id, timestamp, COUNT(*)
FROM events
GROUP BY camera_id, timestamp
HAVING COUNT(*) > 1;

Проверка архива:

SELECT * FROM video_archive WHERE camera_id = 1;
