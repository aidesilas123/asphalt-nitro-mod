###### Class com.json.adapters.pangle.c (com.ironsource.adapters.pangle.c)
.class public final synthetic Lcom/ironsource/adapters/pangle/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

.field public final synthetic c:Lcom/ironsource/adapters/pangle/PangleBannerAdListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;Lcom/ironsource/adapters/pangle/PangleBannerAdListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/pangle/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/adapters/pangle/c;->b:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    iput-object p3, p0, Lcom/ironsource/adapters/pangle/c;->c:Lcom/ironsource/adapters/pangle/PangleBannerAdListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adapters/pangle/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/adapters/pangle/c;->b:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;

    iget-object v2, p0, Lcom/ironsource/adapters/pangle/c;->c:Lcom/ironsource/adapters/pangle/PangleBannerAdListener;

    invoke-static {v0, v1, v2}, Lcom/ironsource/adapters/pangle/PangleAdapter;->c(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerRequest;Lcom/ironsource/adapters/pangle/PangleBannerAdListener;)V

    return-void
.end method
