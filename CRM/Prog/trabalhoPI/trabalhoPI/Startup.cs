using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(trabalhoPI.Startup))]
namespace trabalhoPI
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
