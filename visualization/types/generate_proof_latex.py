#! /usr/bin/env python3

import sys, json, re, subprocess

greek = {
    'Α': '\\Alpha',
    'α': '\\alpha',
    'Β': '\\Beta',
    'β': '\\beta',
    'Γ': '\\Gamma',
    'γ': '\\gamma',
    'Δ': '\\Delta',
    'δ': '\\delta',
    'Ε': '\\Epsilon',
    'ε': '\\varepsilon',
    'Ζ': '\\Zeta',
    'ζ': '\\zeta',
    'Η': '\\Eta',
    'η': '\\eta',
    'Θ': '\\Theta',
    'θ': '\\theta',
    'Ι': '\\Iota',
    'ι': '\\iota',
    'Κ': '\\Kappa',
    'κ': '\\kappa',
    'Λ': '\\Lambda',
    'λ': '\\lambda',
    'Μ': '\\Mu',
    'μ': '\\mu',
    'Ν': '\\Nu',
    'ν': '\\nu',
    'Ξ': '\\Xi',
    'ξ': '\\xi',
    'Ο': '\\Omicron',
    'ο': '\\omicron',
    'Π': '\\Pi',
    'π': '\\pi',
    'Ρ': '\\Rho',
    'ρ': '\\rho',
    'Σ': '\\Sigma',
    'σ': '\\sigma',
    'Τ': '\\Tau',
    'τ': '\\tau',
    'Υ': '\\Upsilon',
    'υ': '\\upsilon',
    'Φ': '\\Phi',
    'φ': '\\varphi',
    'Χ': '\\Chi',
    'χ': '\\chi',
    'Ψ': '\\Psi',
    'ψ': '\\psi',
    'Ω': '\\Omega',
    'ω': '\\omega',
}

rules = {
    'Type' : '\\textsf{Type}',
    'Var': '\\textsf{Var}',
    'WF_0': '\\textsf{WF}_0',
    'WF_1': '\\textsf{WF}_1',
    'WF_2': '\\textsf{WF}_2',
    'App': '\\textsf{App}',
}

if len(sys.argv) < 2 or len(sys.argv) > 4 :
    print(f"Use: {sys.argv[0]} proof_file.json [paper_size police_size]")
    exit(0)

args = [None] * 4
for i, arg in enumerate(sys.argv) :
    args[i] = arg
if len(sys.argv) < 4 :
    args[3] = 'a3'
if len(sys.argv) < 3 :
    args[2] = '10'

file = args[1]

def convertToLaTeX(sentence) :
    match = re.findall(r"([α-ωΑ-Ω∀∃])", sentence)

    for m in match :
        if m == '∀' : 
            sentence = sentence.replace('∀', '\\forall')
        elif m == '∃' :
            sentence = sentence.replace('∃', '\\exists')
        else :
            sentence = sentence.replace(m, greek[m])

    match = re.findall(r"(.*) \* (.*)", sentence)
    for x, y in match :
        sentence = x + ' \\times ' + y

    for k, v in rules.items() :
        print(sentence, k in sentence)
        if k in sentence :
            sentence = sentence.replace(k, v)

    return sentence

def constructProofTree(data) :
    if data['localContext'] == "":
        data['localContext'] = '\\emptyset'

    children = []
    for child in data['children'] :
        children.append(constructProofTree(child))

    constructedString = '\n'.join(children) + '\n'

    sequent = '\\Gamma_G;' + convertToLaTeX(data['localContext'])
    cons = '\\text{ wf}'
    if data['consequence'] != '' :
        cons = '\\vdash ' + convertToLaTeX(data['consequence']) + ' : ' + convertToLaTeX(data['typeScheme'].replace('u003e', '\\rightarrow'))
        
    if len(data['children']) == 0 :
        constructedString += f"\\AXC{{}}\n\\RL{{${convertToLaTeX(data['rule'])}$}}\n"
        constructedString += f"\\UIC{{${sequent} {cons}$}}"
    else :
        constructedString += f"\\RL{{${convertToLaTeX(data['rule'])}$}}\n"
        if len(data['children']) == 1 :
            constructedString += f"\\UIC{{${sequent} {cons}$}}"
        elif len(data['children']) == 2 :
            constructedString += f"\\BIC{{${sequent} {cons}$}}"
        elif len(data['children']) == 3 :
            constructedString += f"\\TIC{{${sequent} {cons}$}}"
        elif len(data['children']) == 4 :
            constructedString += f"\\QuaternaryInf{{${sequent} {cons}$}}"
        elif len(data['children']) == 5 :
            constructedString += f"\\QuinaryInf{{${sequent} {cons}$}}"
        else :
            print(f"Error: {sys.argv[0]} doesn't manage more than 5 children.")
            exit(1)

    return constructedString


with open(file, "r") as f:
    data = json.load(f)
    with open("proof.tex", "w") as f:
        f.write(f"""
\\documentclass[{args[3]}paper,{args[2]}pt]{{article}}
\\usepackage[margin=0in,landscape]{{geometry}}
\\usepackage{{amsmath}}
\\usepackage{{bussproofs}}
\\EnableBpAbbreviations

\\begin{{document}}
    \\begin{{prooftree}}
        {constructProofTree(data)}
    \\end{{prooftree}}
\\end{{document}} 
        """)
    
    process = subprocess.Popen('make')
    if process.wait() == 0 :
        subprocess.Popen('make clean', shell=True)
        print('Proof generated: proof.pdf')