###### Class com.json.w8 (com.ironsource.w8)
.class public Lcom/ironsource/w8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "w8"


# instance fields
.field private final b:Lcom/ironsource/lifecycle/b;

.field private final c:Ljava/lang/Runnable;

.field private final d:Lcom/ironsource/oc;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/util/Timer;

.field private final g:Lcom/ironsource/l8;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/ironsource/lifecycle/b;Lcom/ironsource/oc;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/w8;->e:Ljava/lang/Object;

    new-instance v0, Lcom/ironsource/w8$a;

    invoke-direct {v0, p0}, Lcom/ironsource/w8$a;-><init>(Lcom/ironsource/w8;)V

    iput-object v0, p0, Lcom/ironsource/w8;->g:Lcom/ironsource/l8;

    iput-object p1, p0, Lcom/ironsource/w8;->c:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/ironsource/w8;->b:Lcom/ironsource/lifecycle/b;

    iput-object p3, p0, Lcom/ironsource/w8;->d:Lcom/ironsource/oc;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/w8;)Lcom/ironsource/oc;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/w8;->d:Lcom/ironsource/oc;

    return-object p0
.end method

.method static synthetic b(Lcom/ironsource/w8;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/w8;->c(J)V

    return-void
.end method

.method private c(J)V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/w8;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/ironsource/w8;->f()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ironsource/w8;->f:Ljava/util/Timer;

    new-instance v2, Lcom/ironsource/w8$b;

    invoke-direct {v2, p0}, Lcom/ironsource/w8$b;-><init>(Lcom/ironsource/w8;)V

    invoke-virtual {v1, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method static synthetic d(Lcom/ironsource/w8;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/w8;->f()V

    return-void
.end method

.method static synthetic e(Lcom/ironsource/w8;)Lcom/ironsource/l8;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/w8;->g:Lcom/ironsource/l8;

    return-object p0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/w8;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/w8;->f:Ljava/util/Timer;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/w8;->f:Ljava/util/Timer;

    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method static synthetic g(Lcom/ironsource/w8;)Lcom/ironsource/lifecycle/b;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/w8;->b:Lcom/ironsource/lifecycle/b;

    return-object p0
.end method

.method static synthetic h(Lcom/ironsource/w8;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/w8;->c:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/w8;->a(J)V

    return-void
.end method

.method public a(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_e

    sget-object p1, Lcom/ironsource/w8;->a:Ljava/lang/String;

    const-string p2, "cannot start timer with delay < 0"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v0, p0, Lcom/ironsource/w8;->b:Lcom/ironsource/lifecycle/b;

    iget-object v1, p0, Lcom/ironsource/w8;->g:Lcom/ironsource/l8;

    invoke-virtual {v0, v1}, Lcom/ironsource/lifecycle/b;->a(Lcom/ironsource/l8;)V

    iget-object v0, p0, Lcom/ironsource/w8;->d:Lcom/ironsource/oc;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/oc;->a(J)V

    iget-object v0, p0, Lcom/ironsource/w8;->b:Lcom/ironsource/lifecycle/b;

    invoke-virtual {v0}, Lcom/ironsource/lifecycle/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object p1, p0, Lcom/ironsource/w8;->d:Lcom/ironsource/oc;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/oc;->c(J)V

    return-void

    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/ironsource/w8;->c(J)V

    return-void
.end method

.method public b()V
    .registers 3

    invoke-direct {p0}, Lcom/ironsource/w8;->f()V

    iget-object v0, p0, Lcom/ironsource/w8;->b:Lcom/ironsource/lifecycle/b;

    iget-object v1, p0, Lcom/ironsource/w8;->g:Lcom/ironsource/l8;

    invoke-virtual {v0, v1}, Lcom/ironsource/lifecycle/b;->b(Lcom/ironsource/l8;)V

    iget-object v0, p0, Lcom/ironsource/w8;->d:Lcom/ironsource/oc;

    invoke-virtual {v0}, Lcom/ironsource/oc;->b()V

    return-void
.end method

###### Class com.ironsource.w8.a (com.ironsource.w8$a)
.class Lcom/ironsource/w8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/l8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/w8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/w8;


# direct methods
.method constructor <init>(Lcom/ironsource/w8;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/w8$a;->a:Lcom/ironsource/w8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/w8$a;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->a(Lcom/ironsource/w8;)Lcom/ironsource/oc;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/oc;->c(J)V

    iget-object v0, p0, Lcom/ironsource/w8$a;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->d(Lcom/ironsource/w8;)V

    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/w8$a;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->a(Lcom/ironsource/w8;)Lcom/ironsource/oc;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/oc;->b(J)V

    iget-object v0, p0, Lcom/ironsource/w8$a;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->a(Lcom/ironsource/w8;)Lcom/ironsource/oc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/oc;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ironsource/w8;->b(Lcom/ironsource/w8;J)V

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

###### Class com.ironsource.w8.b (com.ironsource.w8$b)
.class Lcom/ironsource/w8$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/w8;->c(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/w8;


# direct methods
.method constructor <init>(Lcom/ironsource/w8;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/w8$b;->a:Lcom/ironsource/w8;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/w8$b;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->g(Lcom/ironsource/w8;)Lcom/ironsource/lifecycle/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/w8$b;->a:Lcom/ironsource/w8;

    invoke-static {v1}, Lcom/ironsource/w8;->e(Lcom/ironsource/w8;)Lcom/ironsource/l8;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/lifecycle/b;->b(Lcom/ironsource/l8;)V

    iget-object v0, p0, Lcom/ironsource/w8$b;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->a(Lcom/ironsource/w8;)Lcom/ironsource/oc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/oc;->b()V

    iget-object v0, p0, Lcom/ironsource/w8$b;->a:Lcom/ironsource/w8;

    invoke-static {v0}, Lcom/ironsource/w8;->h(Lcom/ironsource/w8;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
