###### Class com.json.adapters.pangle.f (com.ironsource.adapters.pangle.f)
.class public final synthetic Lcom/ironsource/adapters/pangle/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

.field public final synthetic b:Lcom/ironsource/adapters/pangle/PangleAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;Lcom/ironsource/adapters/pangle/PangleAdapter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/pangle/f;->a:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    iput-object p2, p0, Lcom/ironsource/adapters/pangle/f;->b:Lcom/ironsource/adapters/pangle/PangleAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/pangle/f;->a:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    iget-object v1, p0, Lcom/ironsource/adapters/pangle/f;->b:Lcom/ironsource/adapters/pangle/PangleAdapter;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/pangle/PangleAdapter;->f(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;Lcom/ironsource/adapters/pangle/PangleAdapter;)V

    return-void
.end method
