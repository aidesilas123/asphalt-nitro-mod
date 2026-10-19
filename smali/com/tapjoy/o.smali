###### Class com.tapjoy.o (com.tapjoy.o)
.class public Lcom/tapjoy/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public b:Landroid/content/Context;

.field public c:Ljava/util/Map;

.field public final d:Lcom/tapjoy/w;

.field public e:Lcom/tapjoy/q;

.field public final f:Ljava/lang/String;

.field public g:J

.field public final h:Lcom/tapjoy/TJAdUnit;

.field public i:Z

.field public j:Z

.field public k:Lcom/tapjoy/internal/k3;

.field public l:Lcom/tapjoy/internal/x0;

.field public m:Z

.field public volatile n:Z

.field public volatile o:Z

.field public volatile p:Z

.field public volatile q:Z

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/o;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/o;->i:Z

    iput-boolean v0, p0, Lcom/tapjoy/o;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/o;->k:Lcom/tapjoy/internal/k3;

    iput-object v1, p0, Lcom/tapjoy/o;->l:Lcom/tapjoy/internal/x0;

    iput-boolean v0, p0, Lcom/tapjoy/o;->n:Z

    iput-boolean v0, p0, Lcom/tapjoy/o;->o:Z

    iput-boolean v0, p0, Lcom/tapjoy/o;->p:Z

    iput-boolean v0, p0, Lcom/tapjoy/o;->q:Z

    new-instance v0, Lcom/tapjoy/t0;

    invoke-direct {v0, p0}, Lcom/tapjoy/t0;-><init>(Lcom/tapjoy/o;)V

    new-instance v1, Lcom/tapjoy/u0;

    invoke-direct {v1, p0}, Lcom/tapjoy/u0;-><init>(Lcom/tapjoy/o;)V

    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/o;->b:Landroid/content/Context;

    if-nez v2, :cond_35

    const-string v2, "TJCorePlacement"

    const-string v3, "getVisibleActivity() is NULL. Activity can be explicitly set via `Tapjoy.setActivity(Activity)`"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    new-instance v2, Lcom/tapjoy/w;

    invoke-virtual {p0}, Lcom/tapjoy/o;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lcom/tapjoy/w;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v2, p1}, Lcom/tapjoy/w;->y(Ljava/lang/String;)V

    new-instance p1, Lcom/tapjoy/q;

    iget-object p2, p0, Lcom/tapjoy/o;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/tapjoy/q;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tapjoy/o;->e:Lcom/tapjoy/q;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/o;->f:Ljava/lang/String;

    new-instance p1, Lcom/tapjoy/TJAdUnit;

    invoke-direct {p1}, Lcom/tapjoy/TJAdUnit;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/o;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {p1, v0}, Lcom/tapjoy/TJAdUnit;->A(Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;)V

    invoke-virtual {p1, v1}, Lcom/tapjoy/TJAdUnit;->y(Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;
    .registers 7

    const-string v0, "Returning "

    iget-object v1, p0, Lcom/tapjoy/o;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/tapjoy/o;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/TJPlacement;

    if-eqz v2, :cond_2c

    const-string v3, "TJCorePlacement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " placement: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacement;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    monitor-exit v1

    return-object v2

    :catchall_2e
    move-exception p1

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public final b()V
    .registers 4

    sget-boolean v0, Lcom/tapjoy/internal/i8;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tapjoy/o;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->i()Lcom/tapjoy/internal/i8;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "contentReady"

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/i8;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_10
    iget-boolean v0, p0, Lcom/tapjoy/o;->o:Z

    if-nez v0, :cond_47

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/o;->q:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content is ready for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v2}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TJCorePlacement"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "REQUEST"

    invoke-virtual {p0, v1}, Lcom/tapjoy/o;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->d()Lcom/tapjoy/TJPlacementListener;

    move-result-object v2

    if-eqz v2, :cond_47

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->d()Lcom/tapjoy/TJPlacementListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tapjoy/TJPlacementListener;->onContentReady(Lcom/tapjoy/TJPlacement;)V

    iput-boolean v0, p0, Lcom/tapjoy/o;->o:Z

    :cond_47
    return-void
.end method

.method public final c(Lcom/tapjoy/TJPlacement;)V
    .registers 4

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->d()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content request delivered successfully for placement "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v1}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tapjoy/o;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mediationAgent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tapjoy/o;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJCorePlacement"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->d()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tapjoy/TJPlacementListener;->onRequestSuccess(Lcom/tapjoy/TJPlacement;)V

    :cond_3e
    return-void
.end method

.method public final d(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/r;)V
    .registers 7

    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content request failed for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v2}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; Reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/tapjoy/r;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string p2, "TJCorePlacement"

    invoke-static {p2, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->d()Lcom/tapjoy/TJPlacementListener;

    move-result-object p2

    if-eqz p2, :cond_37

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->d()Lcom/tapjoy/TJPlacementListener;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/tapjoy/TJPlacementListener;->onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/r;)V

    :cond_37
    return-void
.end method

.method public final e(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V
    .registers 7

    const-string v0, "Setting "

    iget-object v1, p0, Lcom/tapjoy/o;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/tapjoy/o;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_29

    const-string v2, "TJCorePlacement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " placement: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tapjoy/TJPlacement;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final declared-synchronized f(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 22

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_5
    iget-boolean v1, v7, Lcom/tapjoy/o;->n:Z

    if-eqz v1, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Placement "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v1}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already requesting content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJCorePlacement"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_29a

    monitor-exit p0

    return-void

    :cond_29
    :try_start_29
    iget-object v1, v7, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v1}, Lcom/tapjoy/w;->q()V

    iget-object v1, v7, Lcom/tapjoy/o;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->u()V

    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/tapjoy/o;->n:Z

    iput-boolean v1, v7, Lcom/tapjoy/o;->o:Z

    iput-boolean v1, v7, Lcom/tapjoy/o;->p:Z

    iput-boolean v1, v7, Lcom/tapjoy/o;->q:Z

    const/4 v2, 0x0

    iput-object v2, v7, Lcom/tapjoy/o;->l:Lcom/tapjoy/internal/x0;

    iput-object v2, v7, Lcom/tapjoy/o;->k:Lcom/tapjoy/internal/k3;

    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/tapjoy/o;->n:Z

    const-string v4, "REQUEST"

    invoke-virtual {v7, v4}, Lcom/tapjoy/o;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v4

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v5, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    iget-object v6, v7, Lcom/tapjoy/o;->e:Lcom/tapjoy/q;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v9, v6, Lcom/tapjoy/q;->a:Landroid/content/Context;

    if-eqz v9, :cond_7c

    iget-boolean v10, v6, Lcom/tapjoy/q;->f:Z

    if-nez v10, :cond_7c

    new-instance v10, Lcom/tapjoy/v;

    const-string v11, "tjcPrefrences"

    invoke-direct {v10, v9, v11}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v9, "last_currency_balance"

    const/16 v11, -0x270f

    invoke-virtual {v10, v9, v11}, Lcom/tapjoy/v;->c(Ljava/lang/String;I)I

    move-result v9

    iput v9, v6, Lcom/tapjoy/q;->c:I

    :cond_7c
    iget-object v9, v6, Lcom/tapjoy/q;->i:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_a5

    iget-boolean v9, v6, Lcom/tapjoy/q;->f:Z

    if-nez v9, :cond_a5

    iget v9, v6, Lcom/tapjoy/q;->c:I

    if-ltz v9, :cond_a5

    iget-object v9, v6, Lcom/tapjoy/q;->i:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "currency_id_balance"

    invoke-static {v8, v10, v9, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v9, v6, Lcom/tapjoy/q;->c:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "currency_balance"

    invoke-static {v8, v10, v9, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_c9

    :cond_a5
    iget-object v9, v6, Lcom/tapjoy/q;->i:Ljava/util/ArrayList;

    iget-object v10, v6, Lcom/tapjoy/q;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c9

    iget-boolean v9, v6, Lcom/tapjoy/q;->f:Z

    if-eqz v9, :cond_c9

    iget v9, v6, Lcom/tapjoy/q;->c:I

    if-ltz v9, :cond_c9

    iget-object v9, v6, Lcom/tapjoy/q;->b:Ljava/lang/String;

    const-string v10, "currency_id_balance"

    invoke-static {v8, v10, v9, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v9, v6, Lcom/tapjoy/q;->c:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "currency_balance"

    invoke-static {v8, v10, v9, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c9
    :goto_c9
    iget-object v9, v6, Lcom/tapjoy/q;->i:Ljava/util/ArrayList;

    iget-object v10, v6, Lcom/tapjoy/q;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e9

    iget v9, v6, Lcom/tapjoy/q;->e:I

    if-lez v9, :cond_e9

    iget-object v9, v6, Lcom/tapjoy/q;->d:Ljava/lang/String;

    const-string v10, "currency_id_required"

    invoke-static {v8, v10, v9, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v6, v6, Lcom/tapjoy/q;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "currency_amount_required"

    invoke-static {v8, v9, v6, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_e9
    invoke-interface {v5, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v5, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    iget-object v6, v7, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v6}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v6

    const-string v8, "event_name"

    invoke-static {v5, v8, v6, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    const-string v8, "event_preload"

    invoke-static {v5, v8, v6, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    const-string v8, "debug"

    invoke-static {v5, v8, v6, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v5, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    iget-object v6, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    const-string v8, "action_id_exclusion"

    iget-object v5, v5, Lcom/tapjoy/internal/v1;->e:Lcom/tapjoy/internal/w1;

    if-nez v5, :cond_11b

    move-object v5, v2

    goto :goto_124

    :cond_11b
    invoke-virtual {v5}, Lcom/tapjoy/internal/w1;->a()V

    iget-object v5, v5, Lcom/tapjoy/internal/w1;->b:Lcom/tapjoy/internal/o3;

    invoke-virtual {v5}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v5

    :goto_124
    invoke-static {v6, v8, v5, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    iget-boolean v6, v7, Lcom/tapjoy/o;->m:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    const-string v8, "system_placement"

    invoke-static {v5, v8, v6, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    iget-object v6, v4, Lcom/tapjoy/TJPlacement;->f:Ljava/lang/String;

    const-string v8, "push_id"

    invoke-static {v5, v8, v6, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacement;->b()Lcom/tapjoy/TJEntryPoint;

    move-result-object v5

    if-eqz v5, :cond_152

    iget-object v5, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacement;->b()Lcom/tapjoy/TJEntryPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tapjoy/TJEntryPoint;->e()Ljava/lang/String;

    move-result-object v6

    const-string v8, "entrypoint"

    invoke-static {v5, v8, v6, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_152
    iget-object v5, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    iget-object v6, v7, Lcom/tapjoy/o;->r:Ljava/lang/String;

    const-string v8, "mediation_source"

    invoke-static {v5, v8, v6, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    iget-object v6, v7, Lcom/tapjoy/o;->s:Ljava/lang/String;

    const-string v8, "adapter_version"

    invoke-static {v5, v8, v6, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getCustomParameter()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_179

    iget-object v5, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getCustomParameter()Ljava/lang/String;

    move-result-object v6

    const-string v8, "cp"

    invoke-static {v5, v8, v6, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_179
    if-eqz v0, :cond_180

    iget-object v5, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_180
    sget-boolean v0, Lcom/tapjoy/internal/i8;->c:Z

    if-eqz v0, :cond_193

    iget-object v0, v7, Lcom/tapjoy/o;->c:Ljava/util/Map;

    iget-object v5, v7, Lcom/tapjoy/o;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v5}, Lcom/tapjoy/TJAdUnit;->i()Lcom/tapjoy/internal/i8;

    move-result-object v5

    iget-object v5, v5, Lcom/tapjoy/internal/i8;->e:Ljava/lang/String;

    const-string v6, "sdk_beacon_id"

    invoke-static {v0, v6, v5, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_193
    new-instance v5, Lcom/tapjoy/internal/a4;

    sget-object v0, Lcom/tapjoy/internal/ca;->a:Lcom/tapjoy/internal/ca;

    iget-object v0, v0, Lcom/tapjoy/internal/ca;->b:Lcom/tapjoy/internal/t6;

    const-string v6, "placement_request_content_retry_timeout"

    const/4 v8, 0x0

    iget-object v0, v0, Lcom/tapjoy/internal/c4;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1a2
    :cond_1a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tapjoy/internal/q3;

    iget-object v9, v9, Lcom/tapjoy/internal/q3;->a:Ljava/util/Map;

    if-eqz v9, :cond_1b7

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_1b8

    :cond_1b7
    move-object v9, v2

    :goto_1b8
    if-eqz v9, :cond_1a2

    instance-of v10, v9, Ljava/lang/Number;

    if-eqz v10, :cond_1c5

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v8

    goto :goto_1cf

    :cond_1c5
    instance-of v10, v9, Ljava/lang/String;
    :try_end_1c7
    .catchall {:try_start_29 .. :try_end_1c7} :catchall_29a

    if-eqz v10, :cond_1a2

    :try_start_1c9
    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8
    :try_end_1cf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c9 .. :try_end_1cf} :catch_1a2
    .catchall {:try_start_1c9 .. :try_end_1cf} :catchall_29a

    :cond_1cf
    :goto_1cf
    float-to-long v8, v8

    :try_start_1d0
    invoke-direct {v5, v8, v9}, Lcom/tapjoy/internal/a4;-><init>(J)V

    sget-object v0, Lcom/tapjoy/internal/ca;->a:Lcom/tapjoy/internal/ca;

    iget-object v0, v0, Lcom/tapjoy/internal/ca;->b:Lcom/tapjoy/internal/t6;

    const-string v6, "placement_request_content_retry_backoff"

    iget-object v0, v0, Lcom/tapjoy/internal/c4;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1df
    :cond_1df
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_288

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tapjoy/internal/q3;

    iget-object v8, v8, Lcom/tapjoy/internal/q3;->a:Ljava/util/Map;

    if-eqz v8, :cond_1f4

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1f5

    :cond_1f4
    move-object v8, v2

    :goto_1f5
    instance-of v9, v8, Ljava/util/List;

    if-eqz v9, :cond_1df

    check-cast v8, Ljava/util/List;
    :try_end_1fb
    .catchall {:try_start_1d0 .. :try_end_1fb} :catchall_29a

    :try_start_1fb
    new-instance v18, Lcom/tapjoy/internal/b8;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/Number;

    if-eqz v10, :cond_20d

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    :goto_20b
    move-wide v10, v9

    goto :goto_218

    :cond_20d
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_282

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_20b

    :goto_218
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v12, v9, Ljava/lang/Number;

    if-eqz v12, :cond_227

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    goto :goto_231

    :cond_227
    instance-of v12, v9, Ljava/lang/String;

    if-eqz v12, :cond_27c

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    :goto_231
    const/4 v9, 0x2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v14, v9, Ljava/lang/Number;

    if-eqz v14, :cond_241

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    goto :goto_24b

    :cond_241
    instance-of v14, v9, Ljava/lang/String;

    if-eqz v14, :cond_276

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    :goto_24b
    const/4 v9, 0x3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/Number;

    if-eqz v9, :cond_25d

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    :goto_25a
    move-wide/from16 v16, v8

    goto :goto_268

    :cond_25d
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_270

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    goto :goto_25a

    :goto_268
    move-object/from16 v9, v18

    invoke-direct/range {v9 .. v17}, Lcom/tapjoy/internal/b8;-><init>(JJJD)V

    move-object/from16 v6, v18

    goto :goto_28b

    :cond_270
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    :cond_276
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    :cond_27c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    :cond_282
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8
    :try_end_288
    .catch Ljava/lang/RuntimeException; {:try_start_1fb .. :try_end_288} :catch_1df
    .catchall {:try_start_1fb .. :try_end_288} :catchall_29a

    :cond_288
    :try_start_288
    sget-object v0, Lcom/tapjoy/internal/b8;->a:Lcom/tapjoy/internal/b8;

    move-object v6, v0

    :goto_28b
    new-instance v0, Lcom/tapjoy/v0;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/tapjoy/v0;-><init>(Lcom/tapjoy/o;Ljava/lang/String;Lcom/tapjoy/TJPlacement;Lcom/tapjoy/internal/a4;Lcom/tapjoy/internal/b8;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_298
    .catchall {:try_start_288 .. :try_end_298} :catchall_29a

    monitor-exit p0

    return-void

    :catchall_29a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(Ljava/lang/String;)V
    .registers 6

    const-string v0, "TJCorePlacement"

    const-string v1, "redirect_url:"

    const-string v2, "Disable preload flag is set for placement "

    if-eqz p1, :cond_56

    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v2}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    const-string v3, "redirect_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/tapjoy/w;->C(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/tapjoy/w;->A(Z)V

    iget-object p1, p0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {p1, v2}, Lcom/tapjoy/w;->u(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v1}, Lcom/tapjoy/w;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    new-instance p1, Lcom/tapjoy/f0;

    const-string v0, "TJPlacement request failed, malformed server response"

    invoke-direct {p1, v0}, Lcom/tapjoy/f0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    new-instance p1, Lcom/tapjoy/f0;

    const-string v0, "TJPlacement request failed due to null response"

    invoke-direct {p1, v0}, Lcom/tapjoy/f0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()Lcom/tapjoy/TJAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/o;->h:Lcom/tapjoy/TJAdUnit;

    return-object v0
.end method

.method public i()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/o;->b:Landroid/content/Context;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getAppID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "v1/apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/content?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    const-string v0, "TJCorePlacement"

    const-string v1, "Placement content URL cannot be generated for null app ID"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public k()Lcom/tapjoy/w;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    return-object v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/o;->p:Z

    return v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/o;->q:Z

    return v0
.end method

.method public n(Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/tapjoy/o;->b:Landroid/content/Context;

    new-instance v0, Lcom/tapjoy/q;

    invoke-direct {v0, p1}, Lcom/tapjoy/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/o;->e:Lcom/tapjoy/q;

    return-void
.end method
