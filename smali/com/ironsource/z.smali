###### Class com.json.z (com.ironsource.z)
.class public Lcom/ironsource/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/y;

.field private final b:Lcom/ironsource/a9;

.field private final c:Lcom/ironsource/w8;

.field private d:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/ironsource/y;Lcom/ironsource/a9;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/z;->a:Lcom/ironsource/y;

    iput-object p2, p0, Lcom/ironsource/z;->b:Lcom/ironsource/a9;

    invoke-direct {p0}, Lcom/ironsource/z;->g()Lcom/ironsource/w8;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/z;->c:Lcom/ironsource/w8;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/z;)Lcom/ironsource/a9;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/z;->b:Lcom/ironsource/a9;

    return-object p0
.end method

.method private b(J)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/z;->c:Lcom/ironsource/w8;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/w8;->a(J)V

    return-void
.end method

.method private g()Lcom/ironsource/w8;
    .registers 5

    new-instance v0, Lcom/ironsource/w8;

    new-instance v1, Lcom/ironsource/z$a;

    invoke-direct {v1, p0}, Lcom/ironsource/z$a;-><init>(Lcom/ironsource/z;)V

    invoke-static {}, Lcom/ironsource/lifecycle/b;->d()Lcom/ironsource/lifecycle/b;

    move-result-object v2

    new-instance v3, Lcom/ironsource/oc;

    invoke-direct {v3}, Lcom/ironsource/oc;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/w8;-><init>(Ljava/lang/Runnable;Lcom/ironsource/lifecycle/b;Lcom/ironsource/oc;)V

    return-object v0
.end method

.method private h(J)V
    .registers 5

    invoke-direct {p0}, Lcom/ironsource/z;->k()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/z;->d:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/z$b;

    invoke-direct {v1, p0}, Lcom/ironsource/z$b;-><init>(Lcom/ironsource/z;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private j()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/z;->c:Lcom/ironsource/w8;

    invoke-virtual {v0}, Lcom/ironsource/w8;->b()V

    return-void
.end method

.method private k()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/z;->d:Ljava/util/Timer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/z;->d:Ljava/util/Timer;

    :cond_a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/z;->a:Lcom/ironsource/y;

    invoke-virtual {v0}, Lcom/ironsource/y;->a()Lcom/ironsource/y$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/y$a;->b:Lcom/ironsource/y$a;

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Lcom/ironsource/z;->j()V

    :cond_d
    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/z;->a:Lcom/ironsource/y;

    invoke-virtual {v0}, Lcom/ironsource/y;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/z;->a:Lcom/ironsource/y;

    invoke-virtual {v0}, Lcom/ironsource/y;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/z;->h(J)V

    :cond_16
    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/z;->a:Lcom/ironsource/y;

    invoke-virtual {v0}, Lcom/ironsource/y;->a()Lcom/ironsource/y$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/y$a;->c:Lcom/ironsource/y$a;

    if-ne v0, v1, :cond_18

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/z;->a:Lcom/ironsource/y;

    invoke-virtual {v0}, Lcom/ironsource/y;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/z;->h(J)V

    :cond_18
    return-void
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/z;->a:Lcom/ironsource/y;

    invoke-virtual {v0}, Lcom/ironsource/y;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/z;->h(J)V

    :cond_12
    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/z;->a:Lcom/ironsource/y;

    invoke-virtual {v0}, Lcom/ironsource/y;->a()Lcom/ironsource/y$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/y$a;->d:Lcom/ironsource/y$a;

    if-ne v0, v1, :cond_18

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/z;->a:Lcom/ironsource/y;

    invoke-virtual {v0}, Lcom/ironsource/y;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/z;->h(J)V

    :cond_18
    return-void
.end method

.method public i()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/z;->a:Lcom/ironsource/y;

    invoke-virtual {v0}, Lcom/ironsource/y;->a()Lcom/ironsource/y$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/y$a;->b:Lcom/ironsource/y$a;

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/ironsource/z;->a:Lcom/ironsource/y;

    invoke-virtual {v0}, Lcom/ironsource/y;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_24

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/z;->a:Lcom/ironsource/y;

    invoke-virtual {v0}, Lcom/ironsource/y;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/z;->b(J)V

    :cond_24
    return-void
.end method
