###### Class com.applovin.impl.sdk.v (com.applovin.impl.sdk.v)
.class public Lcom/applovin/impl/sdk/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aFh:Z


# direct methods
.method public static Fg()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/applovin/impl/sdk/v;->aFh:Z

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/sdk/n;)V
    .registers 1

    invoke-static {p0}, Lcom/applovin/impl/sdk/v;->x(Lcom/applovin/impl/sdk/n;)V

    return-void
.end method

.method public static w(Lcom/applovin/impl/sdk/n;)V
    .registers 7

    sget-object v0, Lcom/applovin/impl/sdk/c/a;->aKe:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/n;->BO()Lcom/applovin/impl/sdk/e/q;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/e/ab;

    const/4 v3, 0x1

    new-instance v4, Lcom/applovin/impl/sdk/w1;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/w1;-><init>(Lcom/applovin/impl/sdk/n;)V

    const-string v5, "submitIntegrationErrorReport"

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/applovin/impl/sdk/e/ab;-><init>(Lcom/applovin/impl/sdk/n;ZLjava/lang/String;Ljava/lang/Runnable;)V

    sget-object p0, Lcom/applovin/impl/sdk/e/q$b;->aUt:Lcom/applovin/impl/sdk/e/q$b;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;J)V

    return-void
.end method

.method private static synthetic x(Lcom/applovin/impl/sdk/n;)V
    .registers 4

    sget-boolean v0, Lcom/applovin/impl/sdk/v;->aFh:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object p0

    sget-object v0, Lcom/applovin/impl/sdk/r$a;->aEL:Lcom/applovin/impl/sdk/r$a;

    const/4 v1, 0x0

    const-string v2, "no_ads_loaded"

    invoke-virtual {p0, v0, v2, v1}, Lcom/applovin/impl/sdk/r;->a(Lcom/applovin/impl/sdk/r$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
