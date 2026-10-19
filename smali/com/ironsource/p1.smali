###### Class com.json.p1 (com.ironsource.p1)
.class public abstract Lcom/ironsource/p1;
.super Lcom/ironsource/t1;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Listener::Lcom/ironsource/w;",
        ">",
        "Lcom/ironsource/t1<",
        "T",
        "Listener;",
        ">;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ironsource/pa;Lcom/ironsource/p;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;Lcom/ironsource/h0;Lcom/ironsource/d1;Lcom/ironsource/w;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/pa;",
            "Lcom/ironsource/p;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "**>;",
            "Lcom/ironsource/h0;",
            "Lcom/ironsource/d1;",
            "T",
            "Listener;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/ironsource/t1;-><init>(Lcom/ironsource/pa;Lcom/ironsource/p;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;Lcom/ironsource/h0;Lcom/ironsource/d1;Lcom/ironsource/a0;)V

    return-void
.end method

.method private O()V
    .registers 6

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/t1;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/t1;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object v3, Lcom/ironsource/t1$h;->f:Lcom/ironsource/t1$h;

    if-ne v2, v3, :cond_6e

    sget-object v0, Lcom/ironsource/t1$h;->a:Lcom/ironsource/t1$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_65

    const-string v0, ""

    iget-object v2, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v2}, Lcom/ironsource/p;->a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne v2, v3, :cond_5a

    iget-object v0, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    check-cast v0, Lcom/ironsource/w;

    invoke-interface {v0}, Lcom/ironsource/w;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "otherInstanceAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_51

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "true|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    :cond_51
    const-string v0, "false"

    :goto_53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5a
    iget-object v2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object v2, v2, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/t1;->X()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_c .. :try_end_66} :catchall_ae

    iget-object v0, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    check-cast v0, Lcom/ironsource/w;

    invoke-interface {v0, p0}, Lcom/ironsource/w;->a(Lcom/ironsource/p1;)V

    return-void

    :cond_6e
    :try_start_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected ad closed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_ac

    iget-object v0, v0, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected ad closed - state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/vc;->g(Ljava/lang/String;)V

    :cond_ac
    monitor-exit v1

    return-void

    :catchall_ae
    move-exception v0

    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_6e .. :try_end_b0} :catchall_ae

    throw v0
.end method

.method private d0()V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/t1;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/t1;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k;->c(Ljava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    check-cast v0, Lcom/ironsource/w;

    invoke-interface {v0, p0}, Lcom/ironsource/w;->c(Lcom/ironsource/p1;)V

    return-void
.end method

.method private e0()V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/t1;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/t1;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k;->j(Ljava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    check-cast v0, Lcom/ironsource/w;

    invoke-interface {v0, p0}, Lcom/ironsource/w;->b(Lcom/ironsource/p1;)V

    return-void
.end method

.method private f0()V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/t1;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/t1;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k;->g(Ljava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    check-cast v0, Lcom/ironsource/w;

    invoke-interface {v0, p0}, Lcom/ironsource/w;->d(Lcom/ironsource/p1;)V

    return-void
.end method

.method private g0()V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/t1;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/t1;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k;->h(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method static h0(Lcom/ironsource/t1$h;ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const-string p0, "unexpected show failed, state - %s, error - %d %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i0(Lcom/ironsource/p1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/p1;->O()V

    return-void
.end method

.method static synthetic j0(Lcom/ironsource/p1;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/p1;->k0(ILjava/lang/String;)V

    return-void
.end method

.method private k0(ILjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object v2, Lcom/ironsource/t1$h;->f:Lcom/ironsource/t1$h;

    if-ne v1, v2, :cond_49

    sget-object v0, Lcom/ironsource/t1$h;->g:Lcom/ironsource/t1$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_3c

    iget-object v0, v0, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/t1;->X()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/ironsource/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_3c
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    check-cast p1, Lcom/ironsource/w;

    invoke-interface {p1, v0, p0}, Lcom/ironsource/w;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/p1;)V

    goto :goto_5d

    :cond_49
    invoke-static {v1, p1, p2}, Lcom/ironsource/p1;->h0(Lcom/ironsource/t1$h;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz p2, :cond_5d

    iget-object p2, p2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {p2, p1}, Lcom/ironsource/vc;->o(Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method static synthetic l0(Lcom/ironsource/p1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/p1;->f0()V

    return-void
.end method

.method static synthetic m0(Lcom/ironsource/p1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/p1;->d0()V

    return-void
.end method

.method static synthetic n0(Lcom/ironsource/p1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/p1;->g0()V

    return-void
.end method

.method static synthetic o0(Lcom/ironsource/p1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/p1;->e0()V

    return-void
.end method


# virtual methods
.method public A()Z
    .registers 5

    iget-object v0, p0, Lcom/ironsource/t1;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    const/4 v1, 0x0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Lcom/ironsource/t1;->x()Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/ironsource/t1;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    instance-of v2, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;

    if-eqz v2, :cond_1b

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;

    iget-object v2, p0, Lcom/ironsource/t1;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-interface {v0, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;->isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z

    move-result v0

    return v0

    :cond_1b
    const-string v0, "isReadyToShow - adapter not instance of AdapterAdFullScreenInterface"

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v2, :cond_62

    iget-object v2, v2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {v2, v0}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_30

    goto :goto_62

    :catchall_30
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReadyToShow - exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - state = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v2, :cond_62

    iget-object v2, v2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {v2, v0}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V

    :cond_62
    :goto_62
    return v1
.end method

.method public a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 6

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placementName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :try_start_1e
    iput-object p2, p0, Lcom/ironsource/t1;->g:Lcom/ironsource/mediationsdk/model/Placement;

    sget-object p2, Lcom/ironsource/t1$h;->f:Lcom/ironsource/t1$h;

    invoke-virtual {p0, p2}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    iget-object p2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object p2, p2, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/t1;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/ironsource/k;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/t1;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    instance-of p2, p1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;

    if-eqz p2, :cond_3e

    check-cast p1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;

    iget-object p2, p0, Lcom/ironsource/t1;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-interface {p1, p2, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;->showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V

    goto :goto_95

    :cond_3e
    const-string p1, "showAd - adapter not instance of AdapterAdFullScreenInterface"

    invoke-virtual {p0, p1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz p2, :cond_95

    iget-object p2, p2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {p2, p1}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_1e .. :try_end_50} :catchall_51

    goto :goto_95

    :catchall_51
    move-exception p1

    sget-object p2, Lcom/ironsource/t1$h;->g:Lcom/ironsource/t1$h;

    invoke-virtual {p0, p2}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showAd - exception = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - state = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz p2, :cond_88

    iget-object p2, p2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {p2, p1}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V

    :cond_88
    iget-object p2, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {p2}, Lcom/ironsource/p;->a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p2

    invoke-static {p2}, Lcom/ironsource/s;->h(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/ironsource/p1;->onAdShowFailed(ILjava/lang/String;)V

    :cond_95
    :goto_95
    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {v0, p1}, Lcom/ironsource/k;->a(Z)V

    :cond_9
    return-void
.end method

.method public onAdClosed()V
    .registers 3

    invoke-virtual {p0}, Lcom/ironsource/t1;->b0()Lcom/ironsource/pa;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/p1;->O()V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/ironsource/t1;->b0()Lcom/ironsource/pa;

    move-result-object v0

    new-instance v1, Lcom/ironsource/p1$a;

    invoke-direct {v1, p0}, Lcom/ironsource/p1$a;-><init>(Lcom/ironsource/p1;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdEnded()V
    .registers 3

    invoke-virtual {p0}, Lcom/ironsource/t1;->b0()Lcom/ironsource/pa;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/p1;->d0()V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/ironsource/t1;->b0()Lcom/ironsource/pa;

    move-result-object v0

    new-instance v1, Lcom/ironsource/p1$c;

    invoke-direct {v1, p0}, Lcom/ironsource/p1$c;-><init>(Lcom/ironsource/p1;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdShowFailed(ILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/ironsource/t1;->b0()Lcom/ironsource/pa;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/ironsource/p1;->k0(ILjava/lang/String;)V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/ironsource/t1;->b0()Lcom/ironsource/pa;

    move-result-object v0

    new-instance v1, Lcom/ironsource/p1$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/p1$f;-><init>(Lcom/ironsource/p1;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdShowSuccess()V
    .registers 3

    invoke-virtual {p0}, Lcom/ironsource/t1;->b0()Lcom/ironsource/pa;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/p1;->e0()V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/ironsource/t1;->b0()Lcom/ironsource/pa;

    move-result-object v0

    new-instance v1, Lcom/ironsource/p1$e;

    invoke-direct {v1, p0}, Lcom/ironsource/p1$e;-><init>(Lcom/ironsource/p1;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdStarted()V
    .registers 3

    invoke-virtual {p0}, Lcom/ironsource/t1;->b0()Lcom/ironsource/pa;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/p1;->f0()V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/ironsource/t1;->b0()Lcom/ironsource/pa;

    move-result-object v0

    new-instance v1, Lcom/ironsource/p1$b;

    invoke-direct {v1, p0}, Lcom/ironsource/p1$b;-><init>(Lcom/ironsource/p1;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdVisible()V
    .registers 3

    invoke-virtual {p0}, Lcom/ironsource/t1;->b0()Lcom/ironsource/pa;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/ironsource/p1;->g0()V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/ironsource/t1;->b0()Lcom/ironsource/pa;

    move-result-object v0

    new-instance v1, Lcom/ironsource/p1$d;

    invoke-direct {v1, p0}, Lcom/ironsource/p1$d;-><init>(Lcom/ironsource/p1;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method
