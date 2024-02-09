<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

if (isset($_FILES['file'])) {
    $filePath = "./img/" . 'image_file_' . time() . '.webp';
    move_uploaded_file($_FILES['file']['tmp_name'], $filePath);
    header('Content-Type: application/json');
    echo json_encode(['filePath' => $filePath]);
} else {
    header("HTTP/1.1 400 Bad Request");
    echo "No file uploaded.";
}
?>

<script>
document.onpaste = function (e) {
    var items = e.clipboardData.items;
    var files = [];
    for (var i = 0, len = items.length; i < len; ++i) {
        var item = items[i];
        if (item.kind === "file") {
            submitFileForm(item.getAsFile(), "paste");
        }
    }
};

function submitFileForm(file, type) {
    var extension = file.type.match(/\/([a-z0-9]+)/i)[1].toLowerCase();
    var formData = new FormData();
    formData.append('file', file, "image_file");
    formData.append('extension', extension);
    formData.append("mimetype", file.type);
    formData.append('submission-type', type);

    var xhr = new XMLHttpRequest();
    xhr.responseType = "text"; // Set responseType to 'text'
    xhr.open('POST', '<?php echo basename(__FILE__); ?>');

        xhr.onload = function () {
            if (xhr.status === 200) {
                var match = xhr.response.match(/\{.*\}/);
                if (match) try {
                    var jsonResponse = JSON.parse(match[0]);
                    if (jsonResponse && jsonResponse.filePath) window.location.href = jsonResponse.filePath;
                    else console.error('Error: "filePath" property not found or invalid in the response.');
                } catch (error) {
                    console.error('Error parsing JSON response:', error);
                }
                else console.error('Error: No valid JSON content found in the response.');
            } else console.error('Error uploading file.');
        };

    xhr.send(formData);
}
</script>