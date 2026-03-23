curl --location 'http://127.0.0.1:6689/generate' --header 'Content-Type: application/json' --data '{
"text": "甲乙从相同地点出发，甲先出发1小时且时速为5，乙后出发时速为6，甲出发后多久甲乙相遇？",
"sampling_params": {
"temperature": 0.6,
"max_new_tokens": 512
}
}'
