###### Class com.ironsource.adqualitysdk.sdk.i.cb.b (com.ironsource.adqualitysdk.sdk.i.cb$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cb$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/az$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cb;->j()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/cb;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cb;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cb$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ｋ(Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;
    .registers 3
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

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/IUnityAdsListener;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/cb;->w(Lcom/unity3d/ads/IUnityAdsListener;)V

    const/4 p1, 0x0

    return-object p1
.end method
