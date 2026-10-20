###### Class com.applovin.impl.mediation.d.e.a.AnonymousClass1 (com.applovin.impl.mediation.d.e$a$1)
.class Lcom/applovin/impl/mediation/d/e$a$1;
.super Lcom/applovin/impl/mediation/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/d/e$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awR:Lcom/applovin/impl/mediation/d/e$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/d/e$a;Lcom/applovin/impl/mediation/ads/a$a;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/e/a;-><init>(Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/mediation/d/e$a$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/mediation/d/e$a$1;->zK()V

    return-void
.end method

.method private synthetic zK()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v0, v0, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/e;->j(Lcom/applovin/impl/mediation/d/e;)Lcom/applovin/impl/mediation/b/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/d/e;->b(Lcom/applovin/impl/mediation/d/e;Lcom/applovin/impl/mediation/b/a;)V

    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .registers 13
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/mediation/MaxError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {v2}, Lcom/applovin/impl/mediation/d/e$a;->a(Lcom/applovin/impl/mediation/d/e$a;)J

    move-result-wide v2

    sub-long v7, v0, v2

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/e$a;->h(Lcom/applovin/impl/mediation/d/e$a;)Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/e$a;->i(Lcom/applovin/impl/mediation/d/e$a;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {v1}, Lcom/applovin/impl/mediation/d/e$a;->c(Lcom/applovin/impl/mediation/d/e$a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {v3}, Lcom/applovin/impl/mediation/d/e$a;->d(Lcom/applovin/impl/mediation/d/e$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") failed to load in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v3, v3, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {v3}, Lcom/applovin/impl/mediation/d/e;->e(Lcom/applovin/impl/mediation/d/e;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ad unit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with error: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    iget-object p1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/mediation/d/e$a;->a(Lcom/applovin/impl/mediation/d/e$a;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v4, p1, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {p1}, Lcom/applovin/impl/mediation/d/e$a;->j(Lcom/applovin/impl/mediation/d/e$a;)Lcom/applovin/impl/mediation/b/a;

    move-result-object v5

    sget-object v6, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->FAILED_TO_LOAD:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Lcom/applovin/impl/mediation/d/e;->a(Lcom/applovin/impl/mediation/d/e;Lcom/applovin/impl/mediation/b/a;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object p1, p1, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {p1}, Lcom/applovin/impl/mediation/d/e;->k(Lcom/applovin/impl/mediation/d/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_9c

    return-void

    :cond_9c
    iget-object p1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object p1, p1, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {p1}, Lcom/applovin/impl/mediation/d/e;->j(Lcom/applovin/impl/mediation/d/e;)Lcom/applovin/impl/mediation/b/a;

    move-result-object p1

    if-eqz p1, :cond_c6

    iget-object p1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object p2, p1, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {p1}, Lcom/applovin/impl/mediation/d/e$a;->f(Lcom/applovin/impl/mediation/d/e$a;)Lcom/applovin/impl/mediation/d/e$b;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/applovin/impl/mediation/d/e;->b(Lcom/applovin/impl/mediation/d/e;Lcom/applovin/impl/mediation/d/e$b;)Lcom/applovin/impl/mediation/b/a;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {p2, p1}, Lcom/applovin/impl/mediation/d/e$a;->a(Lcom/applovin/impl/mediation/d/e$a;Lcom/applovin/impl/mediation/b/a;)Z

    move-result p1

    if-eqz p1, :cond_c6

    iget-object p1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object p1, p1, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {p1}, Lcom/applovin/impl/mediation/d/e;->j(Lcom/applovin/impl/mediation/d/e;)Lcom/applovin/impl/mediation/b/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/applovin/impl/mediation/d/e;->b(Lcom/applovin/impl/mediation/d/e;Lcom/applovin/impl/mediation/b/a;)V

    return-void

    :cond_c6
    iget-object p1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object p2, p1, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {p1}, Lcom/applovin/impl/mediation/d/e$a;->f(Lcom/applovin/impl/mediation/d/e$a;)Lcom/applovin/impl/mediation/d/e$b;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/applovin/impl/mediation/d/e;->c(Lcom/applovin/impl/mediation/d/e;Lcom/applovin/impl/mediation/d/e$b;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_102

    iget-object p1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object p1, p1, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {p1}, Lcom/applovin/impl/mediation/d/e;->h(Lcom/applovin/impl/mediation/d/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_102

    iget-object p1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object p1, p1, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {p1}, Lcom/applovin/impl/mediation/d/e;->i(Lcom/applovin/impl/mediation/d/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_102

    new-instance p1, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const/16 p2, -0x1389

    const-string v0, "MAX returned eligible ads from mediated networks, but all ads failed to load. Inspect getWaterfall() for more info."

    invoke-direct {p1, p2, v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object p2, p2, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {p2, p1}, Lcom/applovin/impl/mediation/d/e;->a(Lcom/applovin/impl/mediation/d/e;Lcom/applovin/mediation/MaxError;)V

    :cond_102
    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .registers 11
    .param p1    # Lcom/applovin/mediation/MaxAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    const-string v1, "loaded ad"

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/d/e$a;->a(Lcom/applovin/impl/mediation/d/e$a;Ljava/lang/String;)V

    check-cast p1, Lcom/applovin/impl/mediation/b/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {v2}, Lcom/applovin/impl/mediation/d/e$a;->a(Lcom/applovin/impl/mediation/d/e$a;)J

    move-result-wide v2

    sub-long v5, v0, v2

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/e$a;->b(Lcom/applovin/impl/mediation/d/e$a;)Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/e$a;->e(Lcom/applovin/impl/mediation/d/e$a;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {v1}, Lcom/applovin/impl/mediation/d/e$a;->c(Lcom/applovin/impl/mediation/d/e$a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {v3}, Lcom/applovin/impl/mediation/d/e$a;->d(Lcom/applovin/impl/mediation/d/e$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") loaded in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v3, v3, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {v3}, Lcom/applovin/impl/mediation/d/e;->e(Lcom/applovin/impl/mediation/d/e;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ad unit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v3, v3, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {v3}, Lcom/applovin/impl/mediation/d/e;->c(Lcom/applovin/impl/mediation/d/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v2, v0, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    sget-object v4, Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;->AD_LOADED:Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/applovin/impl/mediation/d/e;->a(Lcom/applovin/impl/mediation/d/e;Lcom/applovin/impl/mediation/b/a;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v1, v0, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/e$a;->f(Lcom/applovin/impl/mediation/d/e$a;)Lcom/applovin/impl/mediation/d/e$b;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/applovin/impl/mediation/d/e;->a(Lcom/applovin/impl/mediation/d/e;Lcom/applovin/impl/mediation/d/e$b;)V

    sget-object v0, Lcom/applovin/impl/mediation/d/e$b;->awS:Lcom/applovin/impl/mediation/d/e$b;

    iget-object v1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {v1}, Lcom/applovin/impl/mediation/d/e$a;->f(Lcom/applovin/impl/mediation/d/e$a;)Lcom/applovin/impl/mediation/d/e$b;

    move-result-object v1

    if-ne v0, v1, :cond_9f

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v0, v0, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/e;->h(Lcom/applovin/impl/mediation/d/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->xu()J

    move-result-wide v1

    goto :goto_af

    :cond_9f
    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v0, v0, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/e;->i(Lcom/applovin/impl/mediation/d/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->xt()J

    move-result-wide v1

    :goto_af
    if-nez v0, :cond_d7

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b8

    goto :goto_d7

    :cond_b8
    iget-object v3, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v3, v3, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {v3, p1}, Lcom/applovin/impl/mediation/d/e;->a(Lcom/applovin/impl/mediation/d/e;Lcom/applovin/impl/mediation/b/a;)Lcom/applovin/impl/mediation/b/a;

    if-gez v0, :cond_c2

    return-void

    :cond_c2
    iget-object p1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v0, p1, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {p1}, Lcom/applovin/impl/mediation/d/e$a;->g(Lcom/applovin/impl/mediation/d/e$a;)Lcom/applovin/impl/sdk/n;

    move-result-object p1

    new-instance v3, Lcom/applovin/impl/mediation/d/m;

    invoke-direct {v3, p0}, Lcom/applovin/impl/mediation/d/m;-><init>(Lcom/applovin/impl/mediation/d/e$a$1;)V

    invoke-static {v1, v2, p1, v3}, Lcom/applovin/impl/sdk/utils/r;->b(JLcom/applovin/impl/sdk/n;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/r;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/applovin/impl/mediation/d/e;->a(Lcom/applovin/impl/mediation/d/e;Lcom/applovin/impl/sdk/utils/r;)Lcom/applovin/impl/sdk/utils/r;

    return-void

    :cond_d7
    :goto_d7
    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    invoke-static {v0, p1}, Lcom/applovin/impl/mediation/d/e$a;->a(Lcom/applovin/impl/mediation/d/e$a;Lcom/applovin/impl/mediation/b/a;)Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v0, v0, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/e;->j(Lcom/applovin/impl/mediation/d/e;)Lcom/applovin/impl/mediation/b/a;

    move-result-object v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_f3

    :cond_eb
    iget-object v0, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v0, v0, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d/e;->j(Lcom/applovin/impl/mediation/d/e;)Lcom/applovin/impl/mediation/b/a;

    move-result-object v0

    :goto_f3
    iget-object v1, p0, Lcom/applovin/impl/mediation/d/e$a$1;->awR:Lcom/applovin/impl/mediation/d/e$a;

    iget-object v1, v1, Lcom/applovin/impl/mediation/d/e$a;->awQ:Lcom/applovin/impl/mediation/d/e;

    invoke-static {v1, p1, v0}, Lcom/applovin/impl/mediation/d/e;->a(Lcom/applovin/impl/mediation/d/e;Lcom/applovin/impl/mediation/b/a;Lcom/applovin/impl/mediation/b/a;)V

    return-void
.end method
