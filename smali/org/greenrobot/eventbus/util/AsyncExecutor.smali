###### Class org.greenrobot.eventbus.util.AsyncExecutor (org.greenrobot.eventbus.util.AsyncExecutor)
.class public Lorg/greenrobot/eventbus/util/AsyncExecutor;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/util/AsyncExecutor$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lorg/greenrobot/eventbus/EventBus;

.field private final d:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lorg/greenrobot/eventbus/EventBus;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor;->c:Lorg/greenrobot/eventbus/EventBus;

    iput-object p4, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    :try_start_a
    new-array p1, p1, [Ljava/lang/Class;

    const/4 p2, 0x0

    const-class p4, Ljava/lang/Throwable;

    aput-object p4, p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor;->b:Ljava/lang/reflect/Constructor;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Failure event class must have a constructor with one parameter of type Throwable"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Class;Ljava/lang/Object;Lorg/greenrobot/eventbus/util/AsyncExecutor$a;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/greenrobot/eventbus/util/AsyncExecutor;-><init>(Ljava/util/concurrent/Executor;Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static builder()Lorg/greenrobot/eventbus/util/AsyncExecutor$b;
    .registers 2

    new-instance v0, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;-><init>(Lorg/greenrobot/eventbus/util/AsyncExecutor$a;)V

    return-object v0
.end method

.method public static create()Lorg/greenrobot/eventbus/util/AsyncExecutor;
    .registers 2

    new-instance v0, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;-><init>(Lorg/greenrobot/eventbus/util/AsyncExecutor$a;)V

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;->a()Lorg/greenrobot/eventbus/util/AsyncExecutor;

    move-result-object v0

    return-object v0
.end method

###### Class org.greenrobot.eventbus.util.AsyncExecutor.a (org.greenrobot.eventbus.util.AsyncExecutor$a)
.class synthetic Lorg/greenrobot/eventbus/util/AsyncExecutor$a;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/util/AsyncExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class org.greenrobot.eventbus.util.AsyncExecutor.b (org.greenrobot.eventbus.util.AsyncExecutor$b)
.class public Lorg/greenrobot/eventbus/util/AsyncExecutor$b;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/util/AsyncExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Lorg/greenrobot/eventbus/EventBus;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/greenrobot/eventbus/util/AsyncExecutor$a;)V
    .registers 2

    invoke-direct {p0}, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/greenrobot/eventbus/util/AsyncExecutor;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;->b(Ljava/lang/Object;)Lorg/greenrobot/eventbus/util/AsyncExecutor;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lorg/greenrobot/eventbus/util/AsyncExecutor;
    .registers 9

    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;->c:Lorg/greenrobot/eventbus/EventBus;

    if-nez v0, :cond_a

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;->c:Lorg/greenrobot/eventbus/EventBus;

    :cond_a
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;->a:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_14

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;->a:Ljava/util/concurrent/Executor;

    :cond_14
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;->b:Ljava/lang/Class;

    if-nez v0, :cond_1c

    const-class v0, Lorg/greenrobot/eventbus/util/a;

    iput-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;->b:Ljava/lang/Class;

    :cond_1c
    new-instance v0, Lorg/greenrobot/eventbus/util/AsyncExecutor;

    iget-object v2, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;->a:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;->c:Lorg/greenrobot/eventbus/EventBus;

    iget-object v4, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$b;->b:Ljava/lang/Class;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/eventbus/util/AsyncExecutor;-><init>(Ljava/util/concurrent/Executor;Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Class;Ljava/lang/Object;Lorg/greenrobot/eventbus/util/AsyncExecutor$a;)V

    return-object v0
.end method
