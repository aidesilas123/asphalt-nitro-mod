###### Class com.ironsource.adqualitysdk.sdk.i.bg.t (com.ironsource.adqualitysdk.sdk.i.bg$t)
.class final Lcom/ironsource/adqualitysdk/sdk/i/bg$t;
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

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bg$t;->a:Lcom/ironsource/adqualitysdk/sdk/i/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ｋ(Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;
    .registers 5
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

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bg$t;->a:Lcom/ironsource/adqualitysdk/sdk/i/bg;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/bg;->W(Lcom/ironsource/adqualitysdk/sdk/i/bg;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Lcom/ironsource/adqualitysdk/sdk/i/bg$y;

    move-result-object p1

    return-object p1
.end method
