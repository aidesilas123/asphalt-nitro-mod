###### Class com.ironsource.adqualitysdk.sdk.i.bi.b (com.ironsource.adqualitysdk.sdk.i.bi$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/bi$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/az$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/bi;->j()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/bi;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/bi;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/bi;

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

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/bi;->p(Lcom/ironsource/adqualitysdk/sdk/i/bi;Lcom/ironsource/adqualitysdk/sdk/i/ch;)V

    const/4 p1, 0x0

    return-object p1
.end method
