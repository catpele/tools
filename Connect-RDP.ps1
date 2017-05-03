Function Connect-RDP {
    Param
    (
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Connection
    )
    do
    {
        $ConTest = (Test-NetConnection -ComputerName $Connection -CommonTCPPort RDP).TcpTestSucceeded
    }
    until ($ConTest -eq "True")
    mstsc /v:$Connection
}
