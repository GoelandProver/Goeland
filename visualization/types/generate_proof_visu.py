#! /usr/bin/env python3

import sys, json, re, sass

class Cell:
    def __init__(self, string, rule):
        self.string = string
        self.rule = rule

    def toString(self, depth) :
        add = ''
        if depth == 0 : add = 'style="border-bottom: none"'
        string = f"<span {add} span-rule='{self.rule}'>" + self.string + "</span>" 
        return string 

if len(sys.argv) != 2 :
    print(f"Use: {sys.argv[0]} proof_file.json")
    exit(0)

file = sys.argv[1]

def subify(string) :
    m = re.findall(r"([^_]+)_(.)", string)
    for x, y in m :
        string = string.replace(f"{x}_{y}", f"{x}<sub>{y}</sub>")
    return string

def addCellsWithData(data, depth = 0) :
    if data['localContext'] == "":
        data['localContext'] = '∅'

    cons = "wf"
    if data['consequence'] != "":
        cons = "⊢ " + subify(data['consequence']) + " : " + subify(data['typeScheme'].replace('u003e', '⟶'))
    cell = Cell(f"{subify('Γ_G')};{subify(data['localContext'])} {cons}", subify(data['rule']))

    currentDiv = "<li>" + cell.toString(depth) + "<ul>"
    for child in reversed(data['children']) :
        currentDiv += addCellsWithData(child, depth + 1)
    currentDiv += "</ul></li>"

    return currentDiv

with open(file, "r") as f:
    data = json.load(f)
    with open("index.css", "w") as f:
        f.write(sass.compile(string="""
    body {
        font-family: sans-serif;
        font-size: 15px;
    }

    $border-width: .5px;
    $reverse: true;

    .tree {
        @if $reverse {
            transform: rotate(180deg);
            transform-origin: 50%;
        }
    }

    .tree ul {
        position: relative;
        padding: 1em 0; 
        padding-top: 0;
        white-space: nowrap;
        margin: 0 auto;
        text-align: center;
        &::after {
            content: '';
            display: table;
            clear: both;
        }
    }

    .tree li {
        display: inline-block; // need white-space fix
        vertical-align: top;
        text-align: center;
        list-style-type: none;
        position: relative;
        &::before,
        &::after {
            content: '';
            position: absolute; 
            top: 0; 
            right: 50%;
            border-top: $border-width solid black;
            width: 50%; 
            height: 1em;
        }
        
        &::after {
            right: auto; 
            left: 50%;
        }
        &:only-child::after,
        &:only-child::before {
            display: none;
        }
        &:only-child {
            padding-top: 0;
        }
        &:first-child::before,
        &:last-child::after {
            border: 0 none;
        }
    }

    .tree li span {
        padding: .1em .75em;
        text-decoration: none;
        display: inline-block;
        color: #333;
        position: relative;
        top: $border-width;
        border-bottom: $border-width solid black;
        border-top: $border-width solid black;
        @if $reverse {
            transform: rotate(180deg);
        }
    }

    .rule {
        position: absolute;
        top: -10px;
        right: -35px;
    }
                    """))

    with open("index.html", "w") as f:
        f.write(
            f"""
    <!DOCTYPE html>
        <html>
            <head>
                <meta http-equiv="content-type" content="text/html; charset=UTF-8">
                <title>Visualizing {file}</title>
                <link href="index.css" rel="stylesheet">
            </head>
        <body>
            <div class="tree">
                <ul>{addCellsWithData(data)}</ul>
            </div>
        </body>
        <script>
        document.querySelectorAll("span").forEach(function (el) {{
            li = el.parentNode.getElementsByTagName("ul")[0].getElementsByTagName("li")[0]
            let offset = document.createElement("span")
            offset.innerHTML = el.getAttribute("span-rule")
            el.appendChild(offset)

            offset.style.font = "times new roman";
            offset.style.fontSize = 12 + "px";
            offset.style.height = 'auto';
            offset.style.width = 'auto';
            offset.style.position = 'absolute';
            offset.style.whiteSpace = 'no-wrap';

            const w = offset.clientWidth;
            const h = offset.clientHeight
            el.removeChild(offset)
            let div = document.createElement("div")
            div.innerHTML = el.getAttribute("span-rule")
            if (li !== undefined) {{
                span = li.getElementsByTagName("span")[0]
                div.style.position = "absolute"
                div.style.right = (-w).toString() + "px"
                div.style.bottom = (-h/2).toString() + "px"
                span.appendChild(div)
            }}
            else {{
                el.appendChild(div)
                div.classList.add("rule")
            }}
        }})
        </script>
    </html>
            """
        )