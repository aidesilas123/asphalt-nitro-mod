###### Class com.mbridge.msdk.foundation.download.core.PriorityThreadFactory (com.mbridge.msdk.foundation.download.core.PriorityThreadFactory)
.class public Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final threadPriority:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;->threadPriority:I

    return-void
.end method

.method static synthetic access$000(Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;)I
    .registers 1

    iget p0, p0, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;->threadPriority:I

    return p0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory$1;-><init>(Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v0, "mb_download_thread"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p1
.end method

###### Class com.mbridge.msdk.foundation.download.core.PriorityThreadFactory.AnonymousClass1 (com.mbridge.msdk.foundation.download.core.PriorityThreadFactory$1)
.class Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory$1;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory$1;->this$0:Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory$1;->this$0:Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;->access$000(Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_9

    :catchall_9
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/PriorityThreadFactory$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
