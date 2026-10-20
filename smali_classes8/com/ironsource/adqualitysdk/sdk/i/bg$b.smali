###### Class com.ironsource.adqualitysdk.sdk.i.bg.b (com.ironsource.adqualitysdk.sdk.i.bg$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/bg$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/az$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/bg;->j()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/bg;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/bg;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bg$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/bg;

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

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/bg;->P()Lcom/amazon/device/ads/DTBFetchFactory;

    move-result-object p1

    return-object p1
.end method
