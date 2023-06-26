using Azure;
using Azure.AI.Language.Conversations;

ConsoleApp
.CreateBuilder(args)
.ConfigureServices((context, services) =>
{
    var endpoint = new Uri(context.Configuration["CognitiveServices:Endpoint"] ?? "");
    var credential = new AzureKeyCredential(context.Configuration["CognitiveServices:SubscriptionKey"] ?? "");
    var client = new ConversationAnalysisClient(endpoint, credential);
    services.AddSingleton(client);
})
.Build()
.AddCommands<Commands>()
.Run();