###### Class com.ironsource.adqualitysdk.sdk.i.be.q (com.ironsource.adqualitysdk.sdk.i.be$q)
.class final Lcom/ironsource/adqualitysdk/sdk/i/be$q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/az$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/be;->j()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/be;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/be;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/be$q;->a:Lcom/ironsource/adqualitysdk/sdk/i/be;

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

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/be$q;->a:Lcom/ironsource/adqualitysdk/sdk/i/be;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/sdk/AppLovinAd;

    invoke-static {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/be;->C(Lcom/ironsource/adqualitysdk/sdk/i/be;Lcom/applovin/sdk/AppLovinAd;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
