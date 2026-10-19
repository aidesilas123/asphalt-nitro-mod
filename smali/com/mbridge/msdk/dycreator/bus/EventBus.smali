###### Class com.mbridge.msdk.dycreator.bus.EventBus (com.mbridge.msdk.dycreator.bus.EventBus)
.class public final Lcom/mbridge/msdk/dycreator/bus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/dycreator/bus/EventBus$PostCallback;,
        Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;

.field static a:Ljava/util/concurrent/ExecutorService;

.field private static volatile b:Lcom/mbridge/msdk/dycreator/bus/EventBus;

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
            "Lcom/mbridge/msdk/dycreator/bus/Subscription;",
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
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private final j:Lcom/mbridge/msdk/dycreator/bus/HandlerPoster;

.field private final k:Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;

.field private final l:Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;

.field private final m:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;

.field private n:Z

.field private o:Z

.field private p:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a:Ljava/util/concurrent/ExecutorService;

    const-string v0, "Event"

    sput-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/EventBus$1;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/dycreator/bus/EventBus$1;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->g:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/EventBus$2;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/dycreator/bus/EventBus$2;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->h:Ljava/lang/ThreadLocal;

    const-string v0, "onEvent"

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->i:Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/HandlerPoster;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lcom/mbridge/msdk/dycreator/bus/HandlerPoster;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;Landroid/os/Looper;I)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->j:Lcom/mbridge/msdk/dycreator/bus/HandlerPoster;

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->k:Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->l:Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;

    invoke-direct {v0}, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->m:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->o:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/util/List;
    .registers 6
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

    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_27

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p1

    :goto_11
    if-eqz v2, :cond_22

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/util/List;[Ljava/lang/Class;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_11

    :cond_22
    sget-object v2, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    monitor-exit v0

    return-object v1

    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method private a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->b:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;

    iget-object v0, v0, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->a:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_f} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_11

    goto/16 :goto_a1

    :catch_11
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;

    if-eqz v1, :cond_6b

    sget-object v1, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriberExceptionEvent subscriber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " threw an exception"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    check-cast p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;

    sget-object p1, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " caused exception in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a1

    :cond_6b
    iget-boolean v1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->o:Z

    if-eqz v1, :cond_97

    sget-object v1, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dispatch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to subscribing class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_97
    new-instance v1, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;

    iget-object p1, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->a:Ljava/lang/Object;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->post(Ljava/lang/Object;)V

    :goto_a1
    return-void
.end method

