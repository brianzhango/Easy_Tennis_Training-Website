using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ETT.Startup))]
namespace ETT
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
