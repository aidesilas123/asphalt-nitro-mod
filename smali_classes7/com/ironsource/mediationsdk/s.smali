###### Class com.json.mediationsdk.s (com.ironsource.mediationsdk.s)
.class Lcom/ironsource/mediationsdk/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/s9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/s$f;,
        Lcom/ironsource/mediationsdk/s$e;,
        Lcom/ironsource/mediationsdk/s$d;
    }
.end annotation


# static fields
.field private static a:Lcom/ironsource/mediationsdk/s;


# instance fields
.field private A:Lcom/ironsource/mediationsdk/s$f;

.field private b:Lcom/ironsource/pb;

.field private c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/os/Handler;

.field private n:Z

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Lcom/ironsource/environment/NetworkStateReceiver;

.field private q:Landroid/os/CountDownTimer;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/ba;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/ironsource/mediationsdk/utils/c;

.field private v:Lcom/ironsource/mediationsdk/s$d;

.field private w:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

.field private x:Z

.field private y:J

.field private z:Lcom/ironsource/z7;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/ironsource/mediationsdk/s$e;->e:I

    iput v0, p0, Lcom/ironsource/mediationsdk/s;->c:I

    const-string v0, "appKey"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/s;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/s;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/s;->l:Z

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/s;->n:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/s;->r:Ljava/util/List;

    const-string v1, ""

    iput-object v1, p0, Lcom/ironsource/mediationsdk/s;->s:Ljava/lang/String;

    new-instance v1, Lcom/ironsource/mediationsdk/s$a;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/s$a;-><init>(Lcom/ironsource/mediationsdk/s;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/s;->A:Lcom/ironsource/mediationsdk/s$f;

    sget-object v1, Lcom/ironsource/mediationsdk/s$d;->a:Lcom/ironsource/mediationsdk/s$d;

    iput-object v1, p0, Lcom/ironsource/mediationsdk/s;->v:Lcom/ironsource/mediationsdk/s$d;

    sget-object v1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->getInitHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/s;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/s;->f:I

    iput v0, p0, Lcom/ironsource/mediationsdk/s;->g:I

    const/16 v2, 0x3e

    iput v2, p0, Lcom/ironsource/mediationsdk/s;->h:I

    const/16 v2, 0xc

    iput v2, p0, Lcom/ironsource/mediationsdk/s;->i:I

    const/4 v2, 0x5

    iput v2, p0, Lcom/ironsource/mediationsdk/s;->j:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/s;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/s;->k:Z

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/s;->x:Z

    new-instance v0, Lcom/ironsource/z7;

    invoke-direct {v0}, Lcom/ironsource/z7;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/s;->z:Lcom/ironsource/z7;

    return-void
.end method

.method static synthetic A(Lcom/ironsource/mediationsdk/s;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/s;->m:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic B(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/pb;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/pb;

    return-object p0
.end method

.method static synthetic C(Lcom/ironsource/mediationsdk/s;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/s;->r:Ljava/util/List;

    return-object p0
.end method

.method static synthetic D(Lcom/ironsource/mediationsdk/s;)Z
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/s;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/s;I)I
    .registers 3

    iget v0, p0, Lcom/ironsource/mediationsdk/s;->f:I

    mul-int v0, v0, p1

    iput v0, p0, Lcom/ironsource/mediationsdk/s;->f:I

    return v0
.end method

.method private static b(Lcom/ironsource/mediationsdk/utils/c$a;Lcom/ironsource/mediationsdk/s$d;)I
    .registers 3

    sget-object v0, Lcom/ironsource/mediationsdk/utils/c$a;->b:Lcom/ironsource/mediationsdk/utils/c$a;

    if-ne p0, v0, :cond_7

    sget p0, Lcom/ironsource/mediationsdk/s$e;->c:I

    return p0

    :cond_7
    sget-object p0, Lcom/ironsource/mediationsdk/s$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_21

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1e

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1b

    sget p0, Lcom/ironsource/mediationsdk/s$e;->a:I

    return p0

    :cond_1b
    sget p0, Lcom/ironsource/mediationsdk/s$e;->b:I

    return p0

    :cond_1e
    sget p0, Lcom/ironsource/mediationsdk/s$e;->e:I

    return p0

    :cond_21
    sget p0, Lcom/ironsource/mediationsdk/s$e;->d:I

    return p0
.end method

.method static synthetic c(Lcom/ironsource/mediationsdk/s;J)J
    .registers 3

    iput-wide p1, p0, Lcom/ironsource/mediationsdk/s;->y:J

    return-wide p1
.end method

.method public static declared-synchronized c()Lcom/ironsource/mediationsdk/s;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/s;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/mediationsdk/s;->a:Lcom/ironsource/mediationsdk/s;

    if-nez v1, :cond_e

    new-instance v1, Lcom/ironsource/mediationsdk/s;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/s;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/s;->a:Lcom/ironsource/mediationsdk/s;

    :cond_e
    sget-object v1, Lcom/ironsource/mediationsdk/s;->a:Lcom/ironsource/mediationsdk/s;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic d(Lcom/ironsource/mediationsdk/s;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/s;->q:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic e(Lcom/ironsource/mediationsdk/s;Lcom/ironsource/mediationsdk/utils/c;)Lcom/ironsource/mediationsdk/utils/c;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/s;->u:Lcom/ironsource/mediationsdk/utils/c;

    return-object p1
.end method

.method static synthetic f(Lcom/ironsource/mediationsdk/s;Lcom/ironsource/pb;)Lcom/ironsource/pb;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/s;->b:Lcom/ironsource/pb;

    return-object p1
.end method

.method static synthetic g(Lcom/ironsource/mediationsdk/s;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/s;->s:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized h(Lcom/ironsource/mediationsdk/s$d;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/s;->v:Lcom/ironsource/mediationsdk/s$d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/s;->v:Lcom/ironsource/mediationsdk/s$d;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic i(Lcom/ironsource/mediationsdk/s;Lcom/ironsource/mediationsdk/s$d;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/s;->h(Lcom/ironsource/mediationsdk/s$d;)V

    return-void
.end method

.method static synthetic j(Lcom/ironsource/mediationsdk/s;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/s;->l:Z

    return p1
.end method

.method static synthetic k(Lcom/ironsource/mediationsdk/s;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/s;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/ironsource/mediationsdk/s;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/s;->x:Z

    return p1
.end method

.method static synthetic m(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/s;->w:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    return-object p0
.end method

.method static synthetic n(Lcom/ironsource/mediationsdk/s;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/s;->k:Z

    return p1
.end method

.method static synthetic o(Lcom/ironsource/mediationsdk/s;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ironsource/mediationsdk/s;->l:Z

    return p0
.end method

.method static synthetic p(Lcom/ironsource/mediationsdk/s;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/mediationsdk/s;->g:I

    return p0
.end method

.method static synthetic r(Lcom/ironsource/mediationsdk/s;)I
    .registers 3

    iget v0, p0, Lcom/ironsource/mediationsdk/s;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/s;->g:I

    return v0
.end method

.method private s()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/s;->k:Z

    return v0
.end method

.method static synthetic t(Lcom/ironsource/mediationsdk/s;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/mediationsdk/s;->h:I

    return p0
.end method

.method static synthetic u(Lcom/ironsource/mediationsdk/s;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/mediationsdk/s;->f:I

    return p0
.end method

.method static synthetic v(Lcom/ironsource/mediationsdk/s;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/mediationsdk/s;->i:I

    return p0
.end method

.method static synthetic w(Lcom/ironsource/mediationsdk/s;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/mediationsdk/s;->j:I

    return p0
.end method

.method static synthetic x(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/z7;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/s;->z:Lcom/ironsource/z7;

    return-object p0
.end method

.method static synthetic y(Lcom/ironsource/mediationsdk/s;)J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/mediationsdk/s;->y:J

    return-wide v0
.end method

.method static synthetic z(Lcom/ironsource/mediationsdk/s;)Lcom/ironsource/mediationsdk/utils/c;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/mediationsdk/s;->u:Lcom/ironsource/mediationsdk/utils/c;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/ironsource/mediationsdk/s$d;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->v:Lcom/ironsource/mediationsdk/s$d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/c;)V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->z:Lcom/ironsource/z7;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/c;->d()Lcom/ironsource/f7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/f7;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/z7;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->z:Lcom/ironsource/z7;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/c;->d()Lcom/ironsource/f7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/f7;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/z7;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s;->z:Lcom/ironsource/z7;

    invoke-virtual {v0}, Lcom/ironsource/j0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/z7;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s;->z:Lcom/ironsource/z7;

    invoke-virtual {v0}, Lcom/ironsource/j0;->b()Lcom/ironsource/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/i0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/z7;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/s;->z:Lcom/ironsource/z7;

    invoke-virtual {v0}, Lcom/ironsource/j0;->j()Lcom/ironsource/mediationsdk/utils/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/d;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/z7;->b(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->z:Lcom/ironsource/z7;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getFirstSession(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/z7;->a(Ljava/lang/Boolean;)V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/j0;->e()Lcom/ironsource/o0;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/s;->z:Lcom/ironsource/z7;

    invoke-virtual {p1}, Lcom/ironsource/o0;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ironsource/z7;->b(I)V

    return-void
.end method

.method public varargs declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object p4, p0, Lcom/ironsource/mediationsdk/s;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p4, :cond_48

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p4, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p4

    if-eqz p4, :cond_48

    sget-object p4, Lcom/ironsource/mediationsdk/s$d;->b:Lcom/ironsource/mediationsdk/s$d;

    invoke-direct {p0, p4}, Lcom/ironsource/mediationsdk/s;->h(Lcom/ironsource/mediationsdk/s$d;)V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/s;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/s;->t:Ljava/lang/String;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_24

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->m:Landroid/os/Handler;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/s;->A:Lcom/ironsource/mediationsdk/s$f;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6c

    :cond_24
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/s;->n:Z

    iget-object p2, p0, Lcom/ironsource/mediationsdk/s;->p:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez p2, :cond_31

    new-instance p2, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p2, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/s9;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/s;->p:Lcom/ironsource/environment/NetworkStateReceiver;

    :cond_31
    iget-object p2, p0, Lcom/ironsource/mediationsdk/s;->p:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object p1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance p2, Lcom/ironsource/mediationsdk/s$b;

    invoke-direct {p2, p0}, Lcom/ironsource/mediationsdk/s$b;-><init>(Lcom/ironsource/mediationsdk/s;)V

    invoke-virtual {p1, p2}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V

    goto :goto_6c

    :cond_48
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/ironsource/mediationsdk/s;->e:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Multiple calls to init are not allowed"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p3, p4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_65} :catch_68
    .catchall {:try_start_1 .. :try_end_65} :catchall_66

    goto :goto_6c

    :catchall_66
    move-exception p1

    goto :goto_6e

    :catch_68
    move-exception p1

    :try_start_69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_66

    :goto_6c
    monitor-exit p0

    return-void

    :goto_6e
    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/ironsource/ba;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/mediationsdk/s;->w:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    return-void
.end method

.method public declared-synchronized a(Lcom/ironsource/mediationsdk/utils/c;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/c;->a(Lcom/ironsource/mediationsdk/utils/c;)Lcom/ironsource/mediationsdk/utils/c$a;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->v:Lcom/ironsource/mediationsdk/s$d;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/s;->b(Lcom/ironsource/mediationsdk/utils/c$a;Lcom/ironsource/mediationsdk/s$d;)I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/s;->c:I

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->z:Lcom/ironsource/z7;

    invoke-virtual {v0, p1}, Lcom/ironsource/z7;->c(I)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/s;->n:Z

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->q:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_d
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/s;->n:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/s;->k:Z

    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->m:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->A:Lcom/ironsource/mediationsdk/s$f;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/ironsource/mediationsdk/s;->c:I

    return v0
.end method

.method public b(Lcom/ironsource/ba;)V
    .registers 3

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    :cond_b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/s;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_10
    :goto_10
    return-void
.end method

.method public b(Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/p;->r()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    return-void

    :cond_12
    iget-object p1, p0, Lcom/ironsource/mediationsdk/s;->u:Lcom/ironsource/mediationsdk/utils/c;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/j0;->d()Lcom/ironsource/n0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/n0;->b()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_5c

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_5c

    :cond_2d
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->doesClassExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_55

    :cond_54
    move-object v1, p1

    :goto_55
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/p;->h(Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/s;->x:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method q()V
    .registers 2

    sget-object v0, Lcom/ironsource/mediationsdk/s$d;->c:Lcom/ironsource/mediationsdk/s$d;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/s;->h(Lcom/ironsource/mediationsdk/s$d;)V

    return-void
.end method
