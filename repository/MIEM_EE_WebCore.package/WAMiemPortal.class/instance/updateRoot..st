other
updateRoot: anHtmlRoot

    super updateRoot: anHtmlRoot.

    MiemCssLibrary default updateRoot: anHtmlRoot.

	anHtmlRoot stylesheet url: (MiemCssLibrary / #mainCss).

	anHtmlRoot javascript contents: SEWAFJavaScriptLibrary default jsExpandCollapseFunctions.