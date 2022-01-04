<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="project0311.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height:100vh">
    <form id="form1" runat="server">
        <div class="form">
            <h1>בחר את המסמכים המתאימים</h1>
            <div class="input_div">
                <input type="file" id="file1" class="file" />
                <label for="file1"></label>
            </div>
            <div class="input_div">
                <input type="file" id="file2" class="file" />
                <label for="file2">asfasf</label>
            </div>
            <div class="input_div">
                <input type="file" id="file3" class="file" />
                <label for="file3">asfasf</label>
            </div>
            <div class="input_div">
                <input type="file" id="file4" class="file" />
                <label for="file4">asfasf</label>
            </div>

                        <asp:Button OnClick="ContinueBtn_Clicked" style="width:100px;margin-top:5%" class="btn btn-primary btn-block" runat="server"  Text="המשך"/>

        </div>
    </form>

    <style>
        .input_div{
            width:100%;
            display:flex;
            justify-content:space-around;
        }
        p {
            height:50px
        }
        label{
            height:50px
        }
        .form{
            display:flex;
            align-items:center;
            flex-direction:column;
            justify-content:space-between;
            height:50vh;
            width:50vw;
            margin-top:10vh;
            font-size:x-large;
            border: solid #277211 5px;
            border-radius:20%;
            padding:5vh 5vw 5vh 5vw;
        }
        .file{
            width:30vw;
        }
        form{
            display:flex;
            justify-content:center;
        }
        /*div{
            width:100%;
            display:flex;
            justify-content:center;
        }*/
     
    </style>

</body>
        <script>
            let ee;
            const addEventListenerToFile = (file, file_names_elements, i) => {
                file.addEventListener('change', (e) => {
                    // Get the selected file
                    const [file] = e.target.files;
                    // Get the file name and size
                    const { name: fileName, size } = file;
                    // Convert size in bytes to kilo bytes
                    const fileSize = (size / 1000).toFixed(2);
                    // Set the text content
                    const fileNameAndSize = `${fileName} - ${fileSize}KB`;
                    //document.querySelector('.file-name').textContent = fileNameAndSize;
                    //file.textContent = "Asfsaf"
                    //document.querySelector('input[name="' +i + '"]').textContent = fileNameAndSize;
                    //document.getElementsByName(i + "").textContent = fileNameAndSize;
                    file_names_elements[e.target.name].textContent = fileNameAndSize;
                    ee = e;
                });

            }


            const files = document.querySelectorAll('#file');
            const file_names = document.querySelectorAll('.file-name');
            for (var i = 0; i < files.length; i++) {
                file_names[i].name = i;
                files[i].name = i;
                addEventListenerToFile(files[i], file_names, i);
                
            }
            

</script>

</html>
