###### Class com.applovin.impl.sdk.g (com.applovin.impl.sdk.g)
.class public Lcom/applovin/impl/sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/g$a;,
        Lcom/applovin/impl/sdk/g$b;
    }
.end annotation


# static fields
.field private static final azq:Lcom/applovin/impl/sdk/g;


# instance fields
.field private final azg:Ljava/util/concurrent/atomic/AtomicLong;

.field private azh:Landroid/os/Handler;

.field private final azi:Landroid/os/HandlerThread;

.field private azj:Landroid/os/Handler;

.field private final azk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final azl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private azm:Ljava/lang/Thread;

.field private azn:J

.field private azo:J

.field private azp:J

.field private sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/impl/sdk/g;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/g;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/g;->azq:Lcom/applovin/impl/sdk/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/g;->azg:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppLovinSdk:anr_detector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/g;->azi:Landroid/os/HandlerThread;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/g;->azk:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/g;->azl:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/applovin/impl/sdk/g;->azn:J

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/impl/sdk/g;->azo:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/g;->azp:J

    return-void
.end method

.method private synthetic AR()V
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/g;->azm:Ljava/lang/Thread;

    return-void
.end method

.method private X()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/g;->azl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/applovin/impl/sdk/g;->azk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_e
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/g;->azk:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/g;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/g;->azg:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/g;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/g;->azo:J

    return-wide v0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/g;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/g;->azh:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/g;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/g;->azn:J

    return-wide v0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/g;->X()V

    return-void
.end method

.method static synthetic g(Lcom/applovin/impl/sdk/g;)Ljava/lang/Thread;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/g;->azm:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/sdk/g;)Lcom/applovin/impl/sdk/n;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/g;->sdk:Lcom/applovin/impl/sdk/n;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/sdk/g;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/g;->azp:J

    return-wide v0
.end method

.method static synthetic j(Lcom/applovin/impl/sdk/g;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/g;->azj:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic k(Lcom/applovin/impl/sdk/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/g;->AR()V

    return-void
.end method

.method private n(Lcom/applovin/impl/sdk/n;)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/g;->azl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_77

    iput-object p1, p0, Lcom/applovin/impl/sdk/g;->sdk:Lcom/applovin/impl/sdk/n;

    new-instance v0, Lcom/applovin/impl/sdk/s0;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/s0;-><init>(Lcom/applovin/impl/sdk/g;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aQw:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/g;->azn:J

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aQx:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/g;->azo:J

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aQy:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/g;->azp:J

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/applovin/impl/sdk/n;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/g;->azh:Landroid/os/Handler;

    iget-object p1, p0, Lcom/applovin/impl/sdk/g;->azi:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    iget-object p1, p0, Lcom/applovin/impl/sdk/g;->azh:Landroid/os/Handler;

    new-instance v0, Lcom/applovin/impl/sdk/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/g$b;-><init>(Lcom/applovin/impl/sdk/g;Lcom/applovin/impl/sdk/g$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/applovin/impl/sdk/g;->azi:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/g;->azj:Landroid/os/Handler;

    new-instance v0, Lcom/applovin/impl/sdk/g$a;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/g$a;-><init>(Lcom/applovin/impl/sdk/g;Lcom/applovin/impl/sdk/g$1;)V

    iget-wide v1, p0, Lcom/applovin/impl/sdk/g;->azp:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_77
    return-void
.end method

.method public static o(Lcom/applovin/impl/sdk/n;)V
    .registers 2

    if-eqz p0, :cond_25

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->aQv:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/applovin/impl/sdk/n;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applovin/impl/sdk/utils/u;->b(Landroid/content/Context;Lcom/applovin/impl/sdk/n;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/applovin/impl/sdk/g;->azq:Lcom/applovin/impl/sdk/g;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/g;->n(Lcom/applovin/impl/sdk/n;)V

    goto :goto_25

    :cond_20
    sget-object p0, Lcom/applovin/impl/sdk/g;->azq:Lcom/applovin/impl/sdk/g;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/g;->X()V

    :cond_25
    :goto_25
    return-void
.end method
