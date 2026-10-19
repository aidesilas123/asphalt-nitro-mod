###### Class org.greenrobot.eventbus.EventBus (org.greenrobot.eventbus.EventBus)
.class public Lorg/greenrobot/eventbus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/EventBus$c;
    }
.end annotation


# static fields
.field static volatile a:Lorg/greenrobot/eventbus/EventBus;

.field private static final b:Lorg/greenrobot/eventbus/c;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/greenrobot/eventbus/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/greenrobot/eventbus/EventBus$c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lorg/greenrobot/eventbus/f;

.field private final i:Lorg/greenrobot/eventbus/j;

.field private final j:Lorg/greenrobot/eventbus/b;

.field private final k:Lorg/greenrobot/eventbus/a;

.field private final l:Lorg/greenrobot/eventbus/n;

.field private final m:Ljava/util/concurrent/ExecutorService;

.field private final n:Z

.field private final o:Z

.field private final p:Z

.field private final q:Z

.field private final r:Z

.field private final s:Z

.field private final t:I

.field private final u:Lorg/greenrobot/eventbus/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/greenrobot/eventbus/c;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/c;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->b:Lorg/greenrobot/eventbus/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->b:Lorg/greenrobot/eventbus/c;

    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/EventBus;-><init>(Lorg/greenrobot/eventbus/c;)V

    return-void
.end method

