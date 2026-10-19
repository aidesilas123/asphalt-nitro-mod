###### Class com.json.o1 (com.ironsource.o1)
.class public abstract Lcom/ironsource/o1;
.super Lcom/ironsource/q1;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Smash:",
        "Lcom/ironsource/p1<",
        "*>;",
        "Listener::Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdInteractionListener;",
        ">",
        "Lcom/ironsource/q1<",
        "TSmash;T",
        "Listener;",
        ">;",
        "Lcom/ironsource/w;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/ironsource/l;Lcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/q1;-><init>(Lcom/ironsource/l;Lcom/ironsource/o8;Lcom/ironsource/mediationsdk/IronSourceSegment;Z)V

    return-void
.end method

.method private t0(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TSmash;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/p1;

    invoke-virtual {v1}, Lcom/ironsource/t1;->e()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/t1;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private u0(Landroid/app/Activity;Lcom/ironsource/p1;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ironsource/p1<",
            "*>;",
            "Lcom/ironsource/mediationsdk/model/Placement;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v0}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/y;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/q1;->r:Lcom/ironsource/k4;

    invoke-virtual {v0}, Lcom/ironsource/k4;->a()V

    :cond_11
    invoke-virtual {p2, p1, p3}, Lcom/ironsource/p1;->a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method private v0(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/p1;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
            "Lcom/ironsource/p1<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v0, v0, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/q1;->f0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/ironsource/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ironsource/q1;->q:Lcom/ironsource/z;

    invoke-virtual {p3}, Lcom/ironsource/z;->e()V

    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Lcom/ironsource/t1;->f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p2

    goto :goto_20

    :cond_1f
    const/4 p2, 0x0

    :goto_20
    iget-object p3, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/x;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    iget-object p1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {p1}, Lcom/ironsource/l;->h()Lcom/ironsource/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/y;->e()Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->Q(Z)V

    :cond_35
    return-void
.end method

.method private w0(Lcom/ironsource/mediationsdk/logger/IronSourceError;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ironsource/o1;->v0(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/p1;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic x0(Lcom/ironsource/o1;Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/o1;->z0(Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method

.method private y0(Lcom/ironsource/p1;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSmash;",
            "Ljava/util/List<",
            "TSmash;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/p1;

    if-eqz p1, :cond_19

    if-ne v0, p1, :cond_19

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ironsource/p1;->b(Z)V

    goto :goto_3c

    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/p1;->b(Z)V

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - not ready to show"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_4

    :cond_3c
    :goto_3c
    return-void
.end method

.method private z0(Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 9

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1f
    iput-object p2, p0, Lcom/ironsource/q1;->i:Lcom/ironsource/mediationsdk/model/Placement;

    iget-object v1, p0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v1, v1, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/q1;->f0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/k;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    sget-object v2, Lcom/ironsource/q1$f;->f:Lcom/ironsource/q1$f;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_45

    const-string p2, "can\'t show ad while an ad is already showing"

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-object v4, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v4}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/s;->g(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v4

    invoke-direct {v1, v4, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_aa

    :cond_45
    sget-object v4, Lcom/ironsource/q1$f;->e:Lcom/ironsource/q1$f;

    if-eq v1, v4, :cond_53

    const-string p2, "show called while no ads are available"

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v4, 0x1fd

    invoke-direct {v1, v4, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_aa

    :cond_53
    if-nez p2, :cond_67

    const-string p2, "empty default placement"

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-object v4, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v4}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/s;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v4

    invoke-direct {v1, v4, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_aa

    :cond_67
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v5}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/ironsource/mediationsdk/utils/b;->b(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v1

    if-eqz v1, :cond_a9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placement "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is capped"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-object v4, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v4}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v4

    invoke-static {v4}, Lcom/ironsource/s;->f(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v4

    invoke-direct {v1, v4, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_aa

    :cond_a9
    move-object v1, v3

    :goto_aa
    if-eqz v1, :cond_bf

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p2, ""

    :goto_bb
    invoke-direct {p0, v1, p2}, Lcom/ironsource/o1;->w0(Lcom/ironsource/mediationsdk/logger/IronSourceError;Ljava/lang/String;)V

    goto :goto_f5

    :cond_bf
    iget-object p2, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {p2}, Lcom/ironsource/gd;->b()Ljava/util/List;

    move-result-object p2

    new-instance v1, Lcom/ironsource/jd;

    iget-object v3, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-direct {v1, v3}, Lcom/ironsource/jd;-><init>(Lcom/ironsource/l;)V

    invoke-virtual {v1, p2}, Lcom/ironsource/jd;->c(Ljava/util/List;)Lcom/ironsource/t1;

    move-result-object v3

    check-cast v3, Lcom/ironsource/p1;

    invoke-virtual {v1, p2}, Lcom/ironsource/jd;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/ironsource/o1;->y0(Lcom/ironsource/p1;Ljava/util/List;)V

    if-eqz v3, :cond_e2

    invoke-virtual {p0, v2}, Lcom/ironsource/q1;->w(Lcom/ironsource/q1$f;)V

    invoke-virtual {p0, v3}, Lcom/ironsource/q1;->d0(Lcom/ironsource/t1;)V

    goto :goto_f5

    :cond_e2
    iget-object v1, p0, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v1}, Lcom/ironsource/l;->b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/ironsource/o1;->t0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    goto :goto_bb

    :goto_f5
    monitor-exit v0
    :try_end_f6
    .catchall {:try_start_1f .. :try_end_f6} :catchall_fe

    if-eqz v3, :cond_fd

    iget-object p2, p0, Lcom/ironsource/q1;->i:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-direct {p0, p1, v3, p2}, Lcom/ironsource/o1;->u0(Landroid/app/Activity;Lcom/ironsource/p1;Lcom/ironsource/mediationsdk/model/Placement;)V

    :cond_fd
    return-void

    :catchall_fe
    move-exception p1

    :try_start_ff
    monitor-exit v0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    throw p1
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 4

    invoke-virtual {p0}, Lcom/ironsource/q1;->c()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/ironsource/o1;->z0(Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void

    :cond_a
    new-instance v0, Lcom/ironsource/o1$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/o1$a;-><init>(Lcom/ironsource/o1;Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/p1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
            "Lcom/ironsource/p1<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/h$a;->d:Lcom/ironsource/mediationsdk/h$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ironsource/q1$f;->b:Lcom/ironsource/q1$f;

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->w(Lcom/ironsource/q1$f;)V

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/o1;->v0(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/p1;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/p1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p1<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    sget-object v1, Lcom/ironsource/q1$f;->f:Lcom/ironsource/q1$f;

    if-ne v0, v1, :cond_18

    sget-object v0, Lcom/ironsource/q1$f;->b:Lcom/ironsource/q1$f;

    invoke-virtual {p0, v0}, Lcom/ironsource/q1;->w(Lcom/ironsource/q1$f;)V

    :cond_18
    iget-object v0, p0, Lcom/ironsource/q1;->q:Lcom/ironsource/z;

    invoke-virtual {v0}, Lcom/ironsource/z;->d()V

    iget-object v0, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    invoke-virtual {p1}, Lcom/ironsource/t1;->f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/x;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public b(Lcom/ironsource/p1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p1<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    invoke-virtual {p1}, Lcom/ironsource/t1;->f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/x;->g(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    return-void
.end method

.method public c(Lcom/ironsource/p1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p1<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    invoke-virtual {p1}, Lcom/ironsource/x;->a()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/q1;->p:Lcom/ironsource/q1$f;

    sget-object v2, Lcom/ironsource/q1$f;->e:Lcom/ironsource/q1$f;

    if-ne v1, v2, :cond_34

    iget-object v1, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {v1}, Lcom/ironsource/gd;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/p1;

    invoke-virtual {v2}, Lcom/ironsource/t1;->x()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/ironsource/p1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p1<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/q1;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/q1;->t:Lcom/ironsource/x;

    invoke-virtual {p1}, Lcom/ironsource/x;->b()V

    return-void
.end method

.method protected l0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .registers 4

    invoke-virtual {p0}, Lcom/ironsource/q1;->n0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-boolean v0, p0, Lcom/ironsource/q1;->j:Z

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    return v1

    :cond_1b
    iget-object v0, p0, Lcom/ironsource/q1;->a:Lcom/ironsource/gd;

    invoke-virtual {v0}, Lcom/ironsource/gd;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/p1;

    invoke-virtual {v2}, Lcom/ironsource/p1;->A()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v0, 0x1

    return v0

    :cond_39
    return v1
.end method

###### Class com.ironsource.o1.a (com.ironsource.o1$a)
.class Lcom/ironsource/o1$a;
.super Lcom/ironsource/jb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/o1;->a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/ironsource/mediationsdk/model/Placement;

.field final synthetic c:Lcom/ironsource/o1;


# direct methods
.method constructor <init>(Lcom/ironsource/o1;Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/o1$a;->c:Lcom/ironsource/o1;

    iput-object p2, p0, Lcom/ironsource/o1$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/o1$a;->b:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-direct {p0}, Lcom/ironsource/jb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/o1$a;->c:Lcom/ironsource/o1;

    iget-object v1, p0, Lcom/ironsource/o1$a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/o1$a;->b:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-static {v0, v1, v2}, Lcom/ironsource/o1;->x0(Lcom/ironsource/o1;Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method
