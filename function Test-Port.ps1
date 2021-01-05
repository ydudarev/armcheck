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
    Test-Port -Address 8.8.8.8 -Port 80
    Test-Port -Address 8.8.8.8 -Port 443