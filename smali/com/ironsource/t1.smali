###### Class com.json.t1 (com.ironsource.t1)
.class public abstract Lcom/ironsource/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;
.implements Lcom/ironsource/ub$a;
.implements Lcom/ironsource/u;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;
.implements Lcom/ironsource/rb$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/t1$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Listener::Lcom/ironsource/a0;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
        "Lcom/ironsource/ub$a;",
        "Lcom/ironsource/u;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
        "Lcom/ironsource/rb$a;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ironsource/p;

.field protected b:Lcom/ironsource/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "Listener;"
        }
    .end annotation
.end field

.field protected c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "*",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/ironsource/v;

.field protected e:Lcom/ironsource/t1$h;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected g:Lcom/ironsource/mediationsdk/model/Placement;

.field protected h:Lcom/ironsource/h0;

.field protected i:Lorg/json/JSONObject;

.field protected j:Ljava/lang/String;

.field protected k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

.field protected l:Ljava/lang/Long;

.field protected m:Lcom/ironsource/t3;

.field private n:Lcom/ironsource/ub;

.field private final o:Lcom/ironsource/d1;

.field private final p:Lcom/ironsource/pa;

.field protected final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/ironsource/pa;Lcom/ironsource/p;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;Lcom/ironsource/h0;Lcom/ironsource/d1;Lcom/ironsource/a0;)V
    .registers 9
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/t1;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    iput-object p6, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    new-instance p6, Lcom/ironsource/v;

    invoke-virtual {p2}, Lcom/ironsource/p;->a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p2

    sget-object v0, Lcom/ironsource/v$b;->b:Lcom/ironsource/v$b;

    invoke-direct {p6, p2, v0, p0}, Lcom/ironsource/v;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/v$b;Lcom/ironsource/u;)V

    iput-object p6, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iput-object p4, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {p4}, Lcom/ironsource/h0;->c()Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/t1;->i:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/t1;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    iput-object p5, p0, Lcom/ironsource/t1;->o:Lcom/ironsource/d1;

    iput-object p1, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    new-instance p1, Lcom/ironsource/ub;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lcom/ironsource/t1;->a0()I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/ironsource/ub;-><init>(J)V

    iput-object p1, p0, Lcom/ironsource/t1;->n:Lcom/ironsource/ub;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/t1;->q:Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t1$h;->a:Lcom/ironsource/t1$h;

    invoke-virtual {p0, p1}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    return-void
.end method

.method private C()V
    .registers 10

    iget-object v0, p0, Lcom/ironsource/t1;->m:Lcom/ironsource/t3;

    invoke-static {v0}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v0

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isBidder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/t1;->v()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const-string v3, "time out"

    iget-object v4, p0, Lcom/ironsource/t1;->q:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3b
    invoke-virtual {p0}, Lcom/ironsource/t1;->y()Z

    move-result v5

    const/16 v6, 0x401

    if-eqz v5, :cond_63

    sget-object v2, Lcom/ironsource/t1$h;->g:Lcom/ironsource/t1$h;

    invoke-virtual {p0, v2}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    iget-object v2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v2, :cond_58

    iget-object v2, v2, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {v2, v0, v1, v6}, Lcom/ironsource/z8;->a(JI)V

    iget-object v2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object v2, v2, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {v2, v0, v1, v6, v3}, Lcom/ironsource/z8;->a(JILjava/lang/String;)V

    :cond_58
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_a5

    iget-object v0, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/ironsource/a0;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/t1;)V

    return-void

    :cond_63
    :try_start_63
    const-string v0, "unexpected timeout for %s, state - %s, error - %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    const/4 v7, 0x1

    aput-object v3, v1, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x2

    aput-object v3, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_a3

    const-string v0, "unexpected timeout, state - %s, error - %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    aput-object v2, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object v1, v1, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {v1, v0}, Lcom/ironsource/vc;->p(Ljava/lang/String;)V

    :cond_a3
    monitor-exit v4

    return-void

    :catchall_a5
    move-exception v0

    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_63 .. :try_end_a7} :catchall_a5

    throw v0
.end method

.method private I(ILjava/lang/String;)V
    .registers 10

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

    invoke-direct {p0}, Lcom/ironsource/t1;->d()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v0, p0, Lcom/ironsource/t1;->n:Lcom/ironsource/ub;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/ironsource/ub;->e()V

    :cond_2f
    sget-object v0, Lcom/ironsource/t1$h;->g:Lcom/ironsource/t1$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    iget-object v0, p0, Lcom/ironsource/t1;->m:Lcom/ironsource/t3;

    invoke-static {v0}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v5

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/t1;->K(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V

    iget-object v0, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, p0}, Lcom/ironsource/a0;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/t1;)V

    goto :goto_99

    :cond_4d
    iget-object v1, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object v2, Lcom/ironsource/t1$h;->g:Lcom/ironsource/t1$h;

    if-ne v1, v2, :cond_54

    goto :goto_99

    :cond_54
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const-string v6, "unexpected init failed for %s, state - %s, error - %s, %s"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_99

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    aput-object v1, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    const-string p1, "unexpected init failed, state - %s, error - %s, %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object p2, p2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {p2, p1}, Lcom/ironsource/vc;->h(Ljava/lang/String;)V

    :cond_99
    :goto_99
    return-void
.end method

.method private J(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/ironsource/t1;->m:Lcom/ironsource/t3;

    invoke-static {v0}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/t1;->n:Lcom/ironsource/ub;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lcom/ironsource/ub;->e()V

    :cond_37
    iget-object v7, p0, Lcom/ironsource/t1;->q:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3a
    iget-object v1, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object v2, Lcom/ironsource/t1$h;->d:Lcom/ironsource/t1$h;

    if-ne v1, v2, :cond_58

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/t1;->K(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V

    sget-object p1, Lcom/ironsource/t1$h;->g:Lcom/ironsource/t1$h;

    invoke-virtual {p0, p1}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    monitor-exit v7
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_10e

    iget-object p1, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, p0}, Lcom/ironsource/a0;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/t1;)V

    return-void

    :cond_58
    :try_start_58
    sget-object v2, Lcom/ironsource/t1$h;->g:Lcom/ironsource/t1$h;

    if-ne v1, v2, :cond_65

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/t1;->K(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V

    monitor-exit v7

    return-void

    :cond_65
    sget-object v2, Lcom/ironsource/t1$h;->e:Lcom/ironsource/t1$h;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_ac

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_AD_EXPIRED:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    if-ne p1, v1, :cond_ac

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/t1;->l:Ljava/lang/Long;

    const-string p1, "ad expired for %s, state = %s"

    new-array p2, v3, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {p3}, Lcom/ironsource/h0;->f()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v5

    iget-object p3, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    aput-object p3, p2, v4

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz p1, :cond_aa

    iget-object p1, p1, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    const-string p2, "ad expired, state = %s"

    new-array p3, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    aput-object v0, p3, v5

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/vc;->a(Ljava/lang/String;)V

    :cond_aa
    monitor-exit v7

    return-void

    :cond_ac
    const-string p1, "unexpected load failed for %s, state - %s, error - %s, %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string p1, "unexpected load failed, state - %s, error - %s, %s"

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    aput-object v1, v0, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    aput-object p3, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz p2, :cond_10c

    invoke-virtual {p0}, Lcom/ironsource/t1;->c0()Z

    move-result p2

    if-eqz p2, :cond_f5

    iget-object p2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object p2, p2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {p2, p1}, Lcom/ironsource/vc;->m(Ljava/lang/String;)V

    goto :goto_10c

    :cond_f5
    iget-object p2, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {p2}, Lcom/ironsource/p;->a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p2

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p2, p3, :cond_105

    iget-object p2, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object p3, Lcom/ironsource/t1$h;->f:Lcom/ironsource/t1$h;

    if-eq p2, p3, :cond_10c

    :cond_105
    iget-object p2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object p2, p2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {p2, p1}, Lcom/ironsource/vc;->j(Ljava/lang/String;)V

    :cond_10c
    :goto_10c
    monitor-exit v7

    return-void

    :catchall_10e
    move-exception p1

    monitor-exit v7
    :try_end_110
    .catchall {:try_start_58 .. :try_end_110} :catchall_10e

    throw p1
.end method

.method private K(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V
    .registers 7

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_41

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    if-ne p1, v0, :cond_1e

    invoke-virtual {p0}, Lcom/ironsource/t1;->c0()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object p1, p1, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {p1, p4, p5, p2}, Lcom/ironsource/z8;->c(JI)V

    goto :goto_41

    :cond_16
    iget-object p1, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object p1, p1, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {p1, p4, p5, p2}, Lcom/ironsource/z8;->b(JI)V

    goto :goto_41

    :cond_1e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3a

    invoke-virtual {p0}, Lcom/ironsource/t1;->c0()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object p1, p1, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {p1, p4, p5, p2, p3}, Lcom/ironsource/z8;->b(JILjava/lang/String;)V

    goto :goto_41

    :cond_32
    iget-object p1, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object p1, p1, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {p1, p4, p5, p2, p3}, Lcom/ironsource/z8;->a(JILjava/lang/String;)V

    goto :goto_41

    :cond_3a
    iget-object p1, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object p1, p1, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {p1, p4, p5, p2}, Lcom/ironsource/z8;->a(JI)V

    :cond_41
    :goto_41
    return-void
.end method

.method static synthetic O(Lcom/ironsource/t1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/t1;->C()V

    return-void
.end method

.method static synthetic P(Lcom/ironsource/t1;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/t1;->I(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic Q(Lcom/ironsource/t1;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/t1;->J(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic R(Lcom/ironsource/t1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/t1;->u()V

    return-void
.end method

.method private S(Lcom/ironsource/t;)Z
    .registers 3

    sget-object v0, Lcom/ironsource/t;->e:Lcom/ironsource/t;

    if-eq p1, v0, :cond_2f

    sget-object v0, Lcom/ironsource/t;->g:Lcom/ironsource/t;

    if-eq p1, v0, :cond_2f

    sget-object v0, Lcom/ironsource/t;->i:Lcom/ironsource/t;

    if-eq p1, v0, :cond_2f

    sget-object v0, Lcom/ironsource/t;->j:Lcom/ironsource/t;

    if-eq p1, v0, :cond_2f

    sget-object v0, Lcom/ironsource/t;->l:Lcom/ironsource/t;

    if-eq p1, v0, :cond_2f

    sget-object v0, Lcom/ironsource/t;->u:Lcom/ironsource/t;

    if-eq p1, v0, :cond_2f

    sget-object v0, Lcom/ironsource/t;->w:Lcom/ironsource/t;

    if-eq p1, v0, :cond_2f

    sget-object v0, Lcom/ironsource/t;->n:Lcom/ironsource/t;

    if-eq p1, v0, :cond_2f

    sget-object v0, Lcom/ironsource/t;->q:Lcom/ironsource/t;

    if-eq p1, v0, :cond_2f

    sget-object v0, Lcom/ironsource/t;->v:Lcom/ironsource/t;

    if-eq p1, v0, :cond_2f

    sget-object v0, Lcom/ironsource/t;->A:Lcom/ironsource/t;

    if-ne p1, v0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p1, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 p1, 0x1

    :goto_30
    return p1
.end method

.method static synthetic T(Lcom/ironsource/t1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/t1;->s()V

    return-void
.end method

.method static synthetic V(Lcom/ironsource/t1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/t1;->t()V

    return-void
.end method

.method static synthetic W(Lcom/ironsource/t1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/t1;->q()V

    return-void
.end method

.method private Y()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method private a0()I
    .registers 5

    iget-object v0, p0, Lcom/ironsource/t1;->o:Lcom/ironsource/d1;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v0}, Lcom/ironsource/p;->f()I

    move-result v0

    return v0

    :cond_b
    invoke-virtual {v0}, Lcom/ironsource/d1;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_22

    :cond_1c
    iget-object v0, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v0}, Lcom/ironsource/p;->f()I

    move-result v0

    :goto_22
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load timeout for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/t1;->o:Lcom/ironsource/d1;

    invoke-virtual {v3}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return v0
.end method

.method private d()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object v1, Lcom/ironsource/t1$h;->b:Lcom/ironsource/t1$h;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private j()V
    .registers 4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/t1;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/t1$h;->d:Lcom/ironsource/t1$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->a(Z)V

    :try_start_12
    iget-object v0, p0, Lcom/ironsource/t1;->n:Lcom/ironsource/ub;

    invoke-virtual {v0, p0}, Lcom/ironsource/ub;->a(Lcom/ironsource/ub$a;)V

    invoke-virtual {p0}, Lcom/ironsource/t1;->o()V
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1b

    goto :goto_54

    :catchall_1b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected error while calling adapter.loadAd() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - state = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v1, :cond_4d

    iget-object v1, v1, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {v1, v0}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V

    :cond_4d
    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v2, 0x1fe

    invoke-virtual {p0, v1, v2, v0}, Lcom/ironsource/t1;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    :goto_54
    return-void
.end method

.method private q()V
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

    invoke-virtual {v0, v1}, Lcom/ironsource/k;->a(Ljava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    invoke-interface {v0, p0}, Lcom/ironsource/a0;->f(Lcom/ironsource/t1;)V

    return-void
.end method

.method private s()V
    .registers 8

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/t1;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/t1;->n:Lcom/ironsource/ub;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/ironsource/ub;->e()V

    :cond_10
    iget-object v1, p0, Lcom/ironsource/t1;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    iget-object v2, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object v3, Lcom/ironsource/t1$h;->d:Lcom/ironsource/t1$h;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_5b

    iget-object v2, p0, Lcom/ironsource/t1;->m:Lcom/ironsource/t3;

    invoke-static {v2}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Lcom/ironsource/t1;->c0()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object v0, v0, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {v0, v2, v3}, Lcom/ironsource/z8;->a(J)V

    goto :goto_51

    :cond_4a
    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object v0, v0, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {v0, v2, v3, v4}, Lcom/ironsource/z8;->a(JZ)V

    :cond_51
    :goto_51
    sget-object v0, Lcom/ironsource/t1$h;->e:Lcom/ironsource/t1$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    invoke-virtual {p0}, Lcom/ironsource/t1;->E()Z

    move-result v4

    goto :goto_a0

    :cond_5b
    sget-object v3, Lcom/ironsource/t1$h;->g:Lcom/ironsource/t1$h;

    if-ne v2, v3, :cond_60

    goto :goto_a0

    :cond_60
    const-string v2, "unexpected load success for %s, state - %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const-string v0, "unexpected load success, state - %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v2, :cond_a0

    invoke-virtual {p0}, Lcom/ironsource/t1;->c0()Z

    move-result v2

    if-eqz v2, :cond_99

    iget-object v2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object v2, v2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {v2, v0}, Lcom/ironsource/vc;->n(Ljava/lang/String;)V

    goto :goto_a0

    :cond_99
    iget-object v2, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object v2, v2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {v2, v0}, Lcom/ironsource/vc;->k(Ljava/lang/String;)V

    :cond_a0
    :goto_a0
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_13 .. :try_end_a1} :catchall_a9

    if-eqz v4, :cond_a8

    iget-object v0, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    invoke-interface {v0, p0}, Lcom/ironsource/a0;->e(Lcom/ironsource/t1;)V

    :cond_a8
    return-void

    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v0
.end method

.method private t()V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/t1;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/t1$h;->f:Lcom/ironsource/t1$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {p0}, Lcom/ironsource/t1;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k;->e(Ljava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/ironsource/t1;->b:Lcom/ironsource/a0;

    invoke-interface {v0, p0}, Lcom/ironsource/a0;->b(Lcom/ironsource/t1;)V

    return-void
.end method

.method private u()V
    .registers 6

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/t1;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/t1;->d()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lcom/ironsource/t1;->n:Lcom/ironsource/ub;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/ironsource/ub;->e()V

    :cond_16
    sget-object v0, Lcom/ironsource/t1$h;->c:Lcom/ironsource/t1$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    invoke-direct {p0}, Lcom/ironsource/t1;->j()V

    goto :goto_59

    :cond_1f
    iget-object v1, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object v2, Lcom/ironsource/t1$h;->g:Lcom/ironsource/t1$h;

    if-ne v1, v2, :cond_26

    goto :goto_59

    :cond_26
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "unexpected init success for %s, state - %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_59

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    aput-object v1, v0, v3

    const-string v1, "unexpected init success, state - %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object v1, v1, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {v1, v0}, Lcom/ironsource/vc;->i(Ljava/lang/String;)V

    :cond_59
    :goto_59
    return-void
.end method


# virtual methods
.method public A()Z
    .registers 2

    invoke-virtual {p0}, Lcom/ironsource/t1;->x()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object v1, Lcom/ironsource/t1$h;->f:Lcom/ironsource/t1$h;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public D()V
    .registers 6

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/t1;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/t1;->i()Lcom/ironsource/d1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/d1;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ironsource/d1;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/k8;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v3}, Lcom/ironsource/p;->a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v3

    const-string v4, "adUnit"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/ironsource/t1;->b(Ljava/lang/String;)V

    :try_start_27
    invoke-virtual {p0}, Lcom/ironsource/t1;->c0()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object v3, v3, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {v3}, Lcom/ironsource/z8;->a()V

    goto :goto_3d

    :cond_36
    iget-object v3, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object v3, v3, Lcom/ironsource/v;->g:Lcom/ironsource/z8;

    invoke-virtual {v3, v4}, Lcom/ironsource/z8;->a(Z)V

    :goto_3d
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ironsource/t1;->l:Ljava/lang/Long;

    new-instance v3, Lcom/ironsource/t3;

    invoke-direct {v3}, Lcom/ironsource/t3;-><init>()V

    iput-object v3, p0, Lcom/ironsource/t1;->m:Lcom/ironsource/t3;

    invoke-virtual {p0, v2, v1}, Lcom/ironsource/t1;->F(Ljava/lang/String;Ljava/util/Map;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/t1;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    iget-object v1, p0, Lcom/ironsource/t1;->q:Ljava/lang/Object;

    monitor-enter v1
    :try_end_50
    .catchall {:try_start_27 .. :try_end_50} :catchall_d7

    :try_start_50
    iget-object v2, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object v3, Lcom/ironsource/t1$h;->a:Lcom/ironsource/t1$h;

    if-eq v2, v3, :cond_58

    const/4 v4, 0x1

    goto :goto_5d

    :cond_58
    sget-object v2, Lcom/ironsource/t1$h;->b:Lcom/ironsource/t1$h;

    invoke-virtual {p0, v2}, Lcom/ironsource/t1;->N(Lcom/ironsource/t1$h;)V

    :goto_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_d4

    if-eqz v4, :cond_8f

    :try_start_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAd - incorrect state while loading, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    iget-object v0, v0, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {v0, v1}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v0}, Lcom/ironsource/p;->a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/s;->c(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/t1;->onInitFailed(ILjava/lang/String;)V

    return-void

    :cond_8f
    iget-object v1, p0, Lcom/ironsource/t1;->n:Lcom/ironsource/ub;

    invoke-virtual {v1, p0}, Lcom/ironsource/ub;->a(Lcom/ironsource/ub$a;)V

    iget-object v1, p0, Lcom/ironsource/t1;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v1

    if-eqz v1, :cond_aa

    iget-object v0, p0, Lcom/ironsource/t1;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v0, v2, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V

    goto :goto_10c

    :cond_aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAd - network adapter not available "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v0}, Lcom/ironsource/p;->a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/s;->c(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/t1;->onInitFailed(ILjava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_60 .. :try_end_d3} :catchall_d7

    goto :goto_10c

    :catchall_d4
    move-exception v0

    :try_start_d5
    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    :try_start_d6
    throw v0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d7

    :catchall_d7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAd - exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v1, :cond_ff

    iget-object v1, v1, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {v1, v0}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V

    :cond_ff
    iget-object v1, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v1}, Lcom/ironsource/p;->a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/s;->c(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/t1;->onInitFailed(ILjava/lang/String;)V

    :goto_10c
    return-void
.end method

.method protected E()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected F(Ljava/lang/String;Ljava/util/Map;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-virtual {p0}, Lcom/ironsource/t1;->Z()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/ironsource/t1;->H(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method protected G(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v1}, Lcom/ironsource/p;->a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    return-object v0

    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected H(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_7
    iget-object v0, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v0}, Lcom/ironsource/p;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public L()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/t1;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    :try_start_5
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->releaseMemory()V

    iput-object v1, p0, Lcom/ironsource/t1;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_49

    :catch_b
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while calling adapter.releaseMemory() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {v3}, Lcom/ironsource/h0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

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

    iget-object v2, v2, Lcom/ironsource/v;->k:Lcom/ironsource/vc;

    invoke-virtual {v2, v0}, Lcom/ironsource/vc;->c(Ljava/lang/String;)V

    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Lcom/ironsource/v;->f()V

    iput-object v1, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    :cond_52
    iget-object v0, p0, Lcom/ironsource/t1;->n:Lcom/ironsource/ub;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/ironsource/d;->d()V

    iput-object v1, p0, Lcom/ironsource/t1;->n:Lcom/ironsource/ub;

    :cond_5b
    return-void
.end method

.method public M()V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/t1;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t1;->d:Lcom/ironsource/v;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/ironsource/v;->j:Lcom/ironsource/k;

    invoke-virtual {v0}, Lcom/ironsource/k;->a()V

    :cond_12
    return-void
.end method

.method protected N(Lcom/ironsource/t1$h;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    return-void
.end method

.method protected U()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected X()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->g:Lcom/ironsource/mediationsdk/model/Placement;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Z()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/ironsource/t1;->i:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/ironsource/k8;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Lcom/ironsource/t;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/t;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string v1, "providerAdapterVersion"

    iget-object v2, p0, Lcom/ironsource/t1;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_2c

    const-string v3, ""

    if-eqz v2, :cond_16

    :try_start_d
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getAdapterVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_16
    move-object v2, v3

    :goto_17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "providerSDKVersion"

    iget-object v2, p0, Lcom/ironsource/t1;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v3

    :cond_28
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_2c

    goto :goto_4a

    :catch_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not get adapter version for event data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/t1;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_4a
    iget-object v1, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {v1}, Lcom/ironsource/h0;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "spId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {v1}, Lcom/ironsource/h0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "provider"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/t1;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "instanceType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ironsource/t1;->Y()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "programmatic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/t1;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    iget-object v1, p0, Lcom/ironsource/t1;->j:Ljava/lang/String;

    const-string v2, "dynamicDemandSource"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89
    invoke-virtual {p0}, Lcom/ironsource/t1;->r()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sessionDepth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v1}, Lcom/ironsource/p;->e()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_b1

    iget-object v1, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v1}, Lcom/ironsource/p;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_b1

    iget-object v1, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v1}, Lcom/ironsource/p;->e()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "genericParams"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b1
    iget-object v1, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v1}, Lcom/ironsource/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c8

    iget-object v1, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v1}, Lcom/ironsource/p;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auctionId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c8
    invoke-direct {p0, p1}, Lcom/ironsource/t1;->S(Lcom/ironsource/t;)Z

    move-result p1

    if-eqz p1, :cond_f4

    iget-object p1, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {p1}, Lcom/ironsource/p;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "auctionTrials"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {p1}, Lcom/ironsource/p;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f4

    iget-object p1, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {p1}, Lcom/ironsource/p;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "auctionFallback"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f4
    iget-object p1, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {p1}, Lcom/ironsource/p;->g()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getCustomNetwork()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_113

    iget-object p1, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {p1}, Lcom/ironsource/p;->g()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getCustomNetwork()Ljava/lang/String;

    move-result-object p1

    const-string v1, "customNetwork"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_113
    return-object v0
.end method

.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/ironsource/t1;->C()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    new-instance v1, Lcom/ironsource/t1$a;

    invoke-direct {v1, p0}, Lcom/ironsource/t1$a;-><init>(Lcom/ironsource/t1;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/t1;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->e()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/t1;->j:Ljava/lang/String;

    return-void
.end method

.method protected b0()Lcom/ironsource/pa;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->l:Ljava/lang/Long;

    return-object v0
.end method

.method public f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 4

    new-instance v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    iget-object v1, p0, Lcom/ironsource/t1;->o:Lcom/ironsource/d1;

    invoke-virtual {p0}, Lcom/ironsource/t1;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/d1;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;-><init>(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    return-object v0
.end method

.method public g()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v0}, Lcom/ironsource/p;->a()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v0}, Lcom/ironsource/p;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/ironsource/d1;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->o:Lcom/ironsource/d1;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/t1;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->d()I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->h()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isMultipleInstances()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->h()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected o()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/t1;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    instance-of v1, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;

    if-eqz v1, :cond_16

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;

    iget-object v1, p0, Lcom/ironsource/t1;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V

    goto :goto_21

    :cond_16
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "adapter not instance of AdapterAdFullScreenInterface"

    invoke-virtual {p0, v1}, Lcom/ironsource/t1;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method public onAdClicked()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/ironsource/t1;->q()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    new-instance v1, Lcom/ironsource/t1$g;

    invoke-direct {v1, p0}, Lcom/ironsource/t1$g;-><init>(Lcom/ironsource/t1;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/t1;->J(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    new-instance v1, Lcom/ironsource/t1$e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/t1$e;-><init>(Lcom/ironsource/t1;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoadSuccess()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/ironsource/t1;->s()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    new-instance v1, Lcom/ironsource/t1$d;

    invoke-direct {v1, p0}, Lcom/ironsource/t1$d;-><init>(Lcom/ironsource/t1;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdOpened()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/ironsource/t1;->t()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    new-instance v1, Lcom/ironsource/t1$f;

    invoke-direct {v1, p0}, Lcom/ironsource/t1$f;-><init>(Lcom/ironsource/t1;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitFailed(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/ironsource/t1;->I(ILjava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    new-instance v1, Lcom/ironsource/t1$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/t1$c;-><init>(Lcom/ironsource/t1;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitSuccess()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    invoke-interface {v0}, Lcom/ironsource/pa;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/ironsource/t1;->u()V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/ironsource/t1;->p:Lcom/ironsource/pa;

    new-instance v1, Lcom/ironsource/t1$b;

    invoke-direct {v1, p0}, Lcom/ironsource/t1$b;-><init>(Lcom/ironsource/t1;)V

    invoke-interface {v0, v1}, Lcom/ironsource/pa;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p()Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    invoke-virtual {v0}, Lcom/ironsource/p;->g()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->a:Lcom/ironsource/p;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/ironsource/p;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->h:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->j()Z

    move-result v0

    return v0
.end method

.method public w()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object v1, Lcom/ironsource/t1$h;->g:Lcom/ironsource/t1$h;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public x()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object v1, Lcom/ironsource/t1$h;->e:Lcom/ironsource/t1$h;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public y()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/t1;->e:Lcom/ironsource/t1$h;

    sget-object v1, Lcom/ironsource/t1$h;->b:Lcom/ironsource/t1$h;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/ironsource/t1$h;->d:Lcom/ironsource/t1$h;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public z()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

###### Class com.ironsource.t1.a (com.ironsource.t1$a)
.class Lcom/ironsource/t1$a;
.super Lcom/ironsource/jb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/t1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/t1;


# direct methods
.method constructor <init>(Lcom/ironsource/t1;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/t1$a;->a:Lcom/ironsource/t1;

    invoke-direct {p0}, Lcom/ironsource/jb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1$a;->a:Lcom/ironsource/t1;

    invoke-static {v0}, Lcom/ironsource/t1;->O(Lcom/ironsource/t1;)V

    return-void
.end method

###### Class com.ironsource.t1.b (com.ironsource.t1$b)
.class Lcom/ironsource/t1$b;
.super Lcom/ironsource/jb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/t1;->onInitSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/t1;


# direct methods
.method constructor <init>(Lcom/ironsource/t1;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/t1$b;->a:Lcom/ironsource/t1;

    invoke-direct {p0}, Lcom/ironsource/jb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1$b;->a:Lcom/ironsource/t1;

    invoke-static {v0}, Lcom/ironsource/t1;->R(Lcom/ironsource/t1;)V

    return-void
.end method

###### Class com.ironsource.t1.c (com.ironsource.t1$c)
.class Lcom/ironsource/t1$c;
.super Lcom/ironsource/jb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/t1;->onInitFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/t1;


# direct methods
.method constructor <init>(Lcom/ironsource/t1;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/t1$c;->c:Lcom/ironsource/t1;

    iput p2, p0, Lcom/ironsource/t1$c;->a:I

    iput-object p3, p0, Lcom/ironsource/t1$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/jb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/t1$c;->c:Lcom/ironsource/t1;

    iget v1, p0, Lcom/ironsource/t1$c;->a:I

    iget-object v2, p0, Lcom/ironsource/t1$c;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ironsource/t1;->P(Lcom/ironsource/t1;ILjava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.t1.d (com.ironsource.t1$d)
.class Lcom/ironsource/t1$d;
.super Lcom/ironsource/jb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/t1;->onAdLoadSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/t1;


# direct methods
.method constructor <init>(Lcom/ironsource/t1;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/t1$d;->a:Lcom/ironsource/t1;

    invoke-direct {p0}, Lcom/ironsource/jb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1$d;->a:Lcom/ironsource/t1;

    invoke-static {v0}, Lcom/ironsource/t1;->T(Lcom/ironsource/t1;)V

    return-void
.end method

###### Class com.ironsource.t1.e (com.ironsource.t1$e)
.class Lcom/ironsource/t1$e;
.super Lcom/ironsource/jb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/t1;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ironsource/t1;


# direct methods
.method constructor <init>(Lcom/ironsource/t1;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/t1$e;->d:Lcom/ironsource/t1;

    iput-object p2, p0, Lcom/ironsource/t1$e;->a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    iput p3, p0, Lcom/ironsource/t1$e;->b:I

    iput-object p4, p0, Lcom/ironsource/t1$e;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/jb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/t1$e;->d:Lcom/ironsource/t1;

    iget-object v1, p0, Lcom/ironsource/t1$e;->a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    iget v2, p0, Lcom/ironsource/t1$e;->b:I

    iget-object v3, p0, Lcom/ironsource/t1$e;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/t1;->Q(Lcom/ironsource/t1;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.t1.f (com.ironsource.t1$f)
.class Lcom/ironsource/t1$f;
.super Lcom/ironsource/jb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/t1;->onAdOpened()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/t1;


# direct methods
.method constructor <init>(Lcom/ironsource/t1;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/t1$f;->a:Lcom/ironsource/t1;

    invoke-direct {p0}, Lcom/ironsource/jb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1$f;->a:Lcom/ironsource/t1;

    invoke-static {v0}, Lcom/ironsource/t1;->V(Lcom/ironsource/t1;)V

    return-void
.end method

###### Class com.ironsource.t1.g (com.ironsource.t1$g)
.class Lcom/ironsource/t1$g;
.super Lcom/ironsource/jb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/t1;->onAdClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/t1;


# direct methods
.method constructor <init>(Lcom/ironsource/t1;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/t1$g;->a:Lcom/ironsource/t1;

    invoke-direct {p0}, Lcom/ironsource/jb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/t1$g;->a:Lcom/ironsource/t1;

    invoke-static {v0}, Lcom/ironsource/t1;->W(Lcom/ironsource/t1;)V

    return-void
.end method

###### Class com.ironsource.t1.h (com.ironsource.t1$h)
.class public final enum Lcom/ironsource/t1$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/t1$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/t1$h;

.field public static final enum b:Lcom/ironsource/t1$h;

.field public static final enum c:Lcom/ironsource/t1$h;

.field public static final enum d:Lcom/ironsource/t1$h;

.field public static final enum e:Lcom/ironsource/t1$h;

.field public static final enum f:Lcom/ironsource/t1$h;

.field public static final enum g:Lcom/ironsource/t1$h;

.field private static final synthetic h:[Lcom/ironsource/t1$h;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    new-instance v0, Lcom/ironsource/t1$h;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/t1$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/t1$h;->a:Lcom/ironsource/t1$h;

    new-instance v1, Lcom/ironsource/t1$h;

    const-string v3, "INIT_IN_PROGRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ironsource/t1$h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/t1$h;->b:Lcom/ironsource/t1$h;

    new-instance v3, Lcom/ironsource/t1$h;

    const-string v5, "READY_TO_LOAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ironsource/t1$h;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ironsource/t1$h;->c:Lcom/ironsource/t1$h;

    new-instance v5, Lcom/ironsource/t1$h;

    const-string v7, "LOADING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ironsource/t1$h;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ironsource/t1$h;->d:Lcom/ironsource/t1$h;

    new-instance v7, Lcom/ironsource/t1$h;

    const-string v9, "LOADED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ironsource/t1$h;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ironsource/t1$h;->e:Lcom/ironsource/t1$h;

    new-instance v9, Lcom/ironsource/t1$h;

    const-string v11, "SHOWING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ironsource/t1$h;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ironsource/t1$h;->f:Lcom/ironsource/t1$h;

    new-instance v11, Lcom/ironsource/t1$h;

    const-string v13, "FAILED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ironsource/t1$h;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ironsource/t1$h;->g:Lcom/ironsource/t1$h;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/ironsource/t1$h;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/ironsource/t1$h;->h:[Lcom/ironsource/t1$h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/t1$h;
    .registers 2

    const-class v0, Lcom/ironsource/t1$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/t1$h;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/t1$h;
    .registers 1

    sget-object v0, Lcom/ironsource/t1$h;->h:[Lcom/ironsource/t1$h;

    invoke-virtual {v0}, [Lcom/ironsource/t1$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/t1$h;

    return-object v0
.end method
