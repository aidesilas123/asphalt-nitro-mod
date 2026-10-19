###### Class com.ironsource.adqualitysdk.sdk.i.bh.i (com.ironsource.adqualitysdk.sdk.i.bh$i)
.class final Lcom/ironsource/adqualitysdk/sdk/i/bh$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/az$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/bh;->j()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/bh;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bh$i;->a:Lcom/ironsource/adqualitysdk/sdk/i/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ｋ(Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ch;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    invoke-static {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/bh;->z(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressView;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    const/4 p1, 0x0

    return-object p1
.end method
