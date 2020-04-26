<script>
    Dropzone.options.myDropzone = {
        init: function() {
            thisDropzone = this;
            $.get('/api/upload/1/', function(data) {
                $.each(data, function(key,value){
                    var mockFile = { name: value.name, size: value.size };
                    thisDropzone.options.addedfile.call(thisDropzone, mockFile);
                    thisDropzone.options.thumbnail.call(thisDropzone, mockFile, "/uploads/propiedades/1/"+value.name);
                });
            });
        }
    };
</script>
<form action="/api/upload/1/" class="dropzone"  id="my-dropzone"></form>
