###### Class org.greenrobot.eventbus.c (org.greenrobot.eventbus.c)
.class public Lorg/greenrobot/eventbus/c;
.super Ljava/lang/Object;
.source "EventBusBuilder.java"


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Ljava/util/concurrent/ExecutorService;

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/p/b;",
            ">;"
        }
    .end annotation
.end field

.field l:Lorg/greenrobot/eventbus/Logger;

.field m:Lorg/greenrobot/eventbus/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/greenrobot/eventbus/c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/c;->b:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/c;->c:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/c;->d:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/c;->e:Z

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/c;->g:Z

    sget-object v0, Lorg/greenrobot/eventbus/c;->a:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lorg/greenrobot/eventbus/c;->j:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method a()Lorg/greenrobot/eventbus/Logger;
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/eventbus/c;->l:Lorg/greenrobot/eventbus/Logger;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/Logger$Default;->get()Lorg/greenrobot/eventbus/Logger;

    move-result-object v0

    return-object v0
.end method

.method b()Lorg/greenrobot/eventbus/f;
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/eventbus/c;->m:Lorg/greenrobot/eventbus/f;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lorg/greenrobot/eventbus/android/AndroidComponents;->areAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lorg/greenrobot/eventbus/android/AndroidComponents;->get()Lorg/greenrobot/eventbus/android/AndroidComponents;

    move-result-object v0

    iget-object v0, v0, Lorg/greenrobot/eventbus/android/AndroidComponents;->c:Lorg/greenrobot/eventbus/f;

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method
