###### Class com.moat.analytics.mobile.glft.h (com.moat.analytics.mobile.glft.h)
.class Lcom/moat/analytics/mobile/glft/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/moat/analytics/mobile/glft/h;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/moat/analytics/mobile/glft/i;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/moat/analytics/mobile/glft/b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/moat/analytics/mobile/glft/h;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/glft/h;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/glft/h;->a:Lcom/moat/analytics/mobile/glft/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/h;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/h;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/h;->c:Ljava/util/Map;

    return-void
.end method

.method static a()Lcom/moat/analytics/mobile/glft/h;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/glft/h;->a:Lcom/moat/analytics/mobile/glft/h;

    return-object v0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/glft/h;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/h;->b:Ljava/util/Map;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 12

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_a
    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    const-string v2, "Starting metadata reporting loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/moat/analytics/mobile/glft/h$1;

    invoke-direct {v4, p0, p1}, Lcom/moat/analytics/mobile/glft/h$1;-><init>(Lcom/moat/analytics/mobile/glft/h;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/h;->d:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x32

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/h;->f:Ljava/util/concurrent/ScheduledFuture;

    :cond_25
    return-void
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/glft/h;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/h;->f:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 12

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_a
    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    const-string v2, "Starting view update loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/moat/analytics/mobile/glft/h$2;

    invoke-direct {v4, p0, p1}, Lcom/moat/analytics/mobile/glft/h$2;-><init>(Lcom/moat/analytics/mobile/glft/h;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/h;->d:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v5, 0x0

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->d()Lcom/moat/analytics/mobile/glft/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/glft/u;->c()I

    move-result p1

    int-to-long v7, p1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/h;->e:Ljava/util/concurrent/ScheduledFuture;

    :cond_2c
    return-void
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/glft/h;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/h;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/moat/analytics/mobile/glft/h;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    iget-object p0, p0, Lcom/moat/analytics/mobile/glft/h;->e:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/moat/analytics/mobile/glft/b;)V
    .registers 6

    if-eqz p2, :cond_31

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addActiveTracker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JSUpdateLooper"

    invoke-static {v0, v2, p0, v1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h;->c:Ljava/util/Map;

    if-eqz v0, :cond_31

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h;->c:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/h;->b(Landroid/content/Context;)V

    :cond_31
    return-void
.end method

.method a(Landroid/content/Context;Lcom/moat/analytics/mobile/glft/i;)V
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h;->b:Ljava/util/Map;

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/h;->a(Landroid/content/Context;)V

    :cond_e
    return-void
.end method

.method a(Lcom/moat/analytics/mobile/glft/b;)V
    .registers 5

    if-eqz p1, :cond_24

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeActiveTracker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JSUpdateLooper"

    invoke-static {v0, v2, p0, v1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h;->c:Ljava/util/Map;

    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-void
.end method

.method a(Lcom/moat/analytics/mobile/glft/i;)V
    .registers 5

    if-eqz p1, :cond_24

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSetupNeededBridge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JSUpdateLooper"

    invoke-static {v0, v2, p0, v1}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h;->b:Ljava/util/Map;

    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-void
.end method

###### Class com.moat.analytics.mobile.glft.h.AnonymousClass1 (com.moat.analytics.mobile.glft.h$1)
.class Lcom/moat/analytics/mobile/glft/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/h;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/moat/analytics/mobile/glft/h;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/h;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/h$1;->b:Lcom/moat/analytics/mobile/glft/h;

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/h$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "UPDATE_METADATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/h$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h$1;->b:Lcom/moat/analytics/mobile/glft/h;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/h;->a(Lcom/moat/analytics/mobile/glft/h;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h$1;->b:Lcom/moat/analytics/mobile/glft/h;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/h;->b(Lcom/moat/analytics/mobile/glft/h;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :cond_2f
    :goto_2f
    return-void
.end method

###### Class com.moat.analytics.mobile.glft.h.AnonymousClass2 (com.moat.analytics.mobile.glft.h$2)
.class Lcom/moat/analytics/mobile/glft/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/h;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/moat/analytics/mobile/glft/h;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/h;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/h$2;->b:Lcom/moat/analytics/mobile/glft/h;

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/h$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "UPDATE_VIEW_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/h$2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h$2;->b:Lcom/moat/analytics/mobile/glft/h;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/h;->c(Lcom/moat/analytics/mobile/glft/h;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/h$2;->b:Lcom/moat/analytics/mobile/glft/h;

    const-string v3, "No more active trackers"

    invoke-static {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h$2;->b:Lcom/moat/analytics/mobile/glft/h;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/h;->d(Lcom/moat/analytics/mobile/glft/h;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :cond_39
    :goto_39
    return-void
.end method
