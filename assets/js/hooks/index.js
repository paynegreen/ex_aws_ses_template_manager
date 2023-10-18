const Editor = {
  mounted() {
    this.editor = monaco.editor.create(this.el, {
      language: 'html',
      formatDocument: true,
      automaticLayout: true, minimap: {
        enabled: false
      }
    })
  },
  destroyed() {
    this.editor.dispose()
  }
}


export default { Editor }
