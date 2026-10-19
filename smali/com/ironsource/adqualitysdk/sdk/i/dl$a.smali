###### Class com.ironsource.adqualitysdk.sdk.i.dl.a (com.ironsource.adqualitysdk.sdk.i.dl$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/dl$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/dl$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/dl;->d(Ljava/util/List;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ironsource/adqualitysdk/sdk/i/dl$e<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Lcom/ironsource/adqualitysdk/sdk/i/dx;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/dl;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/dl;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ﾇ(Ljava/util/List;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/dl$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/dl;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dl;->A(Lcom/ironsource/adqualitysdk/sdk/i/dl;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
