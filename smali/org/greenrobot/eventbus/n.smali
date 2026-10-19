###### Class org.greenrobot.eventbus.n (org.greenrobot.eventbus.n)
.class Lorg/greenrobot/eventbus/n;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/n$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/m;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:[Lorg/greenrobot/eventbus/n$a;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/p/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/n;->a:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/greenrobot/eventbus/n$a;

    sput-object v0, Lorg/greenrobot/eventbus/n;->b:[Lorg/greenrobot/eventbus/n$a;

    return-void
.end method

.method constructor <init>(Ljava/util/List;ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/p/b;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/n;->c:Ljava/util/List;

    iput-boolean p2, p0, Lorg/greenrobot/eventbus/n;->d:Z

    iput-boolean p3, p0, Lorg/greenrobot/eventbus/n;->e:Z

    return-void
.end method

.method static a()V
    .registers 1

    sget-object v0, Lorg/greenrobot/eventbus/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private c(Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/m;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/greenrobot/eventbus/n;->h()Lorg/greenrobot/eventbus/n$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/n$a;->c(Ljava/lang/Class;)V

    :goto_7
    iget-object p1, v0, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    if-eqz p1, :cond_36

    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/n;->g(Lorg/greenrobot/eventbus/n$a;)Lorg/greenrobot/eventbus/p/a;

    move-result-object p1

    iput-object p1, v0, Lorg/greenrobot/eventbus/n$a;->h:Lorg/greenrobot/eventbus/p/a;

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lorg/greenrobot/eventbus/p/a;->a()[Lorg/greenrobot/eventbus/m;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_32

    aget-object v3, p1, v2

    iget-object v4, v3, Lorg/greenrobot/eventbus/m;->a:Ljava/lang/reflect/Method;

    iget-object v5, v3, Lorg/greenrobot/eventbus/m;->c:Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Lorg/greenrobot/eventbus/n$a;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, v0, Lorg/greenrobot/eventbus/n$a;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2f
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/n;->e(Lorg/greenrobot/eventbus/n$a;)V

    :cond_32
    invoke-virtual {v0}, Lorg/greenrobot/eventbus/n$a;->d()V

    goto :goto_7

    :cond_36
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/n;->f(Lorg/greenrobot/eventbus/n$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/m;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/greenrobot/eventbus/n;->h()Lorg/greenrobot/eventbus/n$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/n$a;->c(Ljava/lang/Class;)V

    :goto_7
    iget-object p1, v0, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    if-eqz p1, :cond_12

    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/n;->e(Lorg/greenrobot/eventbus/n$a;)V

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/n$a;->d()V

    goto :goto_7

    :cond_12
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/n;->f(Lorg/greenrobot/eventbus/n$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private e(Lorg/greenrobot/eventbus/n$a;)V
    .registers 16

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p1, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_10

    :catchall_8
    :try_start_8
    iget-object v1, p1, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/LinkageError; {:try_start_8 .. :try_end_e} :catch_ee

    iput-boolean v0, p1, Lorg/greenrobot/eventbus/n$a;->g:Z

    :goto_10
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_ed

    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit8 v7, v5, 0x1

    const-string v8, "."

    if-eqz v7, :cond_a7

    and-int/lit16 v5, v5, 0x1448

    if-nez v5, :cond_a7

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v7, v5

    if-ne v7, v0, :cond_5b

    const-class v7, Lorg/greenrobot/eventbus/k;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lorg/greenrobot/eventbus/k;

    if-eqz v7, :cond_e9

    aget-object v8, v5, v3

    invoke-virtual {p1, v6, v8}, Lorg/greenrobot/eventbus/n$a;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_e9

    invoke-interface {v7}, Lorg/greenrobot/eventbus/k;->threadMode()Lorg/greenrobot/eventbus/ThreadMode;

    move-result-object v9

    iget-object v11, p1, Lorg/greenrobot/eventbus/n$a;->a:Ljava/util/List;

    new-instance v12, Lorg/greenrobot/eventbus/m;

    invoke-interface {v7}, Lorg/greenrobot/eventbus/k;->priority()I

    move-result v10

    invoke-interface {v7}, Lorg/greenrobot/eventbus/k;->sticky()Z

    move-result v13

    move-object v5, v12

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v13

    invoke-direct/range {v5 .. v10}, Lorg/greenrobot/eventbus/m;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e9

    :cond_5b
    iget-boolean v7, p0, Lorg/greenrobot/eventbus/n;->d:Z

    if-eqz v7, :cond_e9

    const-class v7, Lorg/greenrobot/eventbus/k;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_69

    goto/16 :goto_e9

    :cond_69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/greenrobot/eventbus/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@Subscribe method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "must have exactly 1 parameter but has "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/greenrobot/eventbus/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a7
    iget-boolean v5, p0, Lorg/greenrobot/eventbus/n;->d:Z

    if-eqz v5, :cond_e9

    const-class v5, Lorg/greenrobot/eventbus/k;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_b4

    goto :goto_e9

    :cond_b4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/greenrobot/eventbus/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a illegal @Subscribe method: must be public, non-static, and non-abstract"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/greenrobot/eventbus/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e9
    :goto_e9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    :cond_ed
    return-void

    :catch_ee
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not inspect methods of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lorg/greenrobot/eventbus/n;->e:Z

    if-eqz v1, :cond_11c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Please consider using EventBus annotation processor to avoid reflection."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_12d

    :cond_11c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Please make this class visible to EventBus annotation processor to avoid reflection."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_12d
    new-instance v1, Lorg/greenrobot/eventbus/d;

    invoke-direct {v1, p1, v0}, Lorg/greenrobot/eventbus/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private f(Lorg/greenrobot/eventbus/n$a;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/eventbus/n$a;",
            ")",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/greenrobot/eventbus/n$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lorg/greenrobot/eventbus/n$a;->e()V

    sget-object v1, Lorg/greenrobot/eventbus/n;->b:[Lorg/greenrobot/eventbus/n$a;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_e
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1d

    :try_start_11
    sget-object v3, Lorg/greenrobot/eventbus/n;->b:[Lorg/greenrobot/eventbus/n$a;

    aget-object v4, v3, v2

    if-nez v4, :cond_1a

    aput-object p1, v3, v2

    goto :goto_1d

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    :goto_1d
    monitor-exit v1

    return-object v0

    :catchall_1f
    move-exception p1

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method private g(Lorg/greenrobot/eventbus/n$a;)Lorg/greenrobot/eventbus/p/a;
    .registers 5

    iget-object v0, p1, Lorg/greenrobot/eventbus/n$a;->h:Lorg/greenrobot/eventbus/p/a;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lorg/greenrobot/eventbus/p/a;->c()Lorg/greenrobot/eventbus/p/a;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Lorg/greenrobot/eventbus/n$a;->h:Lorg/greenrobot/eventbus/p/a;

    invoke-interface {v0}, Lorg/greenrobot/eventbus/p/a;->c()Lorg/greenrobot/eventbus/p/a;

    move-result-object v0

    iget-object v1, p1, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    invoke-interface {v0}, Lorg/greenrobot/eventbus/p/a;->b()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_19

    return-object v0

    :cond_19
    iget-object v0, p0, Lorg/greenrobot/eventbus/n;->c:Ljava/util/List;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/p/b;

    iget-object v2, p1, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lorg/greenrobot/eventbus/p/b;->a(Ljava/lang/Class;)Lorg/greenrobot/eventbus/p/a;

    move-result-object v1

    if-eqz v1, :cond_21

    return-object v1

    :cond_36
    const/4 p1, 0x0

    return-object p1
.end method

.method private h()Lorg/greenrobot/eventbus/n$a;
    .registers 6

    sget-object v0, Lorg/greenrobot/eventbus/n;->b:[Lorg/greenrobot/eventbus/n$a;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x4

    if-ge v1, v2, :cond_15

    :try_start_7
    sget-object v2, Lorg/greenrobot/eventbus/n;->b:[Lorg/greenrobot/eventbus/n$a;

    aget-object v3, v2, v1

    if-eqz v3, :cond_12

    const/4 v4, 0x0

    aput-object v4, v2, v1

    monitor-exit v0

    return-object v3

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1c

    new-instance v0, Lorg/greenrobot/eventbus/n$a;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/n$a;-><init>()V

    return-object v0

    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method


# virtual methods
.method b(Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/m;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/greenrobot/eventbus/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_b

    return-object v1

    :cond_b
    iget-boolean v1, p0, Lorg/greenrobot/eventbus/n;->e:Z

    if-eqz v1, :cond_14

    invoke-direct {p0, p1}, Lorg/greenrobot/eventbus/n;->d(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    goto :goto_18

    :cond_14
    invoke-direct {p0, p1}, Lorg/greenrobot/eventbus/n;->c(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_22
    new-instance v0, Lorg/greenrobot/eventbus/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and its super classes have no public methods with the @Subscribe annotation"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/greenrobot/eventbus/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class org.greenrobot.eventbus.n.a (org.greenrobot.eventbus.n$a)
.class Lorg/greenrobot/eventbus/n$a;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/m;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/StringBuilder;

.field e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field g:Z

.field h:Lorg/greenrobot/eventbus/p/a;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/n$a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/n$a;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/n$a;->c:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/n$a;->d:Ljava/lang/StringBuilder;

    return-void
.end method

.method private b(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/eventbus/n$a;->d:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lorg/greenrobot/eventbus/n$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/greenrobot/eventbus/n$a;->d:Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/greenrobot/eventbus/n$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lorg/greenrobot/eventbus/n$a;->c:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_3e

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_3e

    :cond_38
    iget-object p1, p0, Lorg/greenrobot/eventbus/n$a;->c:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_3e
    :goto_3e
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/eventbus/n$a;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_22

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, p2}, Lorg/greenrobot/eventbus/n$a;->b(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/greenrobot/eventbus/n$a;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_22
    :goto_22
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/eventbus/n$a;->b(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method c(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    iput-object p1, p0, Lorg/greenrobot/eventbus/n$a;->e:Ljava/lang/Class;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/greenrobot/eventbus/n$a;->g:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/greenrobot/eventbus/n$a;->h:Lorg/greenrobot/eventbus/p/a;

    return-void
.end method

.method d()V
    .registers 4

    iget-boolean v0, p0, Lorg/greenrobot/eventbus/n$a;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iput-object v1, p0, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    goto :goto_36

    :cond_8
    iget-object v0, p0, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "javax."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "android."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "androidx."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_34
    iput-object v1, p0, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    :cond_36
    :goto_36
    return-void
.end method

.method e()V
    .registers 3

    iget-object v0, p0, Lorg/greenrobot/eventbus/n$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/greenrobot/eventbus/n$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/greenrobot/eventbus/n$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/greenrobot/eventbus/n$a;->d:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/greenrobot/eventbus/n$a;->e:Ljava/lang/Class;

    iput-object v0, p0, Lorg/greenrobot/eventbus/n$a;->f:Ljava/lang/Class;

    iput-boolean v1, p0, Lorg/greenrobot/eventbus/n$a;->g:Z

    iput-object v0, p0, Lorg/greenrobot/eventbus/n$a;->h:Lorg/greenrobot/eventbus/p/a;

    return-void
.end method
