###### Class com.ironsource.adqualitysdk.sdk.i.bd.i (com.ironsource.adqualitysdk.sdk.i.bd$i)
.class final Lcom/ironsource/adqualitysdk/sdk/i/bd$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/az$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/bd;->j()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/bd;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/bd;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bd$i;->a:Lcom/ironsource/adqualitysdk/sdk/i/bd;

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

    check-cast p2, Lio/bidmachine/interstitial/InterstitialAd;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/interstitial/InterstitialListener;

    invoke-static {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/bd;->r(Lio/bidmachine/interstitial/InterstitialAd;Lio/bidmachine/interstitial/InterstitialListener;)V

    const/4 p1, 0x0

    return-object p1
.end method
