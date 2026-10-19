###### Class com.bytedance.sdk.component.g.a (com.bytedance.sdk.component.g.a)
.class Lcom/bytedance/sdk/component/g/a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ADThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/g/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/bytedance/sdk/component/g/a;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_9
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/g/a;->a(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_9
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/g/a;->a(Ljava/lang/Runnable;Ljava/lang/OutOfMemoryError;)V

    :goto_d
    return-void
.end method

.method private a(Ljava/lang/Runnable;Ljava/lang/OutOfMemoryError;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/g/a;->a(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_b

    goto :goto_17

    :cond_b
    :try_start_b
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_17

    :catchall_f
    move-exception p1

    const-string p2, ""

    const-string v0, "try exc failed"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    return-void
.end method

.method private a(Ljava/util/concurrent/BlockingQueue;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "ADThreadPoolExecutor"

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-eq v1, p2, :cond_4c

    if-eqz p1, :cond_4c

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-gtz p1, :cond_4c

    :try_start_10
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "reduceCoreThreadSize: reduce poolType =  "

    aput-object v1, p1, p2

    const/4 p2, 0x1

    iget-object v1, p0, Lcom/bytedance/sdk/component/g/a;->a:Ljava/lang/String;

    aput-object v1, p1, p2

    const/4 p2, 0x2

    const-string v1, " coreSize="

    aput-object v1, p1, p2

    const/4 p2, 0x3

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    const/4 p2, 0x4

    const-string v1, "  maxSize="

    aput-object v1, p1, p2

    const/4 p2, 0x5

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_43} :catch_44

    goto :goto_4c

    :catch_44
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method private a(Ljava/util/concurrent/BlockingQueue;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "ADThreadPoolExecutor"

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-eq v1, p2, :cond_4c

    if-eqz p1, :cond_4c

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-lt p1, p3, :cond_4c

    :try_start_10
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "increaseCoreThreadSize: increase poolType =  "

    aput-object p3, p1, p2

    const/4 p2, 0x1

    iget-object p3, p0, Lcom/bytedance/sdk/component/g/a;->a:Ljava/lang/String;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, " coreSize="

    aput-object p3, p1, p2

    const/4 p2, 0x3

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "  maxSize="

    aput-object p3, p1, p2

    const/4 p2, 0x5

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_43} :catch_44

    goto :goto_4c

    :catch_44
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 6

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->g()Z

    move-result p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/bytedance/sdk/component/g/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_56

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    if-eqz p1, :cond_56

    iget-object p2, p0, Lcom/bytedance/sdk/component/g/a;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    sparse-switch v1, :sswitch_data_58

    goto :goto_46

    :sswitch_26
    const-string v1, "aidl"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2f

    goto :goto_46

    :cond_2f
    const/4 v0, 0x2

    goto :goto_46

    :sswitch_31
    const-string v1, "log"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3a

    goto :goto_46

    :cond_3a
    const/4 v0, 0x1

    goto :goto_46

    :sswitch_3c
    const-string v1, "io"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    packed-switch v0, :pswitch_data_66

    goto :goto_56

    :pswitch_4a
    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/component/g/a;->a(Ljava/util/concurrent/BlockingQueue;I)V

    goto :goto_56

    :pswitch_4e
    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/g/a;->a(Ljava/util/concurrent/BlockingQueue;I)V

    goto :goto_56

    :pswitch_53
    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/component/g/a;->a(Ljava/util/concurrent/BlockingQueue;I)V

    :cond_56
    :goto_56
    return-void

    nop

    :sswitch_data_58
    .sparse-switch
        0xd26 -> :sswitch_3c
        0x1a344 -> :sswitch_31
        0x2daeb0 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_53
        :pswitch_4e
        :pswitch_4a
    .end packed-switch
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 6

    instance-of v0, p1, Lcom/bytedance/sdk/component/g/h;

    if-eqz v0, :cond_f

    new-instance v0, Lcom/bytedance/sdk/component/g/b;

    check-cast p1, Lcom/bytedance/sdk/component/g/h;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/component/g/b;-><init>(Lcom/bytedance/sdk/component/g/h;Lcom/bytedance/sdk/component/g/a;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/g/a;->a(Ljava/lang/Runnable;)V

    goto :goto_1e

    :cond_f
    new-instance v0, Lcom/bytedance/sdk/component/g/a$1;

    const-string v1, "unknown"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/component/g/a$1;-><init>(Lcom/bytedance/sdk/component/g/a;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance p1, Lcom/bytedance/sdk/component/g/b;

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/component/g/b;-><init>(Lcom/bytedance/sdk/component/g/h;Lcom/bytedance/sdk/component/g/a;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/g/a;->a(Ljava/lang/Runnable;)V

    :goto_1e
    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->g()Z

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/bytedance/sdk/component/g/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7c

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    if-eqz p1, :cond_7c

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    sparse-switch v2, :sswitch_data_7e

    goto :goto_61

    :sswitch_41
    const-string v2, "aidl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_61

    :cond_4a
    const/4 v1, 0x2

    goto :goto_61

    :sswitch_4c
    const-string v2, "log"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_61

    :cond_55
    const/4 v1, 0x1

    goto :goto_61

    :sswitch_57
    const-string v2, "io"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto :goto_61

    :cond_60
    const/4 v1, 0x0

    :goto_61
    packed-switch v1, :pswitch_data_8c

    goto :goto_7c

    :pswitch_65
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, v0}, Lcom/bytedance/sdk/component/g/a;->a(Ljava/util/concurrent/BlockingQueue;II)V

    goto :goto_7c

    :pswitch_6a
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, v0}, Lcom/bytedance/sdk/component/g/a;->a(Ljava/util/concurrent/BlockingQueue;II)V

    goto :goto_7c

    :pswitch_70
    sget v0, Lcom/bytedance/sdk/component/g/f;->a:I

    add-int/2addr v0, v3

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/g/a;->a(Ljava/util/concurrent/BlockingQueue;II)V

    :cond_7c
    :goto_7c
    return-void

    nop

    :sswitch_data_7e
    .sparse-switch
        0xd26 -> :sswitch_57
        0x1a344 -> :sswitch_4c
        0x2daeb0 -> :sswitch_41
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6a
        :pswitch_65
    .end packed-switch
.end method

.method public shutdown()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a;->a:Ljava/lang/String;

    const-string v1, "io"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a;->a:Ljava/lang/String;

    const-string v1, "aidl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_18

    :cond_15
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_18
    :goto_18
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a;->a:Ljava/lang/String;

    const-string v1, "io"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a;->a:Ljava/lang/String;

    const-string v1, "aidl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1a

    :cond_15
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1a
    :goto_1a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.bytedance.sdk.component.g.a.AnonymousClass1 (com.bytedance.sdk.component.g.a$1)
.class Lcom/bytedance/sdk/component/g/a$1;
.super Lcom/bytedance/sdk/component/g/h;
.source "ADThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/g/a;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/bytedance/sdk/component/g/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/g/a;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/component/g/a$1;->b:Lcom/bytedance/sdk/component/g/a;

    iput-object p3, p0, Lcom/bytedance/sdk/component/g/a$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class com.bytedance.sdk.component.g.a.C0120a (com.bytedance.sdk.component.g.a$a)
.class public Lcom/bytedance/sdk/component/g/a$a;
.super Ljava/lang/Object;
.source "ADThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ljava/util/concurrent/TimeUnit;

.field private e:I

.field private f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ThreadFactory;

.field private h:Ljava/util/concurrent/RejectedExecutionHandler;

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "io"

    iput-object v0, p0, Lcom/bytedance/sdk/component/g/a$a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/component/g/a$a;->b:I

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/bytedance/sdk/component/g/a$a;->c:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/g/a$a;->d:Ljava/util/concurrent/TimeUnit;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/bytedance/sdk/component/g/a$a;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/g/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    iput-object v0, p0, Lcom/bytedance/sdk/component/g/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/component/g/a$a;->i:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/component/g/a$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/component/g/a$a;->b:I

    return-object p0
.end method

.method public a(J)Lcom/bytedance/sdk/component/g/a$a;
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/component/g/a$a;->c:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/component/g/a$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/g/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/g/a$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcom/bytedance/sdk/component/g/a$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/component/g/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/g/a$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/g/a$a;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/g/a$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/g/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/g/a$a;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/g/a$a;->d:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/component/g/a;
    .registers 12

    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_12

    invoke-static {}, Lcom/bytedance/sdk/component/g/e;->a()Lcom/bytedance/sdk/component/g/j;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/g/a$a;->i:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/g/a$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/g/j;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/g/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/g/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a$a;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->h()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/g/a$a;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/component/g/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_27

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/g/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    :cond_27
    new-instance v0, Lcom/bytedance/sdk/component/g/a;

    iget-object v2, p0, Lcom/bytedance/sdk/component/g/a$a;->a:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/component/g/a$a;->b:I

    iget v4, p0, Lcom/bytedance/sdk/component/g/a$a;->e:I

    iget-wide v5, p0, Lcom/bytedance/sdk/component/g/a$a;->c:J

    iget-object v7, p0, Lcom/bytedance/sdk/component/g/a$a;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/bytedance/sdk/component/g/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    iget-object v9, p0, Lcom/bytedance/sdk/component/g/a$a;->g:Ljava/util/concurrent/ThreadFactory;

    iget-object v10, p0, Lcom/bytedance/sdk/component/g/a$a;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/g/a;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method public b(I)Lcom/bytedance/sdk/component/g/a$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/component/g/a$a;->i:I

    return-object p0
.end method
