using Amazon.Lambda.PowerShellHost;

namespace demoapp
{
    public class Bootstrap : PowerShellFunctionHost
    {
        public Bootstrap() : base("demoapp.ps1")
        {
        }
    }
}
