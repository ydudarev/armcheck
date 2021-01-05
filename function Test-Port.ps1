function Test-Port
{
    param
    (
        $Address,
        $Port
    )
    $tcpClient = new-object Net.Sockets.TcpClient
    try
    {
        $tcpClient.Connect("$Address", $Port)
        $true
    }
    catch
    {
        $false
    }
    finally
    {
        $tcpClient.Dispose()
    }
}

    Test-Port -Address localhost -Port 80
    Test-Port -Address localhost -Port 81
