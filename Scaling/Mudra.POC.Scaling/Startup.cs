using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Mudra.POC.Scaling.Startup))]
namespace Mudra.POC.Scaling
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
