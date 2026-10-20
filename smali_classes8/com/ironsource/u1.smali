###### Class com.json.u1 (com.ironsource.u1)
.class public abstract Lcom/ironsource/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/g5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/u1$f;,
        Lcom/ironsource/u1$e;
    }
.end annotation


# instance fields
.field private A:[I

.field private B:[I

.field private C:[I

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/String;

.field G:I

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lcom/ironsource/u1$f;

.field private L:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field private M:Lcom/ironsource/nb;

.field private N:Lcom/ironsource/mediationsdk/events/ISErrorListener;

.field private final O:Ljava/lang/Object;

.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Lcom/ironsource/a3;

.field private q:Lcom/ironsource/pd;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/a4;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Landroid/content/Context;

.field private w:I

.field private x:I

.field private y:I

.field private z:[I


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ironsource/u1;->a:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/ironsource/u1;->b:I

    const/16 v2, 0x1388

    iput v2, p0, Lcom/ironsource/u1;->c:I

    const v3, 0x15f90

    iput v3, p0, Lcom/ironsource/u1;->d:I

    const/16 v3, 0x400

    iput v3, p0, Lcom/ironsource/u1;->e:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/ironsource/u1;->f:I

    const-string v3, "supersonic_sdk.db"

    iput-object v3, p0, Lcom/ironsource/u1;->g:Ljava/lang/String;

    const-string v3, "provider"

    iput-object v3, p0, Lcom/ironsource/u1;->h:Ljava/lang/String;

    const-string v3, "placement"

    iput-object v3, p0, Lcom/ironsource/u1;->i:Ljava/lang/String;

    const-string v3, "abt"

    iput-object v3, p0, Lcom/ironsource/u1;->j:Ljava/lang/String;

    const-string v3, "mt"

    iput-object v3, p0, Lcom/ironsource/u1;->k:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ironsource/u1;->m:Z

    iput-boolean v3, p0, Lcom/ironsource/u1;->n:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/ironsource/u1;->o:I

    iput-boolean v0, p0, Lcom/ironsource/u1;->s:Z

    iput v1, p0, Lcom/ironsource/u1;->w:I

    iput v2, p0, Lcom/ironsource/u1;->x:I

    iput v0, p0, Lcom/ironsource/u1;->y:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/u1;->D:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/u1;->E:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/u1;->F:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/u1;->O:Ljava/lang/Object;

    return-void
.end method

.method static synthetic A(Lcom/ironsource/u1;Lcom/ironsource/a4;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/u1;->G(Lcom/ironsource/a4;)Z

    move-result p0

    return p0
.end method

.method static synthetic B(Lcom/ironsource/u1;)I
    .registers 3

    iget v0, p0, Lcom/ironsource/u1;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ironsource/u1;->t:I

    return v0
.end method

.method private G(Lcom/ironsource/a4;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/ironsource/a4;->b()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const-string v0, "sessionDepth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic H(Lcom/ironsource/u1;)[I
    .registers 1

    iget-object p0, p0, Lcom/ironsource/u1;->B:[I

    return-object p0
.end method

.method private J()V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/ironsource/u1;->m:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_174

    :try_start_8
    iget-object v2, p0, Lcom/ironsource/u1;->O:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3f

    :try_start_b
    iget-object v3, p0, Lcom/ironsource/u1;->p:Lcom/ironsource/a3;

    iget-object v4, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ironsource/a3;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/u1;->p:Lcom/ironsource/a3;

    iget-object v5, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/ironsource/a3;->b(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_3c

    :try_start_1b
    new-instance v2, Lcom/ironsource/c4$c;

    new-instance v4, Lcom/ironsource/c4$a;

    iget-object v5, p0, Lcom/ironsource/u1;->r:Ljava/util/ArrayList;

    invoke-direct {v4, v3, v5}, Lcom/ironsource/c4$a;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget v3, p0, Lcom/ironsource/u1;->x:I

    invoke-direct {v2, v4, v3}, Lcom/ironsource/c4$c;-><init>(Lcom/ironsource/c4;I)V

    iget-object v3, p0, Lcom/ironsource/u1;->p:Lcom/ironsource/a3;

    invoke-virtual {v2}, Lcom/ironsource/c4$c;->a()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/ironsource/a3;->a(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ironsource/c4$c;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_3f

    goto :goto_70

    :catchall_3c
    move-exception v3

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v2

    :try_start_40
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CombinedEventList exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/u1;->N:Lcom/ironsource/mediationsdk/events/ISErrorListener;

    if-eqz v3, :cond_68

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Combined event exception: "

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lcom/ironsource/mediationsdk/events/ISErrorListener;->onError(Ljava/lang/Throwable;)V

    :cond_68
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/ironsource/u1;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_70
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18f

    iget-object v2, p0, Lcom/ironsource/u1;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lcom/ironsource/u1;->t:I

    invoke-static {}, Lcom/ironsource/s4;->a()Lcom/ironsource/s4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/s4;->b()Lorg/json/JSONObject;

    move-result-object v2
    :try_end_85
    .catchall {:try_start_40 .. :try_end_85} :catchall_174

    :try_start_85
    invoke-direct {p0, v2}, Lcom/ironsource/u1;->k(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/ironsource/u1;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_97

    const-string v4, "abt"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_97
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/p;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_aa

    const-string v4, "mt"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_aa
    invoke-virtual {p0}, Lcom/ironsource/u1;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e2

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_bc
    :goto_bc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_bc

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_bc

    :cond_e2
    new-instance v3, Lcom/ironsource/g4;

    invoke-direct {v3}, Lcom/ironsource/g4;-><init>()V

    invoke-virtual {v3}, Lcom/ironsource/g4;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_ef
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_102
    .catchall {:try_start_85 .. :try_end_102} :catchall_103

    goto :goto_ef

    :catchall_103
    move-exception v3

    :try_start_104
    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while building the event general properties: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_11e
    iget-object v3, p0, Lcom/ironsource/u1;->q:Lcom/ironsource/pd;

    invoke-virtual {v3, v1, v2}, Lcom/ironsource/pd;->a(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_140

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Failed to parse events."

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/u1;->N:Lcom/ironsource/mediationsdk/events/ISErrorListener;

    if-eqz v0, :cond_13f

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Event parse failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/events/ISErrorListener;->onError(Ljava/lang/Throwable;)V

    :cond_13f
    return-void

    :cond_140
    iget-boolean v3, p0, Lcom/ironsource/u1;->n:Z
    :try_end_142
    .catchall {:try_start_104 .. :try_end_142} :catchall_174

    if-eqz v3, :cond_15e

    :try_start_144
    iget v3, p0, Lcom/ironsource/u1;->o:I

    invoke-static {v2, v3}, Lcom/ironsource/w7;->a(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_14e} :catch_14f
    .catchall {:try_start_144 .. :try_end_14e} :catchall_174

    goto :goto_15e

    :catch_14f
    move-exception v0

    :try_start_150
    iget-object v3, p0, Lcom/ironsource/u1;->N:Lcom/ironsource/mediationsdk/events/ISErrorListener;

    if-eqz v3, :cond_15e

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Error on compression: "

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lcom/ironsource/mediationsdk/events/ISErrorListener;->onError(Ljava/lang/Throwable;)V

    :cond_15e
    :goto_15e
    new-instance v0, Lcom/ironsource/h4;

    new-instance v3, Lcom/ironsource/u1$c;

    invoke-direct {v3, p0}, Lcom/ironsource/u1$c;-><init>(Lcom/ironsource/u1;)V

    iget-object v4, p0, Lcom/ironsource/u1;->q:Lcom/ironsource/pd;

    invoke-virtual {v4}, Lcom/ironsource/pd;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/ironsource/h4;-><init>(Lcom/ironsource/h5;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {v1, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V
    :try_end_173
    .catchall {:try_start_150 .. :try_end_173} :catchall_174

    goto :goto_18f

    :catchall_174
    move-exception v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send event exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_18f
    :goto_18f
    return-void
.end method

.method static synthetic L(Lcom/ironsource/u1;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ironsource/u1;->m:Z

    return p0
.end method

.method static synthetic M(Lcom/ironsource/u1;)Lcom/ironsource/a3;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/u1;->p:Lcom/ironsource/a3;

    return-object p0
.end method

.method private N()Z
    .registers 3

    iget v0, p0, Lcom/ironsource/u1;->t:I

    iget v1, p0, Lcom/ironsource/u1;->w:I

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/ironsource/u1;->m:Z

    if-eqz v0, :cond_10

    :cond_a
    iget-boolean v0, p0, Lcom/ironsource/u1;->l:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static synthetic Q(Lcom/ironsource/u1;)Z
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/u1;->N()Z

    move-result p0

    return p0
.end method

.method static synthetic R(Lcom/ironsource/u1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/u1;->J()V

    return-void
.end method

.method private S(Lcom/ironsource/a4;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    iget-object v1, p0, Lcom/ironsource/u1;->z:[I

    invoke-direct {p0, v1}, Lcom/ironsource/u1;->s([I)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result p1

    iget-object v1, p0, Lcom/ironsource/u1;->z:[I

    invoke-direct {p0, p1, v1}, Lcom/ironsource/u1;->l(I[I)Z

    move-result p1

    xor-int/2addr v0, p1

    goto :goto_2b

    :cond_17
    iget-object v1, p0, Lcom/ironsource/u1;->A:[I

    invoke-direct {p0, v1}, Lcom/ironsource/u1;->s([I)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result p1

    iget-object v0, p0, Lcom/ironsource/u1;->A:[I

    invoke-direct {p0, p1, v0}, Lcom/ironsource/u1;->l(I[I)Z

    move-result v0

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :cond_2b
    :goto_2b
    return v0
.end method

.method static synthetic T(Lcom/ironsource/u1;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/u1;->v:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic V(Lcom/ironsource/u1;)Lcom/ironsource/mediationsdk/events/ISErrorListener;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/u1;->N:Lcom/ironsource/mediationsdk/events/ISErrorListener;

    return-object p0
.end method

.method static synthetic X(Lcom/ironsource/u1;)Lcom/ironsource/u1$f;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/u1;->K:Lcom/ironsource/u1$f;

    return-object p0
.end method

.method static synthetic Y(Lcom/ironsource/u1;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/u1;->E:Ljava/util/Map;

    return-object p0
.end method

.method private a(ILcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I
    .registers 7

    sget-object v0, Lcom/ironsource/u1$e;->b:Lcom/ironsource/u1$e;

    invoke-virtual {v0}, Lcom/ironsource/u1$e;->a()I

    move-result v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-eq p2, v1, :cond_6f

    const/16 v1, 0xf

    if-eq p1, v1, :cond_6f

    const/16 v1, 0x12c

    if-lt p1, v1, :cond_17

    const/16 v1, 0x190

    if-ge p1, v1, :cond_17

    goto :goto_6f

    :cond_17
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-eq p2, v1, :cond_6c

    const/16 v1, 0x3e8

    const/16 v2, 0x7d0

    if-lt p1, v1, :cond_23

    if-lt p1, v2, :cond_6c

    :cond_23
    const v1, 0x16378

    const v3, 0x16760

    if-lt p1, v1, :cond_2e

    if-ge p1, v3, :cond_2e

    goto :goto_6c

    :cond_2e
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-eq p2, v1, :cond_69

    const/16 v1, 0xbb8

    if-lt p1, v2, :cond_38

    if-lt p1, v1, :cond_69

    :cond_38
    const v2, 0x16b48

    if-lt p1, v3, :cond_40

    if-ge p1, v2, :cond_40

    goto :goto_69

    :cond_40
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-eq p2, v3, :cond_66

    const/16 v3, 0xfa0

    if-lt p1, v1, :cond_4a

    if-lt p1, v3, :cond_66

    :cond_4a
    const v1, 0x16f30

    if-lt p1, v2, :cond_52

    if-ge p1, v1, :cond_52

    goto :goto_66

    :cond_52
    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->NATIVE_AD:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-eq p2, v2, :cond_63

    if-lt p1, v3, :cond_5c

    const/16 p2, 0x1388

    if-lt p1, p2, :cond_63

    :cond_5c
    if-lt p1, v1, :cond_75

    const p2, 0x17318

    if-ge p1, p2, :cond_75

    :cond_63
    sget-object p1, Lcom/ironsource/u1$e;->f:Lcom/ironsource/u1$e;

    goto :goto_71

    :cond_66
    :goto_66
    sget-object p1, Lcom/ironsource/u1$e;->g:Lcom/ironsource/u1$e;

    goto :goto_71

    :cond_69
    :goto_69
    sget-object p1, Lcom/ironsource/u1$e;->d:Lcom/ironsource/u1$e;

    goto :goto_71

    :cond_6c
    :goto_6c
    sget-object p1, Lcom/ironsource/u1$e;->e:Lcom/ironsource/u1$e;

    goto :goto_71

    :cond_6f
    :goto_6f
    sget-object p1, Lcom/ironsource/u1$e;->c:Lcom/ironsource/u1$e;

    :goto_71
    invoke-virtual {p1}, Lcom/ironsource/u1$e;->a()I

    move-result v0

    :cond_75
    return v0
.end method

.method static synthetic b(Lcom/ironsource/u1;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/u1;->t:I

    return p1
.end method

.method static synthetic c(Lcom/ironsource/u1;ILcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/u1;->a(ILcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/ironsource/u1;Lcom/ironsource/a4;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/u1;->t(Lcom/ironsource/a4;)I

    move-result p0

    return p0
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/u1;->O:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/u1;->p:Lcom/ironsource/a3;

    iget-object v2, p0, Lcom/ironsource/u1;->r:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/a3;->a(Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/u1;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private f(Lcom/ironsource/a4;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/u1;->g(Lcom/ironsource/a4;Ljava/lang/String;I)V

    return-void
.end method

.method private g(Lcom/ironsource/a4;Ljava/lang/String;I)V
    .registers 7

    invoke-virtual {p1}, Lcom/ironsource/a4;->b()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/a4;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_28
    :goto_28
    return-void
.end method

.method static synthetic h(Lcom/ironsource/u1;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/u1;->e()V

    return-void
.end method

.method static synthetic i(Lcom/ironsource/u1;Lcom/ironsource/a4;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/u1;->f(Lcom/ironsource/a4;Ljava/lang/String;)V

    return-void
.end method

.method private k(Lorg/json/JSONObject;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getAge()I

    move-result v0

    if-lez v0, :cond_15

    const-string v0, "age"

    iget-object v1, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getAge()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_15
    iget-object v0, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "gen"

    iget-object v1, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2c
    iget-object v0, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getLevel()I

    move-result v0

    if-lez v0, :cond_3f

    const-string v0, "lvl"

    iget-object v1, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getLevel()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3f
    iget-object v0, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_56

    const-string v0, "pay"

    iget-object v1, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_56
    iget-object v0, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIapt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_6d

    const-string v0, "iapt"

    iget-object v1, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIapt()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_6d
    iget-object v0, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getUcd()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_84

    const-string v0, "ucd"

    iget-object v1, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getUcd()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_84
    iget-object v0, p0, Lcom/ironsource/u1;->M:Lcom/ironsource/nb;

    if-eqz v0, :cond_b9

    invoke-virtual {v0}, Lcom/ironsource/nb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_97

    const-string v1, "segmentId"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_97
    iget-object v0, p0, Lcom/ironsource/u1;->M:Lcom/ironsource/nb;

    invoke-virtual {v0}, Lcom/ironsource/nb;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b4} :catch_b5

    goto :goto_a1

    :catch_b5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b9
    return-void
.end method

.method private l(I[I)Z
    .registers 6

    invoke-direct {p0, p2}, Lcom/ironsource/u1;->s([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_8
    array-length v2, p2

    if-ge v0, v2, :cond_14

    aget v2, p2, v0

    if-ne p1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_14

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    :goto_14
    return v1
.end method

.method static synthetic m(Lcom/ironsource/u1;I[I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/u1;->l(I[I)Z

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/ironsource/u1;Ljava/lang/String;Lcom/ironsource/a4;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/u1;->r(Ljava/lang/String;Lcom/ironsource/a4;)Z

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/ironsource/u1;Ljava/util/ArrayList;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/u1;->x(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method static synthetic p(Lcom/ironsource/u1;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/u1;->m:Z

    return p1
.end method

.method static synthetic q(Lcom/ironsource/u1;[I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/u1;->s([I)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized r(Ljava/lang/String;Lcom/ironsource/a4;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2f

    if-nez p1, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_c
    :try_start_c
    iget-object p1, p0, Lcom/ironsource/u1;->C:[I

    invoke-direct {p0, p1}, Lcom/ironsource/u1;->s([I)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-virtual {p2}, Lcom/ironsource/a4;->c()I

    move-result p1

    iget-object p2, p0, Lcom/ironsource/u1;->C:[I

    invoke-direct {p0, p1, p2}, Lcom/ironsource/u1;->l(I[I)Z

    move-result p1

    goto :goto_2d

    :cond_1f
    iget-object p1, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/ironsource/a4;->c()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2f

    :goto_2d
    monitor-exit p0

    return p1

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private s([I)Z
    .registers 2

    if-eqz p1, :cond_7

    array-length p1, p1

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method private declared-synchronized t(Lcom/ironsource/a4;)I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_b

    const v0, 0x15f90

    add-int/2addr p1, v0

    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic u(Lcom/ironsource/u1;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/u1;->u:Ljava/lang/String;

    return-object p0
.end method

.method private v(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/u1;->q:Lcom/ironsource/pd;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/ironsource/pd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_e
    iget v0, p0, Lcom/ironsource/u1;->G:I

    invoke-static {p1, v0}, Lcom/ironsource/qd;->a(Ljava/lang/String;I)Lcom/ironsource/pd;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/u1;->q:Lcom/ironsource/pd;

    :cond_16
    return-void
.end method

.method static synthetic w(Lcom/ironsource/u1;Lcom/ironsource/a4;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/u1;->S(Lcom/ironsource/a4;)Z

    move-result p0

    return p0
.end method

.method private x(Ljava/util/ArrayList;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/a4;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/ironsource/u1;->y:I

    if-lt p1, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method static synthetic z(Lcom/ironsource/u1;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/u1;->r:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method abstract C()V
.end method

.method protected abstract D(Lcom/ironsource/a4;)Z
.end method

.method protected abstract E(I)Ljava/lang/String;
.end method

.method F()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/u1;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/u1;->t:I

    iget-object v0, p0, Lcom/ironsource/u1;->H:Ljava/lang/String;

    iget v1, p0, Lcom/ironsource/u1;->G:I

    invoke-static {v0, v1}, Lcom/ironsource/qd;->a(Ljava/lang/String;I)Lcom/ironsource/pd;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/u1;->q:Lcom/ironsource/pd;

    new-instance v0, Lcom/ironsource/u1$f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EventThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ironsource/u1$f;-><init>(Lcom/ironsource/u1;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/u1;->K:Lcom/ironsource/u1$f;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/ironsource/u1;->K:Lcom/ironsource/u1$f;

    invoke-virtual {v0}, Lcom/ironsource/u1$f;->a()V

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/u1;->u:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/u1;->J:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/ironsource/u1;->C()V

    return-void
.end method

.method protected I(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/u1;->a(ILcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result p1

    return p1
.end method

.method protected abstract K(Lcom/ironsource/a4;)V
.end method

.method protected O(Lcom/ironsource/a4;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2a

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_2a

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2a

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_2a

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result p1

    const/16 v0, 0x34

    if-eq p1, v0, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return p1
.end method

.method protected P(Lcom/ironsource/a4;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_4a

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x72

    if-eq v0, v1, :cond_4a

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x202

    if-eq v0, v1, :cond_4a

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x8c

    if-eq v0, v1, :cond_4a

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4a

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_4a

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4a

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_4a

    invoke-virtual {p1}, Lcom/ironsource/a4;->c()I

    move-result p1

    const/16 v0, 0x34

    if-eq p1, v0, :cond_4a

    const/4 p1, 0x1

    goto :goto_4b

    :cond_4a
    const/4 p1, 0x0

    :goto_4b
    return p1
.end method

.method protected abstract U(Lcom/ironsource/a4;)Z
.end method

.method protected abstract W(Lcom/ironsource/a4;)Z
.end method

.method public a(I)V
    .registers 2

    if-lez p1, :cond_4

    iput p1, p0, Lcom/ironsource/u1;->x:I

    :cond_4
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/u1;->H:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/u1;->H:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ironsource/u1;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/u1;->q:Lcom/ironsource/pd;

    iget-object v1, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/pd;->e(Ljava/lang/String;)V

    const-string v0, "supersonic_sdk.db"

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/ironsource/a3;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ironsource/a3;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/u1;->p:Lcom/ironsource/a3;

    iget-object v0, p0, Lcom/ironsource/u1;->K:Lcom/ironsource/u1$f;

    new-instance v1, Lcom/ironsource/u1$a;

    invoke-direct {v1, p0}, Lcom/ironsource/u1$a;-><init>(Lcom/ironsource/u1;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/u1$f;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/u1;->z:[I

    iget-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultOptInEvents(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/u1;->A:[I

    iget-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultTriggerEvents(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/u1;->B:[I

    iget-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultNonConnectivityEvents(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/u1;->C:[I

    iput-object p2, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    iput-object p1, p0, Lcom/ironsource/u1;->v:Landroid/content/Context;
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    monitor-exit p0

    return-void

    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/ironsource/a4;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/ironsource/a4;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_17

    :try_start_3
    iget-boolean v0, p0, Lcom/ironsource/u1;->s:Z

    if-nez v0, :cond_8

    goto :goto_17

    :cond_8
    iget-object v0, p0, Lcom/ironsource/u1;->K:Lcom/ironsource/u1$f;

    new-instance v1, Lcom/ironsource/u1$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/u1$b;-><init>(Lcom/ironsource/u1;Lcom/ironsource/a4;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/u1$f;->b(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_17
    :goto_17
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/u1;->L:Lcom/ironsource/mediationsdk/IronSourceSegment;

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/events/ISErrorListener;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/u1;->N:Lcom/ironsource/mediationsdk/events/ISErrorListener;

    return-void
.end method

.method public declared-synchronized a(Lcom/ironsource/nb;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/ironsource/u1;->M:Lcom/ironsource/nb;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/u1;->F:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iput-object p1, p0, Lcom/ironsource/u1;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ironsource/u1;->v(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/u1;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/util/Map;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "auctionTrials"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14

    const-string p2, "auctionFallback"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/u1;->n:Z

    return-void
.end method

.method public a([ILandroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/u1;->A:[I

    iget-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultOptInEvents(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/u1;->F:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    if-lez p1, :cond_4

    iput p1, p0, Lcom/ironsource/u1;->w:I

    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/ironsource/u1;->q:Lcom/ironsource/pd;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/ironsource/pd;->e(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/u1;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/u1;->s:Z

    return-void
.end method

.method public b([ILandroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/u1;->B:[I

    iget-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultTriggerEvents(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/u1;->D:Ljava/util/Map;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    if-lez p1, :cond_4

    iput p1, p0, Lcom/ironsource/u1;->y:I

    :cond_4
    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/u1;->l:Z

    return-void
.end method

.method public c([ILandroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/u1;->z:[I

    iget-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/ironsource/u1;->o:I

    return-void
.end method

.method public d([ILandroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/u1;->C:[I

    iget-object v0, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultNonConnectivityEvents(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/u1;->K:Lcom/ironsource/u1$f;

    new-instance v1, Lcom/ironsource/u1$d;

    invoke-direct {v1, p0}, Lcom/ironsource/u1$d;-><init>(Lcom/ironsource/u1;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/u1$f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected j(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/a4;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/ironsource/u1;->O:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/ironsource/u1;->p:Lcom/ironsource/a3;

    iget-object v2, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/ironsource/a3;->a(Ljava/util/List;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/u1;->p:Lcom/ironsource/a3;

    iget-object v1, p0, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/ironsource/a3;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/ironsource/u1;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ironsource/u1;->t:I

    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw p1

    :cond_26
    :goto_26
    return-void
.end method

.method protected abstract y(Lcom/ironsource/a4;)I
.end method
