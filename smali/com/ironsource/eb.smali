###### Class com.json.eb (com.ironsource.eb)
.class public Lcom/ironsource/eb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/mediationsdk/utils/a;

.field private b:Lcom/ironsource/fb;

.field private c:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/utils/a;Lcom/ironsource/fb;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/eb;->a:Lcom/ironsource/mediationsdk/utils/a;

    iput-object p2, p0, Lcom/ironsource/eb;->b:Lcom/ironsource/fb;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ironsource/eb;->c:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/eb;)Lcom/ironsource/fb;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/eb;->b:Lcom/ironsource/fb;

    return-object p0
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/eb;->c:Ljava/util/Timer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/eb;->c:Ljava/util/Timer;

    :cond_a
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/eb;->d()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/eb;->c:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/eb$b;

    invoke-direct {v1, p0}, Lcom/ironsource/eb$b;-><init>(Lcom/ironsource/eb;)V

    iget-object v2, p0, Lcom/ironsource/eb;->a:Lcom/ironsource/mediationsdk/utils/a;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/eb;->d()V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_b

    iget-object v0, p0, Lcom/ironsource/eb;->b:Lcom/ironsource/fb;

    invoke-interface {v0}, Lcom/ironsource/fb;->a()V

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/eb;->d()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/eb;->c:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/eb$a;

    invoke-direct {v1, p0}, Lcom/ironsource/eb$a;-><init>(Lcom/ironsource/eb;)V

    iget-object v2, p0, Lcom/ironsource/eb;->a:Lcom/ironsource/mediationsdk/utils/a;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/a;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.ironsource.eb.a (com.ironsource.eb$a)
.class Lcom/ironsource/eb$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/eb;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/eb;


# direct methods
.method constructor <init>(Lcom/ironsource/eb;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/eb$a;->a:Lcom/ironsource/eb;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/eb$a;->a:Lcom/ironsource/eb;

    invoke-static {v0}, Lcom/ironsource/eb;->a(Lcom/ironsource/eb;)Lcom/ironsource/fb;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/fb;->a()V

    return-void
.end method

###### Class com.ironsource.eb.b (com.ironsource.eb$b)
.class Lcom/ironsource/eb$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/eb;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/eb;


# direct methods
.method constructor <init>(Lcom/ironsource/eb;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/eb$b;->a:Lcom/ironsource/eb;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/eb$b;->a:Lcom/ironsource/eb;

    invoke-static {v0}, Lcom/ironsource/eb;->a(Lcom/ironsource/eb;)Lcom/ironsource/fb;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/fb;->a()V

    return-void
.end method
