<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="RMS.z_misc.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/frameworks-e53fc1ddbde2a9e5645df620f65c80ef723c741b33293b6f22a2b7f2c8145fcf.css" integrity="sha256-5T/B3b3iqeVkXfYg9lyA73I8dBszKTtvIqK38sgUX88=" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-8fd3f509ca0995390abdb9f0dfe5b79d1af6ed1ac09c75ba2d68b29b82cadf8d.css" integrity="sha256-j9P1CcoJlTkKvbnw3+W3nRr27RrAnHW6LWiym4LK340=" media="all" rel="stylesheet" />
    
    <link as="script" href="https://assets-cdn.github.com/assets/frameworks-404cdd1add1f710db016a02e5e31fff8a9089d14ff0c227df862b780886db7d5.js" rel="preload" />
    
    <link as="script" href="https://assets-cdn.github.com/assets/github-8951b8889d701a8bda73fa44510fb2d70dd306d2251977e1172a78d7459cd594.js" rel="preload" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Bootstrap Tree View - DOM Tree</h1>
            <br />
            <div class="row">
                <div class="col-sm-12">
                    <label for="treeview"></label>
                    <div id="treeview" />
                    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                    <asp:TreeView ID="treeview" runat="server" ShowExpandCollapse="true"></asp:TreeView>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            function buildDomTree() {
                var data = [];
                function walk(nodes, data) {
                    if (!nodes) { return; }
                    $.each(nodes, function (id, node) {
                        var obj = {
                            id: id,
                            text: node.nodeName + " - " + (node.innerText ? node.innerText : ''),
                            tags: [node.childElementCount > 0 ? node.childElementCount + ' child elements' : '']
                        };
                        if (node.childElementCount > 0) {
                            obj.nodes = [];
                            walk(node.children, obj.nodes);
                        }
                        data.push(obj);
                    });
                }
                walk($('html')[0].children, data);
                return data;
            }
            $(function () {
                var options = {
                    bootstrap2: false,
                    showTags: true,
                    levels: 5,
                    data: buildDomTree()
                };
                $('#treeview').treeview(options);
            });
        </script>
    </form>
</body>
</html>
