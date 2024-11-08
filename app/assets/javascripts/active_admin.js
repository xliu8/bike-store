//= require active_admin/base
//= require trix
//= require actiontext
require("trix")
require("@rails/actiontext")
//= require activeadmin/quill_editor/quill
//= require activeadmin/quill_editor_input
require('activeadmin_quill_editor')
document.addEventListener("DOMContentLoaded", function() {
    var quillEditor = document.querySelector(".quill-editor");
    if (quillEditor) {
      var quill = new Quill(quillEditor, {
        theme: "snow"
      });
  

      quill.on("text-change", function() {
        document.querySelector("input[name='page[content]']").value = quill.root.innerHTML;
      });
    }
  });
  