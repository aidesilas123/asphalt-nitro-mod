###### Class com.json.mediationsdk.w (com.ironsource.mediationsdk.w)
.class public Lcom/ironsource/mediationsdk/w;
.super Lcom/ironsource/mediationsdk/m;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/ra;
.implements Lcom/ironsource/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/w$h;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/Object;

.field private B:Lcom/ironsource/t3;

.field private C:Z

.field private final D:Z

.field private final E:J

.field private final F:Ljava/lang/Runnable;

.field private final e:Lcom/ironsource/z6;

.field private final f:Lcom/ironsource/z6$a;

.field private g:Lcom/ironsource/mediationsdk/k;

.field private h:Lcom/ironsource/mediationsdk/w$h;

.field private i:Lcom/ironsource/w8;

.field private j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private k:Lcom/ironsource/m1;

.field private l:I

.field private m:Lcom/ironsource/mediationsdk/x;

.field private n:I

.field private final o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/x;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/x;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Lorg/json/JSONObject;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Lcom/ironsource/mediationsdk/e;

.field private v:Lcom/ironsource/d1;

.field private w:Lcom/ironsource/mediationsdk/h;

.field private x:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/d1;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private z:J


# direct methods
.method constructor <init>(Lcom/ironsource/l5;Lcom/ironsource/k5;Ljava/util/List;Lcom/ironsource/mediationsdk/k;Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/l5;",
            "Lcom/ironsource/k5;",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/k;",
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p5, p6}, Lcom/ironsource/mediationsdk/m;-><init>(Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    sget-object p5, Lcom/ironsource/mediationsdk/w$h;->a:Lcom/ironsource/mediationsdk/w$h;

    iput-object p5, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    const-string p5, ""

    iput-object p5, p0, Lcom/ironsource/mediationsdk/w;->s:Ljava/lang/String;

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/ironsource/mediationsdk/w;->A:Ljava/lang/Object;

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/ironsource/mediationsdk/w;->C:Z

    new-instance p6, Lcom/ironsource/mediationsdk/w$c;

    invoke-direct {p6, p0}, Lcom/ironsource/mediationsdk/w$c;-><init>(Lcom/ironsource/mediationsdk/w;)V

    iput-object p6, p0, Lcom/ironsource/mediationsdk/w;->F:Ljava/lang/Runnable;

    invoke-interface {p1}, Lcom/ironsource/l5;->d()Lcom/ironsource/z6;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w;->e:Lcom/ironsource/z6;

    invoke-interface {p2}, Lcom/ironsource/k5;->b()Lcom/ironsource/z6$a;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/mediationsdk/w;->f:Lcom/ironsource/z6$a;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 p2, 0x1

    new-array v2, p2, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ext1"

    aput-object v5, v4, p5

    const-string v5, "Prog_BN"

    aput-object v5, v4, p2

    aput-object v4, v2, p5

    const v4, 0x14570

    invoke-direct {p0, v4, v2}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAuctionEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/k;->k()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/w;->o:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/w;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/w;->x:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/w;->y:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {p1, v2}, Lcom/ironsource/z6;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/w;->n:I

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p1

    iget-object v4, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/k;->d()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;I)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/k;->k()Z

    move-result p1

    if-eqz p1, :cond_a9

    new-instance p1, Lcom/ironsource/mediationsdk/e;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/k;->b()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object v4

    invoke-direct {p1, v2, v4, p0}, Lcom/ironsource/mediationsdk/e;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/utils/a;Lcom/ironsource/t0;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w;->u:Lcom/ironsource/mediationsdk/e;

    :cond_a9
    new-instance p1, Lcom/ironsource/mediationsdk/h;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/k;->b()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/a;->c()I

    move-result v2

    invoke-direct {p1, p3, v2}, Lcom/ironsource/mediationsdk/h;-><init>(Ljava/util/List;I)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w;->w:Lcom/ironsource/mediationsdk/h;

    invoke-direct {p0, p3, p4}, Lcom/ironsource/mediationsdk/w;->A(Ljava/util/List;Lcom/ironsource/mediationsdk/k;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ironsource/mediationsdk/w;->z:J

    sget-object p1, Lcom/ironsource/mediationsdk/w$h;->b:Lcom/ironsource/mediationsdk/w$h;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/w;->q(Lcom/ironsource/mediationsdk/w$h;)V

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/k;->g()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/w;->D:Z

    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/k;->h()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/ironsource/mediationsdk/w;->E:J

    new-instance p1, Lcom/ironsource/w8;

    invoke-static {}, Lcom/ironsource/lifecycle/b;->d()Lcom/ironsource/lifecycle/b;

    move-result-object p3

    new-instance p4, Lcom/ironsource/oc;

    invoke-direct {p4}, Lcom/ironsource/oc;-><init>()V

    invoke-direct {p1, p6, p3, p4}, Lcom/ironsource/w8;-><init>(Ljava/lang/Runnable;Lcom/ironsource/lifecycle/b;Lcom/ironsource/oc;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w;->i:Lcom/ironsource/w8;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    sub-long/2addr p3, v0

    new-array p1, p2, [[Ljava/lang/Object;

    new-array p6, v3, [Ljava/lang/Object;

    const-string v0, "duration"

    aput-object v0, p6, p5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p6, p2

    aput-object p6, p1, p5

    const p2, 0x14571

    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/k;Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/k;",
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/ironsource/e9;->h()Lcom/ironsource/l5;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/e9;->g()Lcom/ironsource/k5;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/mediationsdk/w;-><init>(Lcom/ironsource/l5;Lcom/ironsource/k5;Ljava/util/List;Lcom/ironsource/mediationsdk/k;Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method

.method private A(Ljava/util/List;Lcom/ironsource/mediationsdk/k;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/k;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    new-instance v2, Lcom/ironsource/mediationsdk/w$f;

    invoke-direct {v2, p0, v1}, Lcom/ironsource/mediationsdk/w$f;-><init>(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1e
    sget-object p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/k;->c()Lcom/ironsource/k1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/k1;->l()Z

    move-result v1

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/k;->c()Lcom/ironsource/k1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/k1;->o()Z

    move-result p2

    invoke-virtual {p1, v1, p2, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->executeTasks(ZZLjava/util/List;)V

    return-void
.end method

.method private B(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auction waterfallString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_90

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_90

    new-array p1, v2, [[Ljava/lang/Object;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "errorCode"

    aput-object p3, p2, v4

    const/16 v0, 0x3ed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v3

    aput-object p2, p1, v4

    new-array p2, v2, [Ljava/lang/Object;

    const-string v1, "duration"

    aput-object v1, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v3

    aput-object p2, p1, v3

    const/16 p2, 0xdad

    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    sget-object p1, Lcom/ironsource/mediationsdk/w$h;->e:Lcom/ironsource/mediationsdk/w$h;

    sget-object p2, Lcom/ironsource/mediationsdk/w$h;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/w;->E(Lcom/ironsource/mediationsdk/w$h;Lcom/ironsource/mediationsdk/w$h;)Z

    move-result p1

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/ironsource/mediationsdk/w;->i:Lcom/ironsource/w8;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/k;->f()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/w8;->a(J)V

    goto :goto_c6

    :cond_67
    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v5, "No candidates available for auctioning"

    invoke-direct {v1, v0, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    new-array p1, v3, [[Ljava/lang/Object;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p3, p2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    aput-object p2, p1, v4

    const/16 p2, 0xc27

    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    sget-object p1, Lcom/ironsource/mediationsdk/w$h;->b:Lcom/ironsource/mediationsdk/w$h;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/w;->q(Lcom/ironsource/mediationsdk/w$h;)V

    goto :goto_c6

    :cond_90
    new-array v1, v3, [[Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "ext1"

    aput-object v5, v2, v4

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v3

    aput-object v2, v1, v4

    const/16 p3, 0xdb6

    invoke-direct {p0, p3, v1}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->u:Lcom/ironsource/mediationsdk/e;

    if-eqz v2, :cond_c1

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/ironsource/mediationsdk/w;->w:Lcom/ironsource/mediationsdk/h;

    iget v7, p0, Lcom/ironsource/mediationsdk/w;->n:I

    iget-object v8, p0, Lcom/ironsource/mediationsdk/m;->c:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->W()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v9

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/ironsource/mediationsdk/e;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/h;ILcom/ironsource/mediationsdk/IronSourceSegment;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    goto :goto_c6

    :cond_c1
    const-string p1, "mAuctionHandler is null"

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_c6
    return-void
.end method

.method private C(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/ironsource/x1;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/w;->B(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void

    :cond_a
    new-instance v1, Lcom/ironsource/a2;

    invoke-direct {v1}, Lcom/ironsource/a2;-><init>()V

    new-instance v3, Lcom/ironsource/mediationsdk/w$e;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/ironsource/mediationsdk/w$e;-><init>(Lcom/ironsource/mediationsdk/w;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/util/List;)V

    const/16 p1, 0xdc0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/w;->k(I)V

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/w;->E:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/a2;->a(Ljava/util/List;Lcom/ironsource/a2$b;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static D(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .registers 10

    const-string v0, "ext1"

    :try_start_2
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_ba

    goto :goto_44

    :sswitch_13
    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v2, 0x4

    goto :goto_44

    :sswitch_1d
    const-string v3, "BANNER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v2, 0x0

    goto :goto_44

    :sswitch_27
    const-string v3, "SMART"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v2, 0x3

    goto :goto_44

    :sswitch_31
    const-string v3, "LARGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v2, 0x1

    goto :goto_44

    :sswitch_3b
    const-string v3, "RECTANGLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_ae

    if-eqz v1, :cond_44

    const/4 v2, 0x2

    :cond_44
    :goto_44
    const-string v1, "bannerAdSize"

    if-eqz v2, :cond_84

    if-eq v2, v7, :cond_80

    if-eq v2, v6, :cond_7c

    if-eq v2, v5, :cond_77

    if-eq v2, v4, :cond_51

    goto :goto_87

    :cond_51
    const/4 v2, 0x6

    :try_start_52
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "custom_banner_size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_87

    :cond_77
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_87

    :cond_7c
    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_87

    :cond_80
    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_87

    :cond_84
    invoke-virtual {p0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_87
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->isAdaptive()Z

    move-result p1

    if-eqz p1, :cond_b8

    const-string p1, "Adaptive=true"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , Adaptive=true"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_aa
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_ad} :catch_ae

    goto :goto_b8

    :catch_ae
    move-exception p0

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_b8
    :goto_b8
    return-void

    nop

    :sswitch_data_ba
    .sparse-switch
        -0x171242b1 -> :sswitch_3b
        0x44dc31b -> :sswitch_31
        0x4b59da9 -> :sswitch_27
        0x7458732c -> :sswitch_1d
        0x77297f71 -> :sswitch_13
    .end sparse-switch
.end method

.method private E(Lcom/ironsource/mediationsdk/w$h;Lcom/ironsource/mediationsdk/w$h;)Z
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->A:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    if-ne v1, p1, :cond_30

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set state from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-object p2, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    monitor-exit v0

    return p1

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private F(Lcom/ironsource/d1;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/x;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/a0;->p()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_22

    :cond_15
    invoke-virtual {p1}, Lcom/ironsource/d1;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1f
    const-string v0, "1"

    goto :goto_24

    :cond_22
    :goto_22
    const-string v0, "2"

    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic G(Lcom/ironsource/mediationsdk/w;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->k0()V

    return-void
.end method

.method static synthetic H(Lcom/ironsource/mediationsdk/w;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/w;->C(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method private I(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/ironsource/x1;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reason"

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->a0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/b;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11a

    iget-object v1, p0, Lcom/ironsource/mediationsdk/w;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/ironsource/mediationsdk/x;

    iget-object v2, v7, Lcom/ironsource/mediationsdk/a0;->d:Lorg/json/JSONObject;

    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->createAdDataForNetworkAdapter(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v6

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/a0;->p()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_ee

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/w;->D:Z

    if-eqz v2, :cond_56

    new-instance v2, Lcom/ironsource/x1;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/a0;->g()I

    move-result v4

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/ironsource/x1;-><init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/z1;Lcom/ironsource/y1;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_56
    const v2, 0x14480

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    :try_start_5c
    invoke-virtual {v7, v6}, Lcom/ironsource/mediationsdk/x;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_87

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/a0;->g()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_87
    const v3, 0x14461

    new-array v6, v8, [[Ljava/lang/Object;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v0, v9, v5

    const-string v10, "Missing bidding data"

    aput-object v10, v9, v8

    aput-object v9, v6, v5

    invoke-virtual {v7, v3, v6}, Lcom/ironsource/mediationsdk/x;->a(I[[Ljava/lang/Object;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_99} :catch_c4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5c .. :try_end_99} :catch_9a

    goto :goto_1e

    :catch_9a
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepareAuctionCandidates - error while calling smash.getBiddingData - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v6, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-array v6, v8, [[Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v3, v4, v8

    aput-object v4, v6, v5

    invoke-virtual {v7, v2, v6}, Lcom/ironsource/mediationsdk/x;->a(I[[Ljava/lang/Object;)V

    goto/16 :goto_1e

    :catch_c4
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepareAuctionCandidates - exception while calling smash.getBiddingData - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v6, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-array v6, v8, [[Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v3, v4, v8

    aput-object v4, v6, v5

    invoke-virtual {v7, v2, v6}, Lcom/ironsource/mediationsdk/x;->a(I[[Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_ee
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/a0;->p()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/a0;->g()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    :cond_11a
    return-void
.end method

.method private J(Z)V
    .registers 5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/k;->k()Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz p1, :cond_25

    sget-object v1, Lcom/ironsource/mediationsdk/w$h;->e:Lcom/ironsource/mediationsdk/w$h;

    goto :goto_2f

    :cond_25
    sget-object v1, Lcom/ironsource/mediationsdk/w$h;->d:Lcom/ironsource/mediationsdk/w$h;

    goto :goto_2f

    :cond_28
    if-eqz p1, :cond_2d

    sget-object v1, Lcom/ironsource/mediationsdk/w$h;->g:Lcom/ironsource/mediationsdk/w$h;

    goto :goto_2f

    :cond_2d
    sget-object v1, Lcom/ironsource/mediationsdk/w$h;->f:Lcom/ironsource/mediationsdk/w$h;

    :goto_2f
    sget-object v2, Lcom/ironsource/mediationsdk/w$h;->c:Lcom/ironsource/mediationsdk/w$h;

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/w;->E(Lcom/ironsource/mediationsdk/w$h;Lcom/ironsource/mediationsdk/w$h;)Z

    move-result v1

    if-eqz v1, :cond_6f

    new-instance v0, Lcom/ironsource/t3;

    invoke-direct {v0}, Lcom/ironsource/t3;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/w;->B:Lcom/ironsource/t3;

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/w;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/w;->r:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/mediationsdk/w;->l:I

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->e:Lcom/ironsource/z6;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Lcom/ironsource/z6;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/w;->n:I

    if-eqz p1, :cond_57

    const/16 p1, 0xbc3

    goto :goto_59

    :cond_57
    const/16 p1, 0xbb9

    :goto_59
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/w;->k(I)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/k;->k()Z

    move-result p1

    if-eqz p1, :cond_68

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->j0()V

    goto :goto_85

    :cond_68
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->m0()V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->i0()V

    goto :goto_85

    :cond_6f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong state - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_85
    return-void
.end method

.method private K(I)Z
    .registers 3

    const/16 v0, 0xc81

    if-eq p1, v0, :cond_2b

    const/16 v0, 0xc26

    if-eq p1, v0, :cond_2b

    const/16 v0, 0xc27

    if-eq p1, v0, :cond_2b

    const/16 v0, 0xc2c

    if-eq p1, v0, :cond_2b

    const/16 v0, 0xc2f

    if-eq p1, v0, :cond_2b

    const/16 v0, 0xc28

    if-eq p1, v0, :cond_2b

    const/16 v0, 0xc2b

    if-eq p1, v0, :cond_2b

    const/16 v0, 0xdad

    if-eq p1, v0, :cond_2b

    const/16 v0, 0xdae

    if-eq p1, v0, :cond_2b

    const/16 v0, 0xdb2

    if-ne p1, v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p1, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    :goto_2c
    return p1
.end method

.method static synthetic L(Lcom/ironsource/mediationsdk/w;)Lcom/ironsource/mediationsdk/k;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    return-object p0
.end method

.method static synthetic M(Lcom/ironsource/mediationsdk/w;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->l0()V

    return-void
.end method

.method static synthetic N(Lcom/ironsource/mediationsdk/w;)Z
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->n0()Z

    move-result p0

    return p0
.end method

.method private O(Lcom/ironsource/mediationsdk/x;)V
    .registers 9

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/d1;

    invoke-virtual {v0}, Lcom/ironsource/d1;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/a0;->c(Ljava/lang/String;)V

    goto :goto_26

    :cond_25
    move-object v0, v1

    :goto_26
    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/d1;

    invoke-virtual {v2}, Lcom/ironsource/d1;->a()Lorg/json/JSONObject;

    move-result-object v2

    :try_start_36
    iget-object v3, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->b()Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3c} :catch_3d

    goto :goto_58

    :catch_3d
    move-exception v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to make copy of banner layout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :goto_58
    iget-object v3, p0, Lcom/ironsource/mediationsdk/w;->k:Lcom/ironsource/m1;

    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/ironsource/mediationsdk/x;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/m1;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_5d
    return-void
.end method

.method static synthetic P(Lcom/ironsource/mediationsdk/w;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ironsource/mediationsdk/w;->D:Z

    return p0
.end method

.method static synthetic Q(Lcom/ironsource/mediationsdk/w;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/w;->o:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private R()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private S()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->m:Lcom/ironsource/mediationsdk/x;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActiveSmash = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->m:Lcom/ironsource/mediationsdk/x;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/a0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->m:Lcom/ironsource/mediationsdk/x;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/x;->t()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/w;->m:Lcom/ironsource/mediationsdk/x;

    :cond_28
    return-void
.end method

.method static synthetic T(Lcom/ironsource/mediationsdk/w;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->j0()V

    return-void
.end method

.method static synthetic U(Lcom/ironsource/mediationsdk/w;)Lcom/ironsource/w8;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/w;->i:Lcom/ironsource/w8;

    return-object p0
.end method

.method private V()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/d1;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/w;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/x;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/a0;->p()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->a0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/b;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_f

    :cond_34
    new-instance v3, Lcom/ironsource/d1;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ironsource/d1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_41
    return-object v0
.end method

.method private W()Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->isSmart()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->a:Lcom/ironsource/mediationsdk/ISBannerSize;

    goto :goto_32

    :cond_27
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    goto :goto_32

    :cond_2a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return-object v0
.end method

.method static synthetic X(Lcom/ironsource/mediationsdk/w;)Lcom/ironsource/mediationsdk/x;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/w;->m:Lcom/ironsource/mediationsdk/x;

    return-object p0
.end method

.method static synthetic Y(Lcom/ironsource/mediationsdk/w;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/mediationsdk/w;->n:I

    return p0
.end method

.method private Z()Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method private a0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->k:Lcom/ironsource/m1;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method static synthetic b0(Lcom/ironsource/mediationsdk/w;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->S()V

    return-void
.end method

.method private c0()V
    .registers 11

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Empty waterfall"

    goto :goto_d

    :cond_b
    const-string v0, "Mediation No fill"

    :goto_d
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/w;->g(Lcom/ironsource/mediationsdk/x;)V

    sget-object v2, Lcom/ironsource/mediationsdk/w$h;->f:Lcom/ironsource/mediationsdk/w$h;

    sget-object v3, Lcom/ironsource/mediationsdk/w$h;->b:Lcom/ironsource/mediationsdk/w$h;

    invoke-direct {p0, v2, v3}, Lcom/ironsource/mediationsdk/w;->E(Lcom/ironsource/mediationsdk/w$h;Lcom/ironsource/mediationsdk/w$h;)Z

    move-result v2

    const-string v4, "duration"

    const/16 v5, 0x25e

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_79

    const/4 v1, 0x3

    new-array v1, v1, [[Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "errorCode"

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    aput-object v2, v1, v7

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "reason"

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    aput-object v2, v1, v8

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v4, v2, v7

    iget-object v3, p0, Lcom/ironsource/mediationsdk/w;->B:Lcom/ironsource/t3;

    invoke-static {v3}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    aput-object v2, v1, v6

    const/16 v2, 0xc27

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_d6

    :cond_79
    sget-object v2, Lcom/ironsource/mediationsdk/w$h;->g:Lcom/ironsource/mediationsdk/w$h;

    sget-object v9, Lcom/ironsource/mediationsdk/w$h;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-direct {p0, v2, v9}, Lcom/ironsource/mediationsdk/w;->E(Lcom/ironsource/mediationsdk/w$h;Lcom/ironsource/mediationsdk/w$h;)Z

    move-result v2

    if-eqz v2, :cond_bd

    new-array v1, v8, [[Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v4, v2, v7

    iget-object v3, p0, Lcom/ironsource/mediationsdk/w;->B:Lcom/ironsource/t3;

    invoke-static {v3}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    aput-object v2, v1, v7

    const/16 v2, 0xc81

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v2, v1, v8}, Lcom/ironsource/mediationsdk/n;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->i:Lcom/ironsource/w8;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/k;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/w8;->a(J)V

    goto :goto_d6

    :cond_bd
    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/w;->q(Lcom/ironsource/mediationsdk/w$h;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_d6
    return-void
.end method

.method private d0()V
    .registers 3

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/b;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0xd48

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/w;->k(I)V

    :cond_22
    return-void
.end method

.method private e0()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    sget-object v1, Lcom/ironsource/mediationsdk/w$h;->g:Lcom/ironsource/mediationsdk/w$h;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/ironsource/mediationsdk/w$h;->e:Lcom/ironsource/mediationsdk/w$h;

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

.method private f0()Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->A:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    sget-object v2, Lcom/ironsource/mediationsdk/w$h;->h:Lcom/ironsource/mediationsdk/w$h;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method static synthetic g(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/m1;)Lcom/ironsource/m1;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w;->k:Lcom/ironsource/m1;

    return-object p1
.end method

.method private g0()Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->A:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    sget-object v2, Lcom/ironsource/mediationsdk/w$h;->d:Lcom/ironsource/mediationsdk/w$h;

    if-eq v1, v2, :cond_10

    sget-object v2, Lcom/ironsource/mediationsdk/w$h;->e:Lcom/ironsource/mediationsdk/w$h;

    if-ne v1, v2, :cond_e

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v1, 0x1

    :goto_11
    monitor-exit v0

    return v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method static synthetic h(Lcom/ironsource/mediationsdk/w;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p0
.end method

.method private h0()Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->A:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    sget-object v2, Lcom/ironsource/mediationsdk/w$h;->f:Lcom/ironsource/mediationsdk/w$h;

    if-eq v1, v2, :cond_10

    sget-object v2, Lcom/ironsource/mediationsdk/w$h;->g:Lcom/ironsource/mediationsdk/w$h;

    if-ne v1, v2, :cond_e

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v1, 0x1

    :goto_11
    monitor-exit v0

    return v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method static synthetic i(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object p1
.end method

.method private i0()V
    .registers 8

    const/4 v0, 0x1

    :try_start_1
    iget v1, p0, Lcom/ironsource/mediationsdk/w;->l:I

    :goto_3
    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/x;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/a0;->h()Z

    move-result v3

    if-eqz v3, :cond_3a

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loading smash - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/a0;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ironsource/mediationsdk/w;->l:I

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/w;->O(Lcom/ironsource/mediationsdk/x;)V

    return-void

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3d
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->c0()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_41

    goto :goto_66

    :catch_41
    move-exception v1

    const/4 v2, 0x2

    new-array v3, v2, [[Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "ext1"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "loadNextSmash"

    aput-object v5, v4, v0

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "reason"

    aput-object v4, v2, v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    aput-object v2, v3, v0

    const v0, 0x14480

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    :goto_66
    return-void
.end method

.method private j(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/d1;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waterfall.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_2f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_55

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/d1;

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/w;->o(Lcom/ironsource/d1;)V

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/w;->F(Lcom/ironsource/d1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_52

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWaterfall() - next waterfall is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j0()V
    .registers 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    new-instance v0, Lcom/ironsource/mediationsdk/w$d;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/w$d;-><init>(Lcom/ironsource/mediationsdk/w;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private k(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    return-void
.end method

.method private k0()V
    .registers 4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    sget-object v1, Lcom/ironsource/mediationsdk/w$h;->h:Lcom/ironsource/mediationsdk/w$h;

    sget-object v2, Lcom/ironsource/mediationsdk/w$h;->c:Lcom/ironsource/mediationsdk/w$h;

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/w;->E(Lcom/ironsource/mediationsdk/w$h;Lcom/ironsource/mediationsdk/w$h;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/w;->J(Z)V

    goto :goto_2c

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private l(I[[Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/ironsource/mediationsdk/w;->n:I

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/w;->m(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method private l0()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->w:Lcom/ironsource/mediationsdk/h;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/w;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/h;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_14
    return-void
.end method

.method private m(I[[Ljava/lang/Object;I)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v2

    :try_start_6
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->Z()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/w;->D(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    :cond_f
    iget-object v3, p0, Lcom/ironsource/mediationsdk/w;->k:Lcom/ironsource/m1;

    if-eqz v3, :cond_1c

    const-string v3, "placement"

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->a0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c
    const-string v3, "sessionDepth"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/w;->q:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_30

    const-string p3, "auctionId"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/w;->q:Ljava/lang/String;

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30
    iget-object p3, p0, Lcom/ironsource/mediationsdk/w;->r:Lorg/json/JSONObject;

    if-eqz p3, :cond_41

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_41

    const-string p3, "genericParams"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/w;->r:Lorg/json/JSONObject;

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_41
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/w;->K(I)Z

    move-result p3

    if-eqz p3, :cond_5d

    const-string p3, "auctionTrials"

    iget v3, p0, Lcom/ironsource/mediationsdk/w;->t:I

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/w;->s:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5d

    const-string p3, "auctionFallback"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/w;->s:Ljava/lang/String;

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5d
    if-eqz p2, :cond_7d

    array-length p3, p2

    const/4 v3, 0x0

    :goto_61
    if-ge v3, p3, :cond_7d

    aget-object v4, p2, v3

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v4, v1

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_70} :catch_73

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :catch_73
    move-exception p2

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_7d
    new-instance p2, Lcom/ironsource/a4;

    invoke-direct {p2, p1, v2}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/q7;->i()Lcom/ironsource/q7;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    return-void
.end method

.method private m0()V
    .registers 3

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->V()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/m;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/w;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/w;->j(Ljava/util/List;)Ljava/lang/String;

    return-void
.end method

.method private n(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_7

    invoke-static {v0, p1, p2}, Lcom/ironsource/mediationsdk/l;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_7
    return-void
.end method

.method private n0()Z
    .registers 6

    iget-wide v0, p0, Lcom/ironsource/mediationsdk/w;->z:J

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/k;->i()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/l;->a(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_37

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waiting before auction - timeToWaitBeforeAuction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/ironsource/mediationsdk/w$g;

    invoke-direct {v3, p0}, Lcom/ironsource/mediationsdk/w$g;-><init>(Lcom/ironsource/mediationsdk/w;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 v0, 0x1

    return v0

    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method private o(Lcom/ironsource/d1;)V
    .registers 16

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/x;

    if-eqz v0, :cond_59

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v1

    iget-object v2, v0, Lcom/ironsource/mediationsdk/a0;->b:Lcom/ironsource/h0;

    invoke-virtual {v2}, Lcom/ironsource/h0;->h()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/c;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v7

    if-eqz v7, :cond_73

    new-instance v1, Lcom/ironsource/mediationsdk/x;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/a0;->b:Lcom/ironsource/h0;

    invoke-virtual {v0}, Lcom/ironsource/h0;->h()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v6

    iget v8, p0, Lcom/ironsource/mediationsdk/w;->n:I

    iget-object v9, p0, Lcom/ironsource/mediationsdk/w;->q:Ljava/lang/String;

    iget-object v10, p0, Lcom/ironsource/mediationsdk/w;->r:Lorg/json/JSONObject;

    iget v11, p0, Lcom/ironsource/mediationsdk/w;->t:I

    iget-object v12, p0, Lcom/ironsource/mediationsdk/w;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->e0()Z

    move-result v13

    move-object v3, v1

    move-object v5, p0

    invoke-direct/range {v3 .. v13}, Lcom/ironsource/mediationsdk/x;-><init>(Lcom/ironsource/mediationsdk/k;Lcom/ironsource/ra;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/AbstractAdapter;ILjava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Z)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/a0;->a(Z)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ironsource/mediationsdk/h$a;->a:Lcom/ironsource/mediationsdk/h$a;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    :cond_59
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find matching smash for auction response item - item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_73
    :goto_73
    return-void
.end method

.method private p(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 15

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "Start initializing provider %s on thread %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/c;->b()Lcom/ironsource/mediationsdk/c;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/ironsource/mediationsdk/c;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;Z)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v10

    if-eqz v10, :cond_48

    new-instance v2, Lcom/ironsource/mediationsdk/x;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    iget v11, p0, Lcom/ironsource/mediationsdk/w;->n:I

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->e0()Z

    move-result v12

    move-object v6, v2

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v6 .. v12}, Lcom/ironsource/mediationsdk/x;-><init>(Lcom/ironsource/mediationsdk/k;Lcom/ironsource/ra;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/AbstractAdapter;IZ)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/w;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " can\'t load adapter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :goto_60
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "Done initializing provider %s on thread %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private q(Lcom/ironsource/mediationsdk/w$h;)V
    .registers 5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->A:Ljava/lang/Object;

    monitor-enter v0

    :try_start_28
    iput-object p1, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method static synthetic r(Lcom/ironsource/mediationsdk/w;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/w;->k(I)V

    return-void
.end method

.method static synthetic s(Lcom/ironsource/mediationsdk/w;I[[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic t(Lcom/ironsource/mediationsdk/w;I[[Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/w;->m(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic u(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/w;->p(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    return-void
.end method

.method static synthetic v(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/mediationsdk/w$h;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/w;->q(Lcom/ironsource/mediationsdk/w$h;)V

    return-void
.end method

.method static synthetic w(Lcom/ironsource/mediationsdk/w;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/w;->B(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic x(Lcom/ironsource/mediationsdk/w;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/w;->I(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method static synthetic y(Lcom/ironsource/mediationsdk/w;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/w;->J(Z)V

    return-void
.end method

.method private z(Lcom/ironsource/mediationsdk/x;Lcom/ironsource/d1;)V
    .registers 7

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->u:Lcom/ironsource/mediationsdk/e;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->g()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->v:Lcom/ironsource/d1;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->a0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/ironsource/mediationsdk/e;->a(Lcom/ironsource/d1;ILcom/ironsource/d1;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/mediationsdk/w;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/d1;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->a0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/m;->a(Lcom/ironsource/d1;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;ILjava/lang/String;J)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auction failed | moving to fallback waterfall (error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->g0()Z

    move-result v0

    if-eqz v0, :cond_8a

    iput-object p4, p0, Lcom/ironsource/mediationsdk/w;->s:Ljava/lang/String;

    iput p3, p0, Lcom/ironsource/mediationsdk/w;->t:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/ironsource/mediationsdk/w;->r:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->m0()V

    const/4 p3, 0x3

    new-array p3, p3, [[Ljava/lang/Object;

    const/4 p4, 0x2

    new-array v0, p4, [Ljava/lang/Object;

    const-string v1, "duration"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const/4 p6, 0x1

    aput-object p5, v0, p6

    aput-object v0, p3, v2

    new-array p5, p4, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p5, p6

    aput-object p5, p3, p6

    new-array p1, p4, [Ljava/lang/Object;

    const-string p5, "reason"

    aput-object p5, p1, v2

    aput-object p2, p1, p6

    aput-object p1, p3, p4

    const/16 p1, 0xdad

    invoke-direct {p0, p1, p3}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    sget-object p2, Lcom/ironsource/mediationsdk/w$h;->d:Lcom/ironsource/mediationsdk/w$h;

    if-ne p1, p2, :cond_81

    sget-object p1, Lcom/ironsource/mediationsdk/w$h;->f:Lcom/ironsource/mediationsdk/w$h;

    goto :goto_83

    :cond_81
    sget-object p1, Lcom/ironsource/mediationsdk/w$h;->g:Lcom/ironsource/mediationsdk/w$h;

    :goto_83
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/w;->q(Lcom/ironsource/mediationsdk/w$h;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->i0()V

    goto :goto_a0

    :cond_8a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "wrong state - mCurrentState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    :goto_a0
    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    new-instance v0, Lcom/ironsource/mediationsdk/w$b;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/mediationsdk/w$b;-><init>(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/l;->c(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/l$b;)V

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/m1;)V
    .registers 7

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/m;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/m;->f()V

    sget-object v2, Lcom/ironsource/mediationsdk/w$h;->b:Lcom/ironsource/mediationsdk/w$h;

    sget-object v3, Lcom/ironsource/mediationsdk/w$h;->c:Lcom/ironsource/mediationsdk/w$h;

    invoke-direct {p0, v2, v3}, Lcom/ironsource/mediationsdk/w;->E(Lcom/ironsource/mediationsdk/w$h;Lcom/ironsource/mediationsdk/w$h;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/n;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v1

    if-nez v1, :cond_2a

    new-instance v0, Lcom/ironsource/mediationsdk/w$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/mediationsdk/w$a;-><init>(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/m1;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    invoke-static {p1, p2, v0}, Lcom/ironsource/mediationsdk/l;->b(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/m1;Lcom/ironsource/mediationsdk/l$b;)V

    goto :goto_37

    :cond_2a
    const-string p1, "can\'t load banner - already has pending invocation"

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_37

    :cond_30
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "can\'t load banner - loadBanner already called and still in progress"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_37
    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/x;Z)V
    .registers 9

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/x;->x()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->q:Ljava/lang/String;

    if-eq p1, v0, :cond_92

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invoked with auctionId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/x;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and the current id is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p3, p1, [[Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "errorCode"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput-object v1, p3, v3

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "reason"

    aput-object v1, p1, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong auction "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/x;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " State - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    aput-object p1, p3, v2

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "ext1"

    aput-object v1, p1, v3

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    aput-object p1, p3, v0

    const p1, 0x14573

    invoke-virtual {p2, p1, p3}, Lcom/ironsource/mediationsdk/x;->a(I[[Ljava/lang/Object;)V

    return-void

    :cond_92
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->h0()Z

    move-result p1

    if-eqz p1, :cond_a7

    iget-object p1, p0, Lcom/ironsource/mediationsdk/w;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/ironsource/mediationsdk/h$a;->b:Lcom/ironsource/mediationsdk/h$a;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->i0()V

    goto :goto_bd

    :cond_a7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "wrong state - mCurrentState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    :goto_bd
    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/x;)V
    .registers 9

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->f0()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/k;->k()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/k;->b()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/a;->p()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/d1;

    if-eqz v0, :cond_34

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/w;->z(Lcom/ironsource/mediationsdk/x;Lcom/ironsource/d1;)V

    :cond_34
    const/16 p1, 0xc2f

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/w;->k(I)V

    goto :goto_95

    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong state - mCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v2, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong State - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "ext1"

    aput-object v5, v2, v4

    aput-object p1, v2, v3

    aput-object v2, v0, v1

    const p1, 0x14573

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    :goto_95
    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/x;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smash = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/a0;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/x;->x()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/ironsource/mediationsdk/w;->q:Ljava/lang/String;

    const-string v5, "ext1"

    const-string v6, "errorCode"

    const/4 v7, 0x3

    const-string v8, "reason"

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v3, v4, :cond_9a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoked with auctionId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/x;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and the current id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ironsource/mediationsdk/w;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-array v2, v7, [[Ljava/lang/Object;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v6, v3, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    aput-object v3, v2, v11

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v8, v3, v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong auction id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/x;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " State - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    aput-object v3, v2, v10

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v5, v3, v11

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    aput-object v3, v2, v9

    const v3, 0x14573

    invoke-virtual {v1, v3, v2}, Lcom/ironsource/mediationsdk/x;->a(I[[Ljava/lang/Object;)V

    return-void

    :cond_9a
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/w;->h0()Z

    move-result v3

    if-eqz v3, :cond_1f6

    iget-object v3, v0, Lcom/ironsource/mediationsdk/w;->m:Lcom/ironsource/mediationsdk/x;

    if-eqz v3, :cond_a7

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/x;->q()V

    :cond_a7
    invoke-virtual/range {p0 .. p1}, Lcom/ironsource/mediationsdk/w;->g(Lcom/ironsource/mediationsdk/x;)V

    iput-object v1, v0, Lcom/ironsource/mediationsdk/w;->m:Lcom/ironsource/mediationsdk/x;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v3, v4}, Lcom/ironsource/mediationsdk/w;->n(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    iget-object v3, v0, Lcom/ironsource/mediationsdk/w;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v4

    sget-object v12, Lcom/ironsource/mediationsdk/h$a;->e:Lcom/ironsource/mediationsdk/h$a;

    invoke-virtual {v3, v4, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/k;->k()Z

    move-result v3

    if-eqz v3, :cond_157

    iget-object v3, v0, Lcom/ironsource/mediationsdk/w;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/d1;

    if-eqz v3, :cond_10d

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/w;->a0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ironsource/d1;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/m;->a(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    iget-object v2, v0, Lcom/ironsource/mediationsdk/w;->u:Lcom/ironsource/mediationsdk/e;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/a0;->g()I

    move-result v4

    iget-object v5, v0, Lcom/ironsource/mediationsdk/w;->v:Lcom/ironsource/d1;

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/e;->a(Lcom/ironsource/d1;ILcom/ironsource/d1;)V

    iget-object v12, v0, Lcom/ironsource/mediationsdk/w;->u:Lcom/ironsource/mediationsdk/e;

    iget-object v13, v0, Lcom/ironsource/mediationsdk/w;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v14, v0, Lcom/ironsource/mediationsdk/w;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/a0;->g()I

    move-result v15

    iget-object v2, v0, Lcom/ironsource/mediationsdk/w;->v:Lcom/ironsource/d1;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Lcom/ironsource/mediationsdk/e;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/d1;Lcom/ironsource/d1;)V

    iget-object v2, v0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/k;->b()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/a;->p()Z

    move-result v2

    if-nez v2, :cond_157

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/w;->z(Lcom/ironsource/mediationsdk/x;Lcom/ironsource/d1;)V

    goto :goto_157

    :cond_10d
    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadSuccess winner instance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " missing from waterfall. auctionId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ironsource/mediationsdk/w;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-array v2, v7, [[Ljava/lang/Object;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v6, v3, v11

    const/16 v4, 0x3f2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    aput-object v3, v2, v11

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v8, v3, v11

    const-string v4, "Loaded missing"

    aput-object v4, v3, v10

    aput-object v3, v2, v10

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v5, v3, v11

    aput-object v1, v3, v10

    aput-object v3, v2, v9

    const v1, 0x14575

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    :cond_157
    :goto_157
    iget-object v1, v0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    sget-object v2, Lcom/ironsource/mediationsdk/w$h;->f:Lcom/ironsource/mediationsdk/w$h;

    const-string v3, "duration"

    if-ne v1, v2, :cond_1a7

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/w;->R()Z

    move-result v1

    if-eqz v1, :cond_183

    invoke-static {}, Lcom/ironsource/f1;->a()Lcom/ironsource/f1;

    move-result-object v1

    iget-object v2, v0, Lcom/ironsource/mediationsdk/m;->d:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v1, v2, v11}, Lcom/ironsource/f1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;Z)V

    new-array v1, v10, [[Ljava/lang/Object;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v3, v2, v11

    iget-object v3, v0, Lcom/ironsource/mediationsdk/w;->B:Lcom/ironsource/t3;

    invoke-static {v3}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    aput-object v2, v1, v11

    goto :goto_1a1

    :cond_183
    new-array v1, v9, [[Ljava/lang/Object;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v8, v2, v11

    const-string v4, "banner is destroyed"

    aput-object v4, v2, v10

    aput-object v2, v1, v11

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v3, v2, v11

    iget-object v3, v0, Lcom/ironsource/mediationsdk/w;->B:Lcom/ironsource/t3;

    invoke-static {v3}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    aput-object v2, v1, v10

    :goto_1a1
    const/16 v2, 0xc26

    invoke-direct {v0, v2, v1}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    goto :goto_1d4

    :cond_1a7
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/w;->R()Z

    move-result v1

    if-eqz v1, :cond_1b6

    invoke-static {}, Lcom/ironsource/f1;->a()Lcom/ironsource/f1;

    move-result-object v1

    iget-object v2, v0, Lcom/ironsource/mediationsdk/m;->d:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v1, v2, v10}, Lcom/ironsource/f1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;Z)V

    :cond_1b6
    const-string v1, "bannerReloadSucceeded"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    new-array v1, v10, [[Ljava/lang/Object;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v3, v2, v11

    iget-object v3, v0, Lcom/ironsource/mediationsdk/w;->B:Lcom/ironsource/t3;

    invoke-static {v3}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    aput-object v2, v1, v11

    const/16 v2, 0xc2c

    invoke-direct {v0, v2, v1}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    :goto_1d4
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/w;->d0()V

    iget-object v1, v0, Lcom/ironsource/mediationsdk/w;->f:Lcom/ironsource/z6$a;

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v1, v2}, Lcom/ironsource/z6$a;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    sget-object v1, Lcom/ironsource/mediationsdk/w$h;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/w;->q(Lcom/ironsource/mediationsdk/w$h;)V

    iget-object v1, v0, Lcom/ironsource/mediationsdk/w;->i:Lcom/ironsource/w8;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, v0, Lcom/ironsource/mediationsdk/w;->g:Lcom/ironsource/mediationsdk/k;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/k;->f()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/w8;->a(J)V

    goto :goto_20c

    :cond_1f6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong state - mCurrentState = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    :goto_20c
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/d1;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/d1;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/d1;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "IJI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auctionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->g0()Z

    move-result v1

    if-eqz v1, :cond_c7

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/w;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/w;->q:Ljava/lang/String;

    iput p6, p0, Lcom/ironsource/mediationsdk/w;->t:I

    iput-object p3, p0, Lcom/ironsource/mediationsdk/w;->v:Lcom/ironsource/d1;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/w;->r:Lorg/json/JSONObject;

    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x2

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_51

    new-array p3, p4, [[Ljava/lang/Object;

    new-array v1, p4, [Ljava/lang/Object;

    const-string v2, "errorCode"

    aput-object v2, v1, v0

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    aput-object p9, v1, p6

    aput-object v1, p3, v0

    new-array p9, p4, [Ljava/lang/Object;

    const-string v1, "reason"

    aput-object v1, p9, v0

    aput-object p10, p9, p6

    aput-object p9, p3, p6

    const p9, 0x157c2

    invoke-direct {p0, p9, p3}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    :cond_51
    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0, p5, p3}, Lcom/ironsource/mediationsdk/m;->c(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    iget-object p5, p0, Lcom/ironsource/mediationsdk/m;->b:Lcom/ironsource/r;

    invoke-virtual {p5, p3}, Lcom/ironsource/r;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result p5

    if-eqz p5, :cond_8b

    new-array p1, p6, [[Ljava/lang/Object;

    new-array p4, p4, [Ljava/lang/Object;

    const-string p5, "auctionId"

    aput-object p5, p4, v0

    aput-object p2, p4, p6

    aput-object p4, p1, v0

    const/16 p2, 0xdb2

    invoke-direct {p0, p2, p1}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    sget-object p2, Lcom/ironsource/mediationsdk/w$h;->b:Lcom/ironsource/mediationsdk/w$h;

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/w;->q(Lcom/ironsource/mediationsdk/w$h;)V

    sget-object p2, Lcom/ironsource/mediationsdk/w$h;->d:Lcom/ironsource/mediationsdk/w$h;

    if-ne p1, p2, :cond_dd

    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p2, 0x20d

    const-string p4, "Ad unit is capped"

    invoke-direct {p1, p2, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_dd

    :cond_8b
    new-array p2, p6, [[Ljava/lang/Object;

    new-array p3, p4, [Ljava/lang/Object;

    const-string p5, "duration"

    aput-object p5, p3, v0

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p3, p6

    aput-object p3, p2, v0

    const/16 p3, 0xdae

    invoke-direct {p0, p3, p2}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    sget-object p3, Lcom/ironsource/mediationsdk/w$h;->d:Lcom/ironsource/mediationsdk/w$h;

    if-ne p2, p3, :cond_a9

    sget-object p2, Lcom/ironsource/mediationsdk/w$h;->f:Lcom/ironsource/mediationsdk/w$h;

    goto :goto_ab

    :cond_a9
    sget-object p2, Lcom/ironsource/mediationsdk/w$h;->g:Lcom/ironsource/mediationsdk/w$h;

    :goto_ab
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/w;->q(Lcom/ironsource/mediationsdk/w$h;)V

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/w;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p6, [[Ljava/lang/Object;

    new-array p3, p4, [Ljava/lang/Object;

    const-string p4, "ext1"

    aput-object p4, p3, v0

    aput-object p1, p3, p6

    aput-object p3, p2, v0

    const/16 p1, 0xdb7

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/w;->l(I[[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->i0()V

    goto :goto_dd

    :cond_c7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "wrong state - mCurrentState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/w;->h:Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    :cond_dd
    :goto_dd
    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/x;)V
    .registers 7

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->R()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/ironsource/f1;->a()Lcom/ironsource/f1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/m;->d:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v0, v1}, Lcom/ironsource/f1;->b(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/4 v0, 0x0

    goto :goto_2c

    :cond_1a
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "banner is destroyed"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    move-object v0, v1

    :goto_2c
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->n()I

    move-result p1

    const/16 v1, 0xc28

    invoke-direct {p0, v1, v0, p1}, Lcom/ironsource/mediationsdk/w;->m(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method public c(Lcom/ironsource/mediationsdk/x;)V
    .registers 7

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->R()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/ironsource/f1;->a()Lcom/ironsource/f1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/m;->d:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v0, v1}, Lcom/ironsource/f1;->c(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/4 v0, 0x0

    goto :goto_2c

    :cond_1a
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "banner is destroyed"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    move-object v0, v1

    :goto_2c
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->n()I

    move-result p1

    const/16 v1, 0xc2b

    invoke-direct {p0, v1, v0, p1}, Lcom/ironsource/mediationsdk/w;->m(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method public d(Lcom/ironsource/mediationsdk/x;)V
    .registers 7

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->R()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/ironsource/f1;->a()Lcom/ironsource/f1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/m;->d:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v0, v1}, Lcom/ironsource/f1;->e(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/4 v0, 0x0

    goto :goto_2c

    :cond_1a
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "banner is destroyed"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    move-object v0, v1

    :goto_2c
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->n()I

    move-result p1

    const/16 v1, 0xc29

    invoke-direct {p0, v1, v0, p1}, Lcom/ironsource/mediationsdk/w;->m(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method public e(Lcom/ironsource/mediationsdk/x;)V
    .registers 7

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/w;->R()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/ironsource/f1;->a()Lcom/ironsource/f1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/m;->d:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v0, v1}, Lcom/ironsource/f1;->d(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/4 v0, 0x0

    goto :goto_2c

    :cond_1a
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "banner is destroyed"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    move-object v0, v1

    :goto_2c
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/a0;->n()I

    move-result p1

    const/16 v1, 0xc2a

    invoke-direct {p0, v1, v0, p1}, Lcom/ironsource/mediationsdk/w;->m(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method public g(Lcom/ironsource/mediationsdk/x;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/x;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/x;->q()V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public o()Z
    .registers 5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "banner or one of its parents are INVISIBLE or GONE"

    :goto_d
    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return v1

    :cond_11
    iget-object v0, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "banner has no window focus"

    goto :goto_d

    :cond_1e
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/w;->j:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return v0
.end method

###### Class com.ironsource.mediationsdk.w.a (com.ironsource.mediationsdk.w$a)
.class Lcom/ironsource/mediationsdk/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/w;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/m1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/m1;

.field final synthetic b:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field final synthetic c:Lcom/ironsource/mediationsdk/w;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/m1;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w$a;->c:Lcom/ironsource/mediationsdk/w;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/w$a;->a:Lcom/ironsource/m1;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/w$a;->b:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placement = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w$a;->a:Lcom/ironsource/m1;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/w$a;->c:Lcom/ironsource/mediationsdk/w;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w$a;->b:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/w;->i(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/w$a;->c:Lcom/ironsource/mediationsdk/w;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w$a;->a:Lcom/ironsource/m1;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/w;->g(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/m1;)Lcom/ironsource/m1;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w$a;->a:Lcom/ironsource/m1;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/b;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_91

    const-string v1, "placement is capped"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "placement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/w$a;->a:Lcom/ironsource/m1;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is capped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x25c

    invoke-direct {v3, v5, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "errorCode"

    aput-object v4, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object v3, v1, v2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$a;->c:Lcom/ironsource/mediationsdk/w;

    const/16 v2, 0xc27

    invoke-static {v0, v2, v1}, Lcom/ironsource/mediationsdk/w;->s(Lcom/ironsource/mediationsdk/w;I[[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$a;->c:Lcom/ironsource/mediationsdk/w;

    sget-object v1, Lcom/ironsource/mediationsdk/w$h;->b:Lcom/ironsource/mediationsdk/w$h;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/w;->v(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/mediationsdk/w$h;)V

    return-void

    :cond_91
    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$a;->c:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/w;->y(Lcom/ironsource/mediationsdk/w;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t load banner - errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.mediationsdk.w.b (com.ironsource.mediationsdk.w$b)
.class Lcom/ironsource/mediationsdk/w$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/w;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field final synthetic b:Lcom/ironsource/mediationsdk/w;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w$b;->b:Lcom/ironsource/mediationsdk/w;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/w$b;->a:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "destroying banner"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$b;->b:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/w;->U(Lcom/ironsource/mediationsdk/w;)Lcom/ironsource/w8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/w8;->b()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$b;->b:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/w;->X(Lcom/ironsource/mediationsdk/w;)Lcom/ironsource/mediationsdk/x;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$b;->b:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/w;->X(Lcom/ironsource/mediationsdk/w;)Lcom/ironsource/mediationsdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/a0;->n()I

    move-result v0

    goto :goto_29

    :cond_23
    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$b;->b:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/w;->Y(Lcom/ironsource/mediationsdk/w;)I

    move-result v0

    :goto_29
    iget-object v1, p0, Lcom/ironsource/mediationsdk/w$b;->b:Lcom/ironsource/mediationsdk/w;

    const/16 v2, 0xc1c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/w;->t(Lcom/ironsource/mediationsdk/w;I[[Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$b;->b:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/w;->b0(Lcom/ironsource/mediationsdk/w;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$b;->a:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->a()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$b;->b:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/w;->i(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$b;->b:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/w;->g(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/m1;)Lcom/ironsource/m1;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$b;->b:Lcom/ironsource/mediationsdk/w;

    sget-object v1, Lcom/ironsource/mediationsdk/w$h;->b:Lcom/ironsource/mediationsdk/w$h;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/w;->v(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/mediationsdk/w$h;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy banner failed - errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.mediationsdk.w.c (com.ironsource.mediationsdk.w$c)
.class Lcom/ironsource/mediationsdk/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/w;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/w;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w$c;->a:Lcom/ironsource/mediationsdk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    iget-object v3, p0, Lcom/ironsource/mediationsdk/w$c;->a:Lcom/ironsource/mediationsdk/w;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/w;->h(Lcom/ironsource/mediationsdk/w;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_71

    const-string v4, "errorCode"

    const/16 v5, 0xc80

    if-nez v3, :cond_2c

    :try_start_f
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v6, "mIronSourceBanner is null"

    invoke-virtual {v3, v6}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/w$c;->a:Lcom/ironsource/mediationsdk/w;

    new-array v6, v2, [[Ljava/lang/Object;

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v4, v7, v1

    const/16 v4, 0x26e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    aput-object v7, v6, v1

    invoke-static {v3, v5, v6}, Lcom/ironsource/mediationsdk/w;->s(Lcom/ironsource/mediationsdk/w;I[[Ljava/lang/Object;)V

    return-void

    :cond_2c
    iget-object v3, p0, Lcom/ironsource/mediationsdk/w$c;->a:Lcom/ironsource/mediationsdk/w;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/w;->o()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/ironsource/mediationsdk/w$c;->a:Lcom/ironsource/mediationsdk/w;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/w;->G(Lcom/ironsource/mediationsdk/w;)V

    return-void

    :cond_3a
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v6, "banner is not visible, reload skipped"

    invoke-virtual {v3, v6}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/w$c;->a:Lcom/ironsource/mediationsdk/w;

    new-array v6, v2, [[Ljava/lang/Object;

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v4, v7, v1

    const/16 v4, 0x265

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    aput-object v7, v6, v1

    invoke-static {v3, v5, v6}, Lcom/ironsource/mediationsdk/w;->s(Lcom/ironsource/mediationsdk/w;I[[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/w$c;->a:Lcom/ironsource/mediationsdk/w;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/w;->U(Lcom/ironsource/mediationsdk/w;)Lcom/ironsource/w8;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/w$c;->a:Lcom/ironsource/mediationsdk/w;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/w;->L(Lcom/ironsource/mediationsdk/w;)Lcom/ironsource/mediationsdk/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/k;->f()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ironsource/w8;->a(J)V
    :try_end_70
    .catchall {:try_start_f .. :try_end_70} :catchall_71

    goto :goto_8a

    :catchall_71
    move-exception v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/w$c;->a:Lcom/ironsource/mediationsdk/w;

    new-array v5, v2, [[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "reason"

    aput-object v6, v0, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object v0, v5, v1

    const v0, 0x14639

    invoke-static {v4, v0, v5}, Lcom/ironsource/mediationsdk/w;->s(Lcom/ironsource/mediationsdk/w;I[[Ljava/lang/Object;)V

    :goto_8a
    return-void
.end method

###### Class com.ironsource.mediationsdk.w.d (com.ironsource.mediationsdk.w$d)
.class Lcom/ironsource/mediationsdk/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/w;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/w;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/w;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w$d;->a:Lcom/ironsource/mediationsdk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$d;->a:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/w;->M(Lcom/ironsource/mediationsdk/w;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$d;->a:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/w;->N(Lcom/ironsource/mediationsdk/w;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$d;->a:Lcom/ironsource/mediationsdk/w;

    const/16 v1, 0xdac

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/w;->r(Lcom/ironsource/mediationsdk/w;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/w$d;->a:Lcom/ironsource/mediationsdk/w;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/w;->x(Lcom/ironsource/mediationsdk/w;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/w$d;->a:Lcom/ironsource/mediationsdk/w;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/w;->P(Lcom/ironsource/mediationsdk/w;)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, p0, Lcom/ironsource/mediationsdk/w$d;->a:Lcom/ironsource/mediationsdk/w;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/w;->H(Lcom/ironsource/mediationsdk/w;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_41

    :cond_3c
    iget-object v3, p0, Lcom/ironsource/mediationsdk/w$d;->a:Lcom/ironsource/mediationsdk/w;

    invoke-static {v3, v0, v1, v2}, Lcom/ironsource/mediationsdk/w;->w(Lcom/ironsource/mediationsdk/w;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V

    :goto_41
    return-void
.end method

###### Class com.ironsource.mediationsdk.w.e (com.ironsource.mediationsdk.w$e)
.class Lcom/ironsource/mediationsdk/w$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/a2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/w;->C(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/ironsource/mediationsdk/w;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/w;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w$e;->d:Lcom/ironsource/mediationsdk/w;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/w$e;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/w$e;->b:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/w$e;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;JLjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/b2;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$e;->d:Lcom/ironsource/mediationsdk/w;

    const/4 v1, 0x1

    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "duration"

    aput-object v6, v4, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v1

    aput-object v4, v2, v5

    const/16 v4, 0xdc1

    invoke-static {v0, v4, v2}, Lcom/ironsource/mediationsdk/w;->s(Lcom/ironsource/mediationsdk/w;I[[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/b2;

    invoke-virtual {v0}, Lcom/ironsource/b2;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w$e;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/ironsource/b2;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/b2;->a()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w$e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ironsource/b2;->d()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ironsource/b2;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w$e;->d:Lcom/ironsource/mediationsdk/w;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/w;->Q(Lcom/ironsource/mediationsdk/w;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/b2;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/x;

    new-array v4, v1, [[Ljava/lang/Object;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v5

    invoke-virtual {v0}, Lcom/ironsource/b2;->e()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v1

    aput-object v7, v4, v5

    const/16 v0, 0xbcd

    invoke-virtual {v2, v0, v4}, Lcom/ironsource/mediationsdk/x;->a(I[[Ljava/lang/Object;)V

    goto :goto_1e

    :cond_7a
    iget-object v2, p0, Lcom/ironsource/mediationsdk/w$e;->d:Lcom/ironsource/mediationsdk/w;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/w;->Q(Lcom/ironsource/mediationsdk/w;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/b2;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/x;

    new-array v4, v3, [[Ljava/lang/Object;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v5

    invoke-virtual {v0}, Lcom/ironsource/b2;->e()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v7, v4, v5

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "reason"

    aput-object v8, v7, v5

    invoke-virtual {v0}, Lcom/ironsource/b2;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    aput-object v7, v4, v1

    const/16 v0, 0xbce

    invoke-virtual {v2, v0, v4}, Lcom/ironsource/mediationsdk/x;->a(I[[Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_b1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_e1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$e;->d:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/w;->Q(Lcom/ironsource/mediationsdk/w;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ironsource/mediationsdk/x;

    new-array v0, v1, [[Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v6, v2, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    aput-object v2, v0, v5

    const/16 v2, 0xbcf

    invoke-virtual {p4, v2, v0}, Lcom/ironsource/mediationsdk/x;->a(I[[Ljava/lang/Object;)V

    goto :goto_b5

    :cond_e1
    iget-object p1, p0, Lcom/ironsource/mediationsdk/w$e;->d:Lcom/ironsource/mediationsdk/w;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/w$e;->a:Ljava/util/Map;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/w$e;->c:Ljava/util/List;

    iget-object p4, p0, Lcom/ironsource/mediationsdk/w$e;->b:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/w;->w(Lcom/ironsource/mediationsdk/w;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$e;->d:Lcom/ironsource/mediationsdk/w;

    const/4 v1, 0x1

    new-array v2, v1, [[Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "duration"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object p1, v3, v1

    aput-object v3, v2, v5

    const/16 p1, 0xdc2

    invoke-static {v0, p1, v2}, Lcom/ironsource/mediationsdk/w;->s(Lcom/ironsource/mediationsdk/w;I[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/w$e;->d:Lcom/ironsource/mediationsdk/w;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$e;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/w$e;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/w$e;->b:Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/w;->w(Lcom/ironsource/mediationsdk/w;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

###### Class com.ironsource.mediationsdk.w.f (com.ironsource.mediationsdk.w$f)
.class Lcom/ironsource/mediationsdk/w$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/w;->A(Ljava/util/List;Lcom/ironsource/mediationsdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

.field final synthetic b:Lcom/ironsource/mediationsdk/w;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w$f;->b:Lcom/ironsource/mediationsdk/w;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/w$f;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$f;->b:Lcom/ironsource/mediationsdk/w;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/w$f;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/w;->u(Lcom/ironsource/mediationsdk/w;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    return-void
.end method

###### Class com.ironsource.mediationsdk.w.g (com.ironsource.mediationsdk.w$g)
.class Lcom/ironsource/mediationsdk/w$g;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/w;->n0()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/w;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/w;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/w$g;->a:Lcom/ironsource/mediationsdk/w;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/w$g;->a:Lcom/ironsource/mediationsdk/w;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/w;->T(Lcom/ironsource/mediationsdk/w;)V

    return-void
.end method

###### Class com.ironsource.mediationsdk.w.h (com.ironsource.mediationsdk.w$h)
.class final enum Lcom/ironsource/mediationsdk/w$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/w$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/mediationsdk/w$h;

.field public static final enum b:Lcom/ironsource/mediationsdk/w$h;

.field public static final enum c:Lcom/ironsource/mediationsdk/w$h;

.field public static final enum d:Lcom/ironsource/mediationsdk/w$h;

.field public static final enum e:Lcom/ironsource/mediationsdk/w$h;

.field public static final enum f:Lcom/ironsource/mediationsdk/w$h;

.field public static final enum g:Lcom/ironsource/mediationsdk/w$h;

.field public static final enum h:Lcom/ironsource/mediationsdk/w$h;

.field private static final synthetic i:[Lcom/ironsource/mediationsdk/w$h;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/ironsource/mediationsdk/w$h;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/w$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/w$h;->a:Lcom/ironsource/mediationsdk/w$h;

    new-instance v1, Lcom/ironsource/mediationsdk/w$h;

    const-string v3, "READY_TO_LOAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ironsource/mediationsdk/w$h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/mediationsdk/w$h;->b:Lcom/ironsource/mediationsdk/w$h;

    new-instance v3, Lcom/ironsource/mediationsdk/w$h;

    const-string v5, "STARTED_LOADING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ironsource/mediationsdk/w$h;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ironsource/mediationsdk/w$h;->c:Lcom/ironsource/mediationsdk/w$h;

    new-instance v5, Lcom/ironsource/mediationsdk/w$h;

    const-string v7, "FIRST_AUCTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ironsource/mediationsdk/w$h;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ironsource/mediationsdk/w$h;->d:Lcom/ironsource/mediationsdk/w$h;

    new-instance v7, Lcom/ironsource/mediationsdk/w$h;

    const-string v9, "AUCTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ironsource/mediationsdk/w$h;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ironsource/mediationsdk/w$h;->e:Lcom/ironsource/mediationsdk/w$h;

    new-instance v9, Lcom/ironsource/mediationsdk/w$h;

    const-string v11, "LOADING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ironsource/mediationsdk/w$h;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ironsource/mediationsdk/w$h;->f:Lcom/ironsource/mediationsdk/w$h;

    new-instance v11, Lcom/ironsource/mediationsdk/w$h;

    const-string v13, "RELOADING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ironsource/mediationsdk/w$h;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ironsource/mediationsdk/w$h;->g:Lcom/ironsource/mediationsdk/w$h;

    new-instance v13, Lcom/ironsource/mediationsdk/w$h;

    const-string v15, "LOADED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ironsource/mediationsdk/w$h;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ironsource/mediationsdk/w$h;->h:Lcom/ironsource/mediationsdk/w$h;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/ironsource/mediationsdk/w$h;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/ironsource/mediationsdk/w$h;->i:[Lcom/ironsource/mediationsdk/w$h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/w$h;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/w$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/w$h;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/w$h;
    .registers 1

    sget-object v0, Lcom/ironsource/mediationsdk/w$h;->i:[Lcom/ironsource/mediationsdk/w$h;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/w$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/w$h;

    return-object v0
.end method
