###### Class com.bytedance.sdk.component.c (com.bytedance.sdk.component.c)
.class public Lcom/bytedance/sdk/component/c;
.super Ljava/lang/Object;
.source "TTQueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Landroid/os/Handler;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final c:Ljava/util/LinkedList;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/c;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/c;->c:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/c;->d:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/bytedance/sdk/component/c;->c()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;Z)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/c;->b()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/component/c;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_7} :catch_1d

    :try_start_7
    sget-object v2, Lcom/bytedance/sdk/component/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    if-eqz p1, :cond_15

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_18

    :cond_15
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_18
    monitor-exit v1

    goto :goto_1d

    :catchall_1a
    move-exception p0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw p0
    :try_end_1d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_1d} :catch_1d

    :catch_1d
    :goto_1d
    return-void
.end method

.method private static b()Landroid/os/Handler;
    .registers 4

    sget-object v0, Lcom/bytedance/sdk/component/c;->b:Landroid/os/Handler;

    if-nez v0, :cond_28

    sget-object v0, Lcom/bytedance/sdk/component/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/c;->b:Landroid/os/Handler;

    if-nez v1, :cond_21

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "queued-work-looper"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/bytedance/sdk/component/c$a;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/component/c$a;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/bytedance/sdk/component/c;->b:Landroid/os/Handler;

    :cond_21
    sget-object v1, Lcom/bytedance/sdk/component/c;->b:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v1

    :cond_28
    sget-object v0, Lcom/bytedance/sdk/component/c;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private static c()V
    .registers 5

    sget-object v0, Lcom/bytedance/sdk/component/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/component/c;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_39

    :try_start_6
    sget-object v2, Lcom/bytedance/sdk/component/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    invoke-static {}, Lcom/bytedance/sdk/component/c;->b()Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_36

    :try_start_1a
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_34

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_24

    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_39

    return-void

    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v2

    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_39

    throw v1
.end method

###### Class com.bytedance.sdk.component.c.a (com.bytedance.sdk.component.c$a)
.class Lcom/bytedance/sdk/component/c$a;
.super Landroid/os/Handler;
.source "TTQueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/component/c;->a()V
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_8} :catch_8

    :catch_8
    :cond_8
    return-void
.end method
