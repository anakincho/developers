using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(developers_task.Startup))]
namespace developers_task
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
