###### Class com.mbridge.msdk.thrid.okio.Pipe (com.mbridge.msdk.thrid.okio.Pipe)
.class public final Lcom/mbridge/msdk/thrid/okio/Pipe;
.super Ljava/lang/Object;
.source "Pipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;,
        Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;
    }
.end annotation


# instance fields
.field final buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

.field final maxBufferSize:J

.field private final sink:Lcom/mbridge/msdk/thrid/okio/Sink;

.field sinkClosed:Z

.field private final source:Lcom/mbridge/msdk/thrid/okio/Source;

.field sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;-><init>(Lcom/mbridge/msdk/thrid/okio/Pipe;)V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Pipe;->sink:Lcom/mbridge/msdk/thrid/okio/Sink;

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;-><init>(Lcom/mbridge/msdk/thrid/okio/Pipe;)V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Pipe;->source:Lcom/mbridge/msdk/thrid/okio/Source;

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_21

    iput-wide p1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe;->maxBufferSize:J

    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final sink()Lcom/mbridge/msdk/thrid/okio/Sink;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Pipe;->sink:Lcom/mbridge/msdk/thrid/okio/Sink;

    return-object v0
.end method

.method public final source()Lcom/mbridge/msdk/thrid/okio/Source;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Pipe;->source:Lcom/mbridge/msdk/thrid/okio/Source;

    return-object v0
.end method

###### Class com.mbridge.msdk.thrid.okio.Pipe.PipeSink (com.mbridge.msdk.thrid.okio.Pipe$PipeSink)
.class final Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSink"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

.field final timeout:Lcom/mbridge/msdk/thrid/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okio/Pipe;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/mbridge/msdk/thrid/okio/Timeout;

    invoke-direct {p1}, Lcom/mbridge/msdk/thrid/okio/Timeout;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->timeout:Lcom/mbridge/msdk/thrid/okio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-boolean v2, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->sinkClosed:Z

    if-eqz v2, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget-boolean v2, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->sourceClosed:Z

    if-eqz v2, :cond_26

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1e

    goto :goto_26

    :cond_1e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->sinkClosed:Z

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-boolean v2, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->sinkClosed:Z

    if-nez v2, :cond_26

    iget-boolean v2, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->sourceClosed:Z

    if-eqz v2, :cond_24

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1c

    goto :goto_24

    :cond_1c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public timeout()Lcom/mbridge/msdk/thrid/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->timeout:Lcom/mbridge/msdk/thrid/okio/Timeout;

    return-object v0
.end method

.method public write(Lcom/mbridge/msdk/thrid/okio/Buffer;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-boolean v1, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->sinkClosed:Z

    if-nez v1, :cond_4c

    :goto_b
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_4a

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-boolean v4, v3, Lcom/mbridge/msdk/thrid/okio/Pipe;->sourceClosed:Z

    if-nez v4, :cond_42

    iget-wide v4, v3, Lcom/mbridge/msdk/thrid/okio/Pipe;->maxBufferSize:J

    iget-object v3, v3, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v3, v4, v1

    if-nez v3, :cond_2e

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->timeout:Lcom/mbridge/msdk/thrid/okio/Timeout;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v2, v2, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/thrid/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_b

    :cond_2e
    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v3, v3, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v3, p1, v1, v2}, Lcom/mbridge/msdk/thrid/okio/Buffer;->write(Lcom/mbridge/msdk/thrid/okio/Buffer;J)V

    sub-long/2addr p2, v1

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSink;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_b

    :cond_42
    new-instance p1, Ljava/io/IOException;

    const-string p2, "source is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    monitor-exit v0

    return-void

    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_54

    throw p1
.end method

###### Class com.mbridge.msdk.thrid.okio.Pipe.PipeSource (com.mbridge.msdk.thrid.okio.Pipe$PipeSource)
.class final Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

.field final timeout:Lcom/mbridge/msdk/thrid/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okio/Pipe;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/mbridge/msdk/thrid/okio/Timeout;

    invoke-direct {p1}, Lcom/mbridge/msdk/thrid/okio/Timeout;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->timeout:Lcom/mbridge/msdk/thrid/okio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->sourceClosed:Z

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public read(Lcom/mbridge/msdk/thrid/okio/Buffer;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-boolean v1, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->sourceClosed:Z

    if-nez v1, :cond_3c

    :goto_b
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2b

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-boolean v2, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->sinkClosed:Z

    if-eqz v2, :cond_23

    const-wide/16 p1, -0x1

    monitor-exit v0

    return-wide p1

    :cond_23
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->timeout:Lcom/mbridge/msdk/thrid/okio/Timeout;

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/thrid/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_b

    :cond_2b
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/Buffer;->read(Lcom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->this$0:Lcom/mbridge/msdk/thrid/okio/Pipe;

    iget-object p3, p3, Lcom/mbridge/msdk/thrid/okio/Pipe;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-wide p1

    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public timeout()Lcom/mbridge/msdk/thrid/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okio/Pipe$PipeSource;->timeout:Lcom/mbridge/msdk/thrid/okio/Timeout;

    return-object v0
.end method
