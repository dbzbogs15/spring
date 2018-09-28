<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ckfinder/ckfinder.js"></script>
</head>
<body>
	<form style="margin-right: auto; margin-left: auto; display: block; padding-left: 25%"
		action="${pageContext.request.contextPath}/post/addpost" method="post">
		<br /> <img id="imgpreview"
			style="width: 710px; height: 448px;"
			src="https://yt3.ggpht.com/-f6NCDKG2Ukw/AAAAAAAAAAI/AAAAAAAAAAA/MqMm3rgmqCY/s48-c-k-no-mo-rj-c0xffffff/photo.jpg"
			class="img-fluid" style="max-width: 300px; max-height: 300px;" /> <br />
		<strong id="xImagePath">Ảnh bài viết</strong><br /> <input
			type="button" value="Browse Image"
			onclick="BrowseServer( 'Images:/', 'xImagePath' );" /> <label>Tên
			bài viết</label> <input name="name" /> <label>Summary</label> <input
			name="summary" /> <input name="image" type="hidden" id="addlink"
			value="" /> <br />
		<div style="margin-right: auto; margin-left: auto; display: block;">
			<textarea name="content" rows="200" cols="10" id="editor"></textarea>
		</div>
		<input style="width: 100px; height: 50px" type="submit" name="submit" value="submit" />
	</form>
	<script type="text/javascript">
		var editor = CKEDITOR.replace('editor', {
				filebrowserBrowseUrl : '<%=request.getContextPath()%>/resources/ckfinder.jsp',
				filebrowserImageBrowseUrl : '<%=request.getContextPath()%>/resources/ckfinder/ckfinder.jsp?type=Images&CKEditor=editor&CKEditorFuncNum=1&langCode=vi',
				filebrowserFlashBrowseUrl : '<%=request.getContextPath()%>/resourcesckfinder/ckfinder.jsp?type=Flash',
				filebrowserUploadUrl : '<%=request.getContextPath()%>/resources/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
				filebrowserImageUploadUrl : '<%=request.getContextPath()%>/resources/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
				filebrowserFlashUploadUrl : '<%=request.getContextPath()%>/resources/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'		
		});
		CKFinder.setupCKEditor(editor, '<%=request.getContextPath()%>/resources/ckfinder/');
	</script>
	<script>
		function BrowseServer(startupPath, functionData) {
			// You can use the "CKFinder" class to render CKFinder in a page:
			var finder = new CKFinder();

			// The path for the installation of CKFinder (default = "/ckfinder/").
			finder.basePath = '../';

			//Startup path in a form: "Type:/path/to/directory/"
			finder.startupPath = startupPath;

			// Name of a function which is called when a file is selected in CKFinder.
			finder.selectActionFunction = SetFileField;

			// Additional data to be passed to the selectActionFunction in a second argument.
			// We'll use this feature to pass the Id of a field that will be updated.
			finder.selectActionData = functionData;

			// Name of a function which is called when a thumbnail is selected in CKFinder. Preview img
			// finder.selectThumbnailActionFunction = ShowThumbnails;

			// Launch CKFinder
			finder.popup();
		}

		// This is a sample function which is called when a file is selected in CKFinder.
		function SetFileField(fileUrl, data) {
			document.getElementById(data["selectActionData"]).innerHTML = this
					.getSelectedFile().name;
			document.getElementById("imgpreview").src = fileUrl;
			document.getElementById("addlink").setAttribute('value', fileUrl);
		}
		/*Avatar end*/
	</script>
</body>
</html>