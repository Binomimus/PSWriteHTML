﻿Import-Module .\PSWriteHTML.psd1 -Force

New-HTML -TitleText 'My diagram' -FilePath $PSScriptRoot\Example-Easy4.html {
    # New-HTMLTab -Name "Test" {
    New-HTMLDiagram -Height '300px' {
        New-DiagramNode -Label 'One node' -To 'Second node', 'Third node' -ColorBackground Bisque
        New-DiagramNode -Label 'Second node'
        New-DiagramNode -Label 'Third node' -IconBrands amazon -IconColor Brown #-IconAsImage
        New-DiagramNode -Label 'Fourth node' -IconRegular building -IconColor Brown #-IconAsImage
        New-DiagramNode -Label 'Fifth node' -IconSolid align-left -IconColor Brown #-IconAsImage
        New-DiagramNode -Label 'Bart Simson' -Image 'https://cdn.imgbin.com/5/2/1/imgbin-bart-simpson-homer-simpson-supreme-drawing-bart-simpson-bard-simpsons-jAfrtPtYNPTK5rQrcKULn5XBn.jpg' -To 'Second node'
    } -EnableFiltering -MinimumFilteringChars 3

    # }
    # New-HTMLTab -Name 'Test2' {
    New-HTMLDiagram -Height '300px' {
        New-DiagramNode -Label 'One node' -To 'Second node', 'Third node' -ColorBackground Bisque
        New-DiagramNode -Label 'Second node'
        New-DiagramNode -Label 'Third node' -IconBrands amazon -IconColor Brown #-IconAsImage
        New-DiagramNode -Label 'Fourth node' -IconRegular building -IconColor Brown #-IconAsImage
        New-DiagramNode -Label 'Fifth node' -IconSolid align-left -IconColor Brown #-IconAsImage
        New-DiagramNode -Label 'Bart Simson' -Image 'https://cdn.imgbin.com/5/2/1/imgbin-bart-simpson-homer-simpson-supreme-drawing-bart-simpson-bard-simpsons-jAfrtPtYNPTK5rQrcKULn5XBn.jpg' -To 'Second node'
    } -EnableFiltering -MinimumFilteringChars 1
    #  }
} -ShowHTML -Online