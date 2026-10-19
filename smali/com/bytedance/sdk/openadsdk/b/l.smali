###### Class com.bytedance.sdk.openadsdk.b.l (com.bytedance.sdk.openadsdk.b.l)
.class public Lcom/bytedance/sdk/openadsdk/b/l;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/b/l$b;,
        Lcom/bytedance/sdk/openadsdk/b/l$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/b/l;


# instance fields
.field private b:Landroid/os/HandlerThread;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/Executor;

.field private e:Lcom/bytedance/sdk/openadsdk/b/l$b;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l;->d:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/l$b;->a()Lcom/bytedance/sdk/openadsdk/b/l$b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l;->e:Lcom/bytedance/sdk/openadsdk/b/l$b;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_21

    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "OpenAppSuccEvent_HandlerThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_21
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/l;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/b/l$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/b/l$1;-><init>(Lcom/bytedance/sdk/openadsdk/b/l;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/b/l;
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/l;->a:Lcom/bytedance/sdk/openadsdk/b/l;

    if-nez v0, :cond_17

    const-class v0, Lcom/bytedance/sdk/openadsdk/b/l;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/b/l;->a:Lcom/bytedance/sdk/openadsdk/b/l;

    if-nez v1, :cond_12

    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/l;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/b/l;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/b/l;->a:Lcom/bytedance/sdk/openadsdk/b/l;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/l;->a:Lcom/bytedance/sdk/openadsdk/b/l;

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/b/l$a;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/l$a;->b()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/b/l$a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/l;->e:Lcom/bytedance/sdk/openadsdk/b/l$b;

    iget v2, v1, Lcom/bytedance/sdk/openadsdk/b/l$b;->a:I

    mul-int v0, v0, v2

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/b/l$b;->b:I

    if-le v0, v1, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/l$a;->a(Z)Lcom/bytedance/sdk/openadsdk/b/l$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/l;->c(Lcom/bytedance/sdk/openadsdk/b/l$a;)V

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/l;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/l;->e:Lcom/bytedance/sdk/openadsdk/b/l$b;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/b/l$b;->a:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/b/l;Lcom/bytedance/sdk/openadsdk/b/l$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/l;->b(Lcom/bytedance/sdk/openadsdk/b/l$a;)V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/b/l$a;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/m;->a()Lcom/bytedance/sdk/openadsdk/core/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/m;->d()Z

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/m;->a()Lcom/bytedance/sdk/openadsdk/core/m;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Z)Z

    move-result v1

    if-nez v0, :cond_1d

    if-nez v1, :cond_19

    goto :goto_1d

    :cond_19
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/l;->a(Lcom/bytedance/sdk/openadsdk/b/l$a;)V

    goto :goto_45

    :cond_1d
    :goto_1d
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/b/l$a;->e:Ljava/util/Map;

    if-nez v3, :cond_28

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p1, Lcom/bytedance/sdk/openadsdk/b/l$a;->e:Ljava/util/Map;

    :cond_28
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/b/l$a;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "is_background"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/b/l$a;->e:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "has_focus"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/b/l$a;->a(Z)Lcom/bytedance/sdk/openadsdk/b/l$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/l;->c(Lcom/bytedance/sdk/openadsdk/b/l$a;)V

    :goto_45
    return-void
.end method

.method private c(Lcom/bytedance/sdk/openadsdk/b/l$a;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/b/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/b/l;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/l;->f:Ljava/util/Map;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/l;->a()Lcom/bytedance/sdk/openadsdk/b/l;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/l;->f:Ljava/util/Map;

    invoke-static {p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/b/l$a;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/b/l$a;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.b.l.AnonymousClass1 (com.bytedance.sdk.openadsdk.b.l$1)
.class Lcom/bytedance/sdk/openadsdk/b/l$1;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/b/l;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/b/l;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/b/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/l$1;->a:Lcom/bytedance/sdk/openadsdk/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_12

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/b/l$a;

    if-eqz v1, :cond_12

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/b/l$a;

    :cond_12
    if-eqz v0, :cond_19

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/l$1;->a:Lcom/bytedance/sdk/openadsdk/b/l;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/l;->a(Lcom/bytedance/sdk/openadsdk/b/l;Lcom/bytedance/sdk/openadsdk/b/l$a;)V

    :cond_19
    const/4 p1, 0x1

    return p1
.end method

###### Class com.bytedance.sdk.openadsdk.b.l.a (com.bytedance.sdk.openadsdk.b.l$a)
.class Lcom/bytedance/sdk/openadsdk/b/l$a;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Lcom/bytedance/sdk/openadsdk/core/model/q;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/q;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->e:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/b/l$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/q;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/b/l$a;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/l$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/l$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/b/l$a;
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_64

    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "dpl_success"

    goto :goto_1a

    :cond_18
    const-string v0, "dpl_failed"

    :goto_1a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->e:Ljava/util/Map;

    if-nez v1, :cond_25

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->e:Ljava/util/Map;

    :cond_25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/q;->be()I

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->e:Ljava/util/Map;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/q;->c()Z

    move-result v2

    if-nez v2, :cond_3d

    const/4 v2, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "auto_click"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->e:Ljava/util/Map;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/m;->a()Lcom/bytedance/sdk/openadsdk/core/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/m;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "lifeCycleInit"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->c:Lcom/bytedance/sdk/openadsdk/core/model/q;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/l$a;->e:Ljava/util/Map;

    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Lcom/bytedance/sdk/openadsdk/core/model/q;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_64
    :goto_64
    const-string v0, "materialMeta or eventTag is null, pls check"

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;)V

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.b.l.b (com.bytedance.sdk.openadsdk.b.l$b)
.class Lcom/bytedance/sdk/openadsdk/b/l$b;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/b/l$b;->a:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/b/l$b;->b:I

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/b/l$b;
    .registers 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/l$b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/l$b;-><init>()V

    return-object v0
.end method
