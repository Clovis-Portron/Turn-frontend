<app-chapters>
    <app-chapteritem each="{ chapter in chapters }" chapter="{ chapter }"></app-chapteritem>

    <script>
        var tag = this;

        tag.chapters = null;

        tag.on("before-mount", function()
        {
            tag.chapters = tag.opts.chapters;

            if(tag.chapters == null)
                throw new Error("Chapters cant be null.");
        })
    </script>
</app-chapters>