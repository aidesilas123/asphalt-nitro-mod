###### Class org.greenrobot.eventbus.h (org.greenrobot.eventbus.h)
.class final Lorg/greenrobot/eventbus/h;
.super Ljava/lang/Object;
.source "PendingPost.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/lang/Object;

.field c:Lorg/greenrobot/eventbus/o;

.field d:Lorg/greenrobot/eventbus/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/h;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/o;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/h;->b:Ljava/lang/Object;

    iput-object p2, p0, Lorg/greenrobot/eventbus/h;->c:Lorg/greenrobot/eventbus/o;

    return-void
.end method

.method static a(Lorg/greenrobot/eventbus/o;Ljava/lang/Object;)Lorg/greenrobot/eventbus/h;
    .registers 4

    sget-object v0, Lorg/greenrobot/eventbus/h;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/h;

    iput-object p1, v1, Lorg/greenrobot/eventbus/h;->b:Ljava/lang/Object;

    iput-object p0, v1, Lorg/greenrobot/eventbus/h;->c:Lorg/greenrobot/eventbus/o;

    const/4 p0, 0x0

    iput-object p0, v1, Lorg/greenrobot/eventbus/h;->d:Lorg/greenrobot/eventbus/h;

    monitor-exit v0

    return-object v1

    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    new-instance v0, Lorg/greenrobot/eventbus/h;

    invoke-direct {v0, p1, p0}, Lorg/greenrobot/eventbus/h;-><init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/o;)V

    return-object v0

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method static b(Lorg/greenrobot/eventbus/h;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/greenrobot/eventbus/h;->b:Ljava/lang/Object;

    iput-object v0, p0, Lorg/greenrobot/eventbus/h;->c:Lorg/greenrobot/eventbus/o;

    iput-object v0, p0, Lorg/greenrobot/eventbus/h;->d:Lorg/greenrobot/eventbus/h;

    sget-object v0, Lorg/greenrobot/eventbus/h;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_15

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw p0
.end method
