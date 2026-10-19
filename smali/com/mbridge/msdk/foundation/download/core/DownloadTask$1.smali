###### Class com.mbridge.msdk.foundation.download.core.DownloadTask.AnonymousClass1 (com.mbridge.msdk.foundation.download.core.DownloadTask$1)
.class Lcom/mbridge/msdk/foundation/download/core/DownloadTask$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/download/core/DownloadTask;->run()Lcom/mbridge/msdk/foundation/download/DownloadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadTask;

.field final synthetic val$downLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/download/core/DownloadTask;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadTask$1;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadTask;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadTask$1;->val$downLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDatabase(Lcom/mbridge/msdk/foundation/download/database/DownloadModel;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadTask$1;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadTask;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadTask;->access$000(Lcom/mbridge/msdk/foundation/download/core/DownloadTask;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadTask$1;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadTask;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadTask;->access$100(Lcom/mbridge/msdk/foundation/download/core/DownloadTask;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadTask$1;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadTask;

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/download/core/DownloadTask;->access$202(Lcom/mbridge/msdk/foundation/download/core/DownloadTask;Lcom/mbridge/msdk/foundation/download/database/DownloadModel;)Lcom/mbridge/msdk/foundation/download/database/DownloadModel;

    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1b

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadTask$1;->val$downLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method
