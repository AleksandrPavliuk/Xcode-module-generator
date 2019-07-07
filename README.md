## Xcode Module Generator

This is an NPM package to generate modules for use in Swift based projects.

### Module
_Module_ here is any file set. Usally iOS developers need such modules for architetrue of presentation layer (MVP + Flow coordinator here).

## Xcode
Project contains _TemplateEditor.xcodeproj_ - Xcode project with linked template files. There you can easily update/change template files, compiler will help you to catch errors.

![Image of Xcode](https://i.imgur.com/mxryIH2l.png) ![Image of Sim](https://i.imgur.com/anU1mtel.png)

## Installation

You can install it globally using NPM:
```bash
npm install -g https://github.com/AleksandrPavliuk/Xcode-module-generator.git
```

## Usage

Navigate to directory where the module needs to be created.

```bash
xmg create [ModuleName]
```

## Output

![Image of Output](https://i.imgur.com/qBfnY69.png)