.method constructor <init>(Lorg/greenrobot/eventbus/c;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/greenrobot/eventbus/EventBus$a;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/EventBus$a;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->u:Lorg/greenrobot/eventbus/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/greenrobot/eventbus/c;->b()Lorg/greenrobot/eventbus/f;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->h:Lorg/greenrobot/eventbus/f;

    if-eqz v0, :cond_32

    invoke-interface {v0, p0}, Lorg/greenrobot/eventbus/f;->a(Lorg/greenrobot/eventbus/EventBus;)Lorg/greenrobot/eventbus/j;

    move-result-object v0

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->i:Lorg/greenrobot/eventbus/j;

    new-instance v0, Lorg/greenrobot/eventbus/b;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/b;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->j:Lorg/greenrobot/eventbus/b;

    new-instance v0, Lorg/greenrobot/eventbus/a;

    invoke-direct {v0, p0}, Lorg/greenrobot/eventbus/a;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->k:Lorg/greenrobot/eventbus/a;

    iget-object v0, p1, Lorg/greenrobot/eventbus/c;->k:Ljava/util/List;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    iput v0, p0, Lorg/greenrobot/eventbus/EventBus;->t:I

    new-instance v0, Lorg/greenrobot/eventbus/n;

    iget-object v1, p1, Lorg/greenrobot/eventbus/c;->k:Ljava/util/List;

    iget-boolean v2, p1, Lorg/greenrobot/eventbus/c;->i:Z

    iget-boolean v3, p1, Lorg/greenrobot/eventbus/c;->h:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/n;-><init>(Ljava/util/List;ZZ)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->l:Lorg/greenrobot/eventbus/n;

    iget-boolean v0, p1, Lorg/greenrobot/eventbus/c;->b:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->o:Z

    iget-boolean v0, p1, Lorg/greenrobot/eventbus/c;->c:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->p:Z

    iget-boolean v0, p1, Lorg/greenrobot/eventbus/c;->d:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->q:Z

    iget-boolean v0, p1, Lorg/greenrobot/eventbus/c;->e:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->r:Z

    iget-boolean v0, p1, Lorg/greenrobot/eventbus/c;->f:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->n:Z

    iget-boolean v0, p1, Lorg/greenrobot/eventbus/c;->g:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->s:Z

    iget-object p1, p1, Lorg/greenrobot/eventbus/c;->j:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->m:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static a(Ljava/util/List;[Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_19

    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/util/List;[Ljava/lang/Class;)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return-void
.end method

.method private b(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V
    .registers 4

    if-eqz p2, :cond_9

    invoke-direct {p0}, Lorg/greenrobot/eventbus/EventBus;->h()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->n(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;Z)V

    :cond_9
    return-void
.end method

.method public static builder()Lorg/greenrobot/eventbus/c;
    .registers 1

    new-instance v0, Lorg/greenrobot/eventbus/c;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/c;-><init>()V

    return-object v0
.end method

.method public static clearCaches()V
    .registers 1

    invoke-static {}, Lorg/greenrobot/eventbus/n;->a()V

    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private e(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8

    instance-of v0, p2, Lorg/greenrobot/eventbus/l;

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->o:Z

    if-eqz v0, :cond_92

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->u:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriberExceptionEvent subscriber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/greenrobot/eventbus/o;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " threw an exception"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, p3}, Lorg/greenrobot/eventbus/Logger;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p2, Lorg/greenrobot/eventbus/l;

    iget-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->u:Lorg/greenrobot/eventbus/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Initial event "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lorg/greenrobot/eventbus/l;->c:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " caused exception in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lorg/greenrobot/eventbus/l;->d:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lorg/greenrobot/eventbus/l;->b:Ljava/lang/Throwable;

    invoke-interface {p1, v1, p3, p2}, Lorg/greenrobot/eventbus/Logger;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_92

    :cond_52
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->n:Z

    if-nez v0, :cond_93

    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->o:Z

    if-eqz v0, :cond_84

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->u:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dispatch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to subscribing class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/greenrobot/eventbus/o;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lorg/greenrobot/eventbus/Logger;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_84
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/EventBus;->q:Z

    if-eqz v0, :cond_92

    new-instance v0, Lorg/greenrobot/eventbus/l;

    iget-object p1, p1, Lorg/greenrobot/eventbus/o;->a:Ljava/lang/Object;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/greenrobot/eventbus/l;-><init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    :cond_92
    :goto_92
    return-void

    :cond_93
    new-instance p1, Lorg/greenrobot/eventbus/d;

    const-string p2, "Invoking subscriber failed"

    invoke-direct {p1, p2, p3}, Lorg/greenrobot/eventbus/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getDefault()Lorg/greenrobot/eventbus/EventBus;
    .registers 2

    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->a:Lorg/greenrobot/eventbus/EventBus;

    if-nez v0, :cond_17

    const-class v1, Lorg/greenrobot/eventbus/EventBus;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->a:Lorg/greenrobot/eventbus/EventBus;

    if-nez v0, :cond_12

    new-instance v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBus;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/EventBus;->a:Lorg/greenrobot/eventbus/EventBus;

    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :goto_17
    return-object v0
.end method

.method private h()Z
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->h:Lorg/greenrobot/eventbus/f;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lorg/greenrobot/eventbus/f;->b()Z

    move-result v0

    if-eqz v0, :cond_b

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

.method private static j(Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_27

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p0

    :goto_11
    if-eqz v2, :cond_22

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/util/List;[Ljava/lang/Class;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_11

    :cond_22
    sget-object v2, Lorg/greenrobot/eventbus/EventBus;->c:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    monitor-exit v0

    return-object v1

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private l(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-boolean v1, p0, Lorg/greenrobot/eventbus/EventBus;->s:Z

    if-eqz v1, :cond_22

    invoke-static {v0}, Lorg/greenrobot/eventbus/EventBus;->j(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v3, v2, :cond_26

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v5}, Lorg/greenrobot/eventbus/EventBus;->m(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$c;Ljava/lang/Class;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_22
    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->m(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$c;Ljava/lang/Class;)Z

    move-result v4

    :cond_26
    if-nez v4, :cond_58

    iget-boolean p2, p0, Lorg/greenrobot/eventbus/EventBus;->p:Z

    if-eqz p2, :cond_44

    iget-object p2, p0, Lorg/greenrobot/eventbus/EventBus;->u:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No subscribers registered for event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/greenrobot/eventbus/Logger;->b(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_44
    iget-boolean p2, p0, Lorg/greenrobot/eventbus/EventBus;->r:Z

    if-eqz p2, :cond_58

    const-class p2, Lorg/greenrobot/eventbus/g;

    if-eq v0, p2, :cond_58

    const-class p2, Lorg/greenrobot/eventbus/l;

    if-eq v0, p2, :cond_58

    new-instance p2, Lorg/greenrobot/eventbus/g;

    invoke-direct {p2, p0, p1}, Lorg/greenrobot/eventbus/g;-><init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    :cond_58
    return-void
.end method

.method private m(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$c;Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/greenrobot/eventbus/EventBus$c;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->d:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_43

    const/4 v0, 0x0

    if-eqz p3, :cond_42

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_17
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/o;

    iput-object p1, p2, Lorg/greenrobot/eventbus/EventBus$c;->e:Ljava/lang/Object;

    iput-object v1, p2, Lorg/greenrobot/eventbus/EventBus$c;->d:Lorg/greenrobot/eventbus/o;

    const/4 v2, 0x0

    :try_start_28
    iget-boolean v3, p2, Lorg/greenrobot/eventbus/EventBus$c;->c:Z

    invoke-direct {p0, v1, p1, v3}, Lorg/greenrobot/eventbus/EventBus;->n(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;Z)V

    iget-boolean v1, p2, Lorg/greenrobot/eventbus/EventBus$c;->f:Z
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_38

    iput-object v2, p2, Lorg/greenrobot/eventbus/EventBus$c;->e:Ljava/lang/Object;

    iput-object v2, p2, Lorg/greenrobot/eventbus/EventBus$c;->d:Lorg/greenrobot/eventbus/o;

    iput-boolean v0, p2, Lorg/greenrobot/eventbus/EventBus$c;->f:Z

    if-eqz v1, :cond_17

    goto :goto_40

    :catchall_38
    move-exception p1

    iput-object v2, p2, Lorg/greenrobot/eventbus/EventBus$c;->e:Ljava/lang/Object;

    iput-object v2, p2, Lorg/greenrobot/eventbus/EventBus$c;->d:Lorg/greenrobot/eventbus/o;

    iput-boolean v0, p2, Lorg/greenrobot/eventbus/EventBus$c;->f:Z

    throw p1

    :cond_40
    :goto_40
    const/4 p1, 0x1

    return p1

    :cond_42
    return v0

    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method

.method private n(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;Z)V
    .registers 6

    sget-object v0, Lorg/greenrobot/eventbus/EventBus$b;->a:[I

    iget-object v1, p1, Lorg/greenrobot/eventbus/o;->b:Lorg/greenrobot/eventbus/m;

    iget-object v1, v1, Lorg/greenrobot/eventbus/m;->b:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_60

    const/4 v1, 0x2

    if-eq v0, v1, :cond_54

    const/4 v1, 0x3

    if-eq v0, v1, :cond_48

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3c

    const/4 p3, 0x5

    if-ne v0, p3, :cond_21

    iget-object p3, p0, Lorg/greenrobot/eventbus/EventBus;->k:Lorg/greenrobot/eventbus/a;

    invoke-virtual {p3, p1, p2}, Lorg/greenrobot/eventbus/a;->a(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V

    goto :goto_63

    :cond_21
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown thread mode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/greenrobot/eventbus/o;->b:Lorg/greenrobot/eventbus/m;

    iget-object p1, p1, Lorg/greenrobot/eventbus/m;->b:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3c
    if-eqz p3, :cond_44

    iget-object p3, p0, Lorg/greenrobot/eventbus/EventBus;->j:Lorg/greenrobot/eventbus/b;

    invoke-virtual {p3, p1, p2}, Lorg/greenrobot/eventbus/b;->a(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V

    goto :goto_63

    :cond_44
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->g(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V

    goto :goto_63

    :cond_48
    iget-object p3, p0, Lorg/greenrobot/eventbus/EventBus;->i:Lorg/greenrobot/eventbus/j;

    if-eqz p3, :cond_50

    invoke-interface {p3, p1, p2}, Lorg/greenrobot/eventbus/j;->a(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V

    goto :goto_63

    :cond_50
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->g(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V

    goto :goto_63

    :cond_54
    if-eqz p3, :cond_5a

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->g(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V

    goto :goto_63

    :cond_5a
    iget-object p3, p0, Lorg/greenrobot/eventbus/EventBus;->i:Lorg/greenrobot/eventbus/j;

    invoke-interface {p3, p1, p2}, Lorg/greenrobot/eventbus/j;->a(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V

    goto :goto_63

    :cond_60
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/EventBus;->g(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V

    :goto_63
    return-void
.end method

.method private p(Ljava/lang/Object;Lorg/greenrobot/eventbus/m;)V
    .registers 10

    iget-object v0, p2, Lorg/greenrobot/eventbus/m;->c:Ljava/lang/Class;

    new-instance v1, Lorg/greenrobot/eventbus/o;

    invoke-direct {v1, p1, p2}, Lorg/greenrobot/eventbus/o;-><init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/m;)V

    iget-object v2, p0, Lorg/greenrobot/eventbus/EventBus;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_1c

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v3, p0, Lorg/greenrobot/eventbus/EventBus;->d:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_1c
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    :goto_22
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_27
    if-gt v4, v3, :cond_40

    if-eq v4, v3, :cond_3d

    iget v5, p2, Lorg/greenrobot/eventbus/m;->d:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/greenrobot/eventbus/o;

    iget-object v6, v6, Lorg/greenrobot/eventbus/o;->b:Lorg/greenrobot/eventbus/m;

    iget v6, v6, Lorg/greenrobot/eventbus/m;->d:I

    if-le v5, v6, :cond_3a

    goto :goto_3d

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_3d
    :goto_3d
    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    :cond_40
    iget-object v2, p0, Lorg/greenrobot/eventbus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_54

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/greenrobot/eventbus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p2, Lorg/greenrobot/eventbus/m;->e:Z

    if-eqz p1, :cond_92

    iget-boolean p1, p0, Lorg/greenrobot/eventbus/EventBus;->s:Z

    if-eqz p1, :cond_89

    iget-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_69
    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lorg/greenrobot/eventbus/EventBus;->b(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V

    goto :goto_69

    :cond_89
    iget-object p1, p0, Lorg/greenrobot/eventbus/EventBus;->f:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/greenrobot/eventbus/EventBus;->b(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V

    :cond_92
    return-void

    :cond_93
    new-instance p2, Lorg/greenrobot/eventbus/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered to event "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/greenrobot/eventbus/d;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private r(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_28

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_28

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/greenrobot/eventbus/o;

    iget-object v4, v3, Lorg/greenrobot/eventbus/o;->a:Ljava/lang/Object;

    if-ne v4, p1, :cond_25

    iput-boolean v1, v3, Lorg/greenrobot/eventbus/o;->c:Z

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_28
    return-void
.end method


# virtual methods
.method c()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->m:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public d()Lorg/greenrobot/eventbus/Logger;
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->u:Lorg/greenrobot/eventbus/Logger;

    return-object v0
.end method

.method f(Lorg/greenrobot/eventbus/h;)V
    .registers 4

    iget-object v0, p1, Lorg/greenrobot/eventbus/h;->b:Ljava/lang/Object;

    iget-object v1, p1, Lorg/greenrobot/eventbus/h;->c:Lorg/greenrobot/eventbus/o;

    invoke-static {p1}, Lorg/greenrobot/eventbus/h;->b(Lorg/greenrobot/eventbus/h;)V

    iget-boolean p1, v1, Lorg/greenrobot/eventbus/o;->c:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0, v1, v0}, Lorg/greenrobot/eventbus/EventBus;->g(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method g(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)V
    .registers 7

    :try_start_0
    iget-object v0, p1, Lorg/greenrobot/eventbus/o;->b:Lorg/greenrobot/eventbus/m;

    iget-object v0, v0, Lorg/greenrobot/eventbus/m;->a:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lorg/greenrobot/eventbus/o;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_f} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_21

    :catch_10
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/EventBus;->e(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_21
    return-void
.end method

.method public declared-synchronized i(Ljava/lang/Object;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus$c;

    iget-object v1, v0, Lorg/greenrobot/eventbus/EventBus$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$c;->b:Z

    if-nez p1, :cond_40

    invoke-direct {p0}, Lorg/greenrobot/eventbus/EventBus;->h()Z

    move-result p1

    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$c;->c:Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$c;->b:Z

    iget-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$c;->f:Z

    if-nez p1, :cond_38

    :goto_1e
    const/4 p1, 0x0

    :try_start_1f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;Lorg/greenrobot/eventbus/EventBus$c;)V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_32

    goto :goto_1e

    :cond_2d
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$c;->b:Z

    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$c;->c:Z

    goto :goto_40

    :catchall_32
    move-exception v1

    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$c;->b:Z

    iput-boolean p1, v0, Lorg/greenrobot/eventbus/EventBus$c;->c:Z

    throw v1

    :cond_38
    new-instance p1, Lorg/greenrobot/eventbus/d;

    const-string v0, "Internal error. Abort state was not reset"

    invoke-direct {p1, v0}, Lorg/greenrobot/eventbus/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    :goto_40
    return-void
.end method

.method public o(Ljava/lang/Object;)V
    .registers 4

    invoke-static {}, Lorg/greenrobot/eventbus/android/AndroidDependenciesDetector;->isAndroidSDKAvailable()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lorg/greenrobot/eventbus/android/AndroidDependenciesDetector;->areAndroidComponentsAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    :goto_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/eventbus/EventBus;->l:Lorg/greenrobot/eventbus/n;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/n;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    monitor-enter p0

    :try_start_20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/m;

    invoke-direct {p0, p1, v1}, Lorg/greenrobot/eventbus/EventBus;->p(Ljava/lang/Object;Lorg/greenrobot/eventbus/m;)V

    goto :goto_24

    :cond_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public declared-synchronized q(Ljava/lang/Object;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Lorg/greenrobot/eventbus/EventBus;->r(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_f

    :cond_1f
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    :cond_25
    iget-object v0, p0, Lorg/greenrobot/eventbus/EventBus;->u:Lorg/greenrobot/eventbus/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriber to unregister was not registered before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/greenrobot/eventbus/Logger;->b(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    :goto_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventBus[indexCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/greenrobot/eventbus/EventBus;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventInheritance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/greenrobot/eventbus/EventBus;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class org.greenrobot.eventbus.EventBus.a (org.greenrobot.eventbus.EventBus$a)
.class Lorg/greenrobot/eventbus/EventBus$a;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/greenrobot/eventbus/EventBus$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/greenrobot/eventbus/EventBus;


# direct methods
.method constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .registers 2

    iput-object p1, p0, Lorg/greenrobot/eventbus/EventBus$a;->a:Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lorg/greenrobot/eventbus/EventBus$c;
    .registers 2

    new-instance v0, Lorg/greenrobot/eventbus/EventBus$c;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBus$c;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/greenrobot/eventbus/EventBus$a;->a()Lorg/greenrobot/eventbus/EventBus$c;

    move-result-object v0

    return-object v0
.end method

###### Class org.greenrobot.eventbus.EventBus.b (org.greenrobot.eventbus.EventBus$b)
.class synthetic Lorg/greenrobot/eventbus/EventBus$b;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/greenrobot/eventbus/ThreadMode;->values()[Lorg/greenrobot/eventbus/ThreadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/greenrobot/eventbus/EventBus$b;->a:[I

    :try_start_9
    sget-object v1, Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/greenrobot/eventbus/EventBus$b;->a:[I

    sget-object v1, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/greenrobot/eventbus/EventBus$b;->a:[I

    sget-object v1, Lorg/greenrobot/eventbus/ThreadMode;->MAIN_ORDERED:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lorg/greenrobot/eventbus/EventBus$b;->a:[I

    sget-object v1, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lorg/greenrobot/eventbus/EventBus$b;->a:[I

    sget-object v1, Lorg/greenrobot/eventbus/ThreadMode;->ASYNC:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

###### Class org.greenrobot.eventbus.EventBus.c (org.greenrobot.eventbus.EventBus$c)
.class final Lorg/greenrobot/eventbus/EventBus$c;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:Lorg/greenrobot/eventbus/o;

.field e:Ljava/lang/Object;

.field f:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/EventBus$c;->a:Ljava/util/List;

    return-void
.end method