.method private a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;Z)V
    .registers 6

    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus$3;->a:[I

    iget-object v1, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->b:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;

    iget-object v1, v1, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->b:Lcom/mbridge/msdk/dycreator/bus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    const/4 v1, 0x2

    if-eq v0, v1, :cond_45

    const/4 v1, 0x3

    if-eq v0, v1, :cond_39

    const/4 p3, 0x4

    if-ne v0, p3, :cond_1e

    iget-object p3, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->l:Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;

    invoke-virtual {p3, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/AsyncPoster;->enqueue(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_54

    :cond_1e
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown thread mode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/mbridge/msdk/dycreator/bus/Subscription;->b:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;

    iget-object p1, p1, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->b:Lcom/mbridge/msdk/dycreator/bus/ThreadMode;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_39
    if-eqz p3, :cond_41

    iget-object p3, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->k:Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;

    invoke-virtual {p3, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/BackgroundPoster;->enqueue(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_54

    :cond_41
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_54

    :cond_45
    if-eqz p3, :cond_4b

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_54

    :cond_4b
    iget-object p3, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->j:Lcom/mbridge/msdk/dycreator/bus/HandlerPoster;

    invoke-virtual {p3, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/HandlerPoster;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_54

    :cond_51
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    :goto_54
    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;Z)V
    .registers 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->n:Z

    iget-object v1, p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->c:Ljava/lang/Class;

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Lcom/mbridge/msdk/dycreator/bus/Subscription;

    invoke-direct {v3, p1, p2}, Lcom/mbridge/msdk/dycreator/bus/Subscription;-><init>(Ljava/lang/Object;Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;)V

    if-nez v2, :cond_1f

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v4, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->d:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59

    :cond_1f
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mbridge/msdk/dycreator/bus/Subscription;

    invoke-virtual {v5, v3}, Lcom/mbridge/msdk/dycreator/bus/Subscription;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_23

    :cond_36
    new-instance p2, Lcom/mbridge/msdk/dycreator/bus/EventBusException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Subscriber "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered to event "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mbridge/msdk/dycreator/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_59
    :goto_59
    iget-object p2, p2, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_75

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_99

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    monitor-enter p1

    :try_start_7d
    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    monitor-exit p1
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_96

    if-eqz p2, :cond_99

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p1, p3, :cond_91

    goto :goto_92

    :cond_91
    const/4 v0, 0x0

    :goto_92
    invoke-direct {p0, v3, p2, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;Z)V

    goto :goto_99

    :catchall_96
    move-exception p2

    :try_start_97
    monitor-exit p1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p2

    :cond_99
    :goto_99
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_25

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_25

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/dycreator/bus/Subscription;

    iget-object v2, v2, Lcom/mbridge/msdk/dycreator/bus/Subscription;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_22

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_25
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->m:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;

    invoke-direct {p0, p1, v0, p3}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;Z)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private varargs declared-synchronized a(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->m:Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;

    invoke-virtual {v1, v0, p2}, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;

    iget-object v1, v0, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->c:Ljava/lang/Class;

    if-ne p4, v1, :cond_23

    invoke-direct {p0, p1, v0, p3}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;Z)V

    goto :goto_f

    :cond_23
    if-eqz p5, :cond_f

    array-length v1, p5

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_f

    aget-object v3, p5, v2

    iget-object v4, v0, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;->c:Ljava/lang/Class;

    if-ne v3, v4, :cond_33

    invoke-direct {p0, p1, v0, p3}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Lcom/mbridge/msdk/dycreator/bus/SubscriberMethod;Z)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_38

    goto :goto_f

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Ljava/util/List;[Ljava/lang/Class;)V
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

    invoke-static {p0, v2}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/util/List;[Ljava/lang/Class;)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return-void
.end method

.method public static clearCaches()V
    .registers 1

    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;->a()V

    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static clearSkipMethodNameVerifications()V
    .registers 0

    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;->clearSkipMethodNameVerifications()V

    return-void
.end method

.method public static getDefault()Lcom/mbridge/msdk/dycreator/bus/EventBus;
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    if-nez v0, :cond_17

    const-class v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    if-nez v1, :cond_12

    new-instance v1, Lcom/mbridge/msdk/dycreator/bus/EventBus;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Lcom/mbridge/msdk/dycreator/bus/EventBus;

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
    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    return-object v0
.end method

.method public static skipMethodNameVerificationFor(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/mbridge/msdk/dycreator/bus/SubscriberMethodFinder;->a(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/mbridge/msdk/dycreator/bus/PendingPost;)V
    .registers 4

    iget-object v0, p1, Lcom/mbridge/msdk/dycreator/bus/PendingPost;->a:Ljava/lang/Object;

    iget-object v1, p1, Lcom/mbridge/msdk/dycreator/bus/PendingPost;->b:Lcom/mbridge/msdk/dycreator/bus/Subscription;

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/bus/PendingPost;->a(Lcom/mbridge/msdk/dycreator/bus/PendingPost;)V

    invoke-direct {p0, v1, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;)V

    return-void
.end method

.method public final configureLogSubscriberExceptions(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->n:Z

    if-nez v0, :cond_7

    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->o:Z

    return-void

    :cond_7
    new-instance p1, Lcom/mbridge/msdk/dycreator/bus/EventBusException;

    const-string v0, "This method must be called before any registration"

    invoke-direct {p1, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final post(Ljava/lang/Object;)V
    .registers 14

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;

    iget-boolean v1, p1, Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;->a:Z

    if-nez v1, :cond_a6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    iput-boolean v3, p1, Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;->a:Z

    :cond_28
    :goto_28
    :try_start_28
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9f

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_a2

    if-eqz v2, :cond_28

    :try_start_34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_42
    if-ge v8, v7, :cond_71

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    monitor-enter p0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4b} :catch_9a
    .catchall {:try_start_34 .. :try_end_4b} :catchall_a2

    :try_start_4b
    iget-object v11, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->d:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_6e

    if-eqz v10, :cond_6b

    :try_start_56
    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mbridge/msdk/dycreator/bus/Subscription;

    invoke-direct {p0, v10, v2, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Lcom/mbridge/msdk/dycreator/bus/Subscription;Ljava/lang/Object;Z)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_69} :catch_9a
    .catchall {:try_start_56 .. :try_end_69} :catchall_a2

    goto :goto_5a

    :cond_6a
    const/4 v9, 0x1

    :cond_6b
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    :catchall_6e
    move-exception v2

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    throw v2

    :cond_71
    if-nez v9, :cond_28

    sget-object v6, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No subscripers registered for event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v6, Lcom/mbridge/msdk/dycreator/bus/NoSubscriberEvent;

    if-eq v5, v6, :cond_28

    const-class v6, Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;

    if-eq v5, v6, :cond_28

    new-instance v5, Lcom/mbridge/msdk/dycreator/bus/NoSubscriberEvent;

    invoke-direct {v5, p0, v2}, Lcom/mbridge/msdk/dycreator/bus/NoSubscriberEvent;-><init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_99} :catch_9a
    .catchall {:try_start_70 .. :try_end_99} :catchall_a2

    goto :goto_28

    :catch_9a
    move-exception v2

    :try_start_9b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a2

    goto :goto_28

    :cond_9f
    iput-boolean v4, p1, Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;->a:Z

    goto :goto_a6

    :catchall_a2
    move-exception v0

    iput-boolean v4, p1, Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;->a:Z

    throw v0

    :cond_a6
    :goto_a6
    return-void
.end method

.method public final postSticky(Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final register(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->i:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public final varargs register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->i:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method public final register(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public final varargs declared-synchronized register(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final register(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    if-eqz v0, :cond_13

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_13
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->i:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public final registerSticky(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->i:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public final varargs registerSticky(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->i:Ljava/lang/String;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method public final registerSticky(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public final varargs declared-synchronized registerSticky(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final release()V
    .registers 3

    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    sput-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->b:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    sput-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->c:Ljava/util/Map;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_16

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_16
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->d:Ljava/util/Map;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_25
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/util/Map;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_34
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_43

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_43
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    if-eqz v0, :cond_52

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_52

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_52
    return-void
.end method

.method public final removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final removeStickyEvent(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->f:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_1b
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public final declared-synchronized unregister(Ljava/lang/Object;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/util/Map;

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

    invoke-direct {p0, p1, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_f

    :cond_1f
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_25
    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber to unregister was not registered before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    :goto_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs declared-synchronized unregister(Ljava/lang/Object;[Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    array-length v0, p2

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_29

    array-length v1, p2

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1d

    aget-object v3, p2, v2

    invoke-direct {p0, p1, v3}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_43

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :cond_29
    sget-object p2, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscriber to unregister was not registered before: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_4d

    :cond_43
    :goto_43
    monitor-exit p0

    return-void

    :cond_45
    :try_start_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Provide at least one event class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unregister(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    if-eqz v0, :cond_4f

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Lcom/mbridge/msdk/dycreator/bus/EventBus;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1f

    :cond_2f
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :cond_35
    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber to unregister was not registered before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    :cond_4f
    :goto_4f
    monitor-exit p0

    return-void

    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.mbridge.msdk.dycreator.bus.EventBus.AnonymousClass1 (com.mbridge.msdk.dycreator.bus.EventBus$1)
.class Lcom/mbridge/msdk/dycreator/bus/EventBus$1;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/bus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/dycreator/bus/EventBus;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus$1;->a:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class com.mbridge.msdk.dycreator.bus.EventBus.AnonymousClass2 (com.mbridge.msdk.dycreator.bus.EventBus$2)
.class Lcom/mbridge/msdk/dycreator/bus/EventBus$2;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/bus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/dycreator/bus/EventBus;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/dycreator/bus/EventBus;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/bus/EventBus$2;->a:Lcom/mbridge/msdk/dycreator/bus/EventBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;

    invoke-direct {v0}, Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;-><init>()V

    return-object v0
.end method

###### Class com.mbridge.msdk.dycreator.bus.EventBus.AnonymousClass3 (com.mbridge.msdk.dycreator.bus.EventBus$3)
.class synthetic Lcom/mbridge/msdk/dycreator/bus/EventBus$3;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/bus/EventBus;
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

    invoke-static {}, Lcom/mbridge/msdk/dycreator/bus/ThreadMode;->values()[Lcom/mbridge/msdk/dycreator/bus/ThreadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus$3;->a:[I

    :try_start_9
    sget-object v1, Lcom/mbridge/msdk/dycreator/bus/ThreadMode;->PostThread:Lcom/mbridge/msdk/dycreator/bus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus$3;->a:[I

    sget-object v1, Lcom/mbridge/msdk/dycreator/bus/ThreadMode;->MainThread:Lcom/mbridge/msdk/dycreator/bus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus$3;->a:[I

    sget-object v1, Lcom/mbridge/msdk/dycreator/bus/ThreadMode;->BackgroundThread:Lcom/mbridge/msdk/dycreator/bus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/mbridge/msdk/dycreator/bus/EventBus$3;->a:[I

    sget-object v1, Lcom/mbridge/msdk/dycreator/bus/ThreadMode;->Async:Lcom/mbridge/msdk/dycreator/bus/ThreadMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class com.mbridge.msdk.dycreator.bus.EventBus.BooleanWrapper (com.mbridge.msdk.dycreator.bus.EventBus$BooleanWrapper)
.class final Lcom/mbridge/msdk/dycreator/bus/EventBus$BooleanWrapper;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/bus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BooleanWrapper"
.end annotation


# instance fields
.field a:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.mbridge.msdk.dycreator.bus.EventBus.PostCallback (com.mbridge.msdk.dycreator.bus.EventBus$PostCallback)
.class interface abstract Lcom/mbridge/msdk/dycreator/bus/EventBus$PostCallback;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/bus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PostCallback"
.end annotation


# virtual methods
.method public abstract onPostCompleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/dycreator/bus/SubscriberExceptionEvent;",
            ">;)V"
        }
    .end annotation
.end method
