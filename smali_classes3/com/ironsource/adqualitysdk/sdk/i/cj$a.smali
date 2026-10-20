###### Class com.ironsource.adqualitysdk.sdk.i.cj.a (com.ironsource.adqualitysdk.sdk.i.cj$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cj$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ch;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cj;->a()Lcom/ironsource/adqualitysdk/sdk/i/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/cj;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cj;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->K(Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/lang/String;ZZLjava/util/List;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;

    invoke-direct {v3, p0, p1, v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj$a;Ljava/lang/String;ZLjava/util/List;)V

    invoke-static {v0, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->v(Lcom/ironsource/adqualitysdk/sdk/i/cj;Lcom/ironsource/adqualitysdk/sdk/i/ig;Z)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cj$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/cj;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/cj$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cj$a;Ljava/lang/String;ZLjava/util/List;)V

    invoke-static {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cj;->v(Lcom/ironsource/adqualitysdk/sdk/i/cj;Lcom/ironsource/adqualitysdk/sdk/i/ig;Z)V

    return-void
.end method
