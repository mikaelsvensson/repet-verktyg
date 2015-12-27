param ($xml, $xsl, $output)

if (-not $xml -or -not $xsl -or -not $output)
{
	Write-Host "& .\xslt.ps1 [-xml] xml-input [-xsl] xsl-input [-output] transform-output"
	exit;
}

trap [Exception]
{
	Write-Host $_.Exception;
}

[System.IO.Directory]::SetCurrentDirectory($(get-location))

$xslt = New-Object System.Xml.Xsl.XslCompiledTransform;
$xslt.Load($xsl);
$xslt.Transform($xml, $output);

Write-Host "Sparade resultat som " $output;