###### Class com.json.adapters.pangle.b (com.ironsource.adapters.pangle.b)
.class public final synthetic Lcom/ironsource/adapters/pangle/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

.field public final synthetic c:Lcom/ironsource/adapters/pangle/PangleAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Lcom/ironsource/adapters/pangle/PangleAdapter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/pangle/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ironsource/adapters/pangle/b;->b:Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

    iput-object p3, p0, Lcom/ironsource/adapters/pangle/b;->c:Lcom/ironsource/adapters/pangle/PangleAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adapters/pangle/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ironsource/adapters/pangle/b;->b:Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

    iget-object v2, p0, Lcom/ironsource/adapters/pangle/b;->c:Lcom/ironsource/adapters/pangle/PangleAdapter;

    invoke-static {v0, v1, v2}, Lcom/ironsource/adapters/pangle/PangleAdapter;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Lcom/ironsource/adapters/pangle/PangleAdapter;)V

    return-void
.end method
