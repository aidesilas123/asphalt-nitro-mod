###### Class com.mbridge.msdk.thrid.okhttp.internal.cache2.Relay (com.mbridge.msdk.thrid.okhttp.internal.cache2.Relay)
.class final Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "Relay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;
    }
.end annotation


# static fields
.field private static final FILE_HEADER_SIZE:J = 0x20L

.field static final PREFIX_CLEAN:Lcom/mbridge/msdk/thrid/okio/ByteString;

.field static final PREFIX_DIRTY:Lcom/mbridge/msdk/thrid/okio/ByteString;

.field private static final SOURCE_FILE:I = 0x2

.field private static final SOURCE_UPSTREAM:I = 0x1


# instance fields
.field final buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

.field final bufferMaxSize:J

.field complete:Z

.field file:Ljava/io/RandomAccessFile;

.field private final metadata:Lcom/mbridge/msdk/thrid/okio/ByteString;

.field sourceCount:I

.field upstream:Lcom/mbridge/msdk/thrid/okio/Source;

.field final upstreamBuffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

.field upstreamPos:J

.field upstreamReader:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "OkHttp cache v1\n"

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->PREFIX_CLEAN:Lcom/mbridge/msdk/thrid/okio/ByteString;

    const-string v0, "OkHttp DIRTY :(\n"

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->PREFIX_DIRTY:Lcom/mbridge/msdk/thrid/okio/ByteString;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lcom/mbridge/msdk/thrid/okio/Source;JLcom/mbridge/msdk/thrid/okio/ByteString;J)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamBuffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstream:Lcom/mbridge/msdk/thrid/okio/Source;

    if-nez p2, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-boolean p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->complete:Z

    iput-wide p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamPos:J

    iput-object p5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->metadata:Lcom/mbridge/msdk/thrid/okio/ByteString;

    iput-wide p6, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->bufferMaxSize:J

    return-void
.end method

.method public static edit(Ljava/io/File;Lcom/mbridge/msdk/thrid/okio/Source;Lcom/mbridge/msdk/thrid/okio/ByteString;J)Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v8, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lcom/mbridge/msdk/thrid/okio/Source;JLcom/mbridge/msdk/thrid/okio/ByteString;J)V

    const-wide/16 p1, 0x0

    invoke-virtual {v8, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    sget-object v2, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->PREFIX_DIRTY:Lcom/mbridge/msdk/thrid/okio/ByteString;

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->writeHeader(Lcom/mbridge/msdk/thrid/okio/ByteString;JJ)V

    return-object p0
.end method

.method public static read(Ljava/io/File;)Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x20

    move-object v2, p0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;->read(JLcom/mbridge/msdk/thrid/okio/Buffer;J)V

    sget-object v2, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->PREFIX_CLEAN:Lcom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/mbridge/msdk/thrid/okio/Buffer;->readByteString(J)Lcom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/thrid/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;->readLong()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;->readLong()J

    move-result-wide v6

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    const-wide/16 v2, 0x20

    add-long v3, v8, v2

    move-object v2, p0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;->read(JLcom/mbridge/msdk/thrid/okio/Buffer;J)V

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;->readByteString()Lcom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v5

    new-instance p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lcom/mbridge/msdk/thrid/okio/Source;JLcom/mbridge/msdk/thrid/okio/ByteString;J)V

    return-object p0

    :cond_54
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unreadable cache file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeHeader(Lcom/mbridge/msdk/thrid/okio/ByteString;JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v3}, Lcom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    invoke-virtual {v3, p1}, Lcom/mbridge/msdk/thrid/okio/Buffer;->write(Lcom/mbridge/msdk/thrid/okio/ByteString;)Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v3, p2, p3}, Lcom/mbridge/msdk/thrid/okio/Buffer;->writeLong(J)Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v3, p4, p5}, Lcom/mbridge/msdk/thrid/okio/Buffer;->writeLong(J)Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 p3, 0x20

    cmp-long p5, p1, p3

    if-nez p5, :cond_2b

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0x20

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;->write(JLcom/mbridge/msdk/thrid/okio/Buffer;J)V

    return-void

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private writeMetadata(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v3}, Lcom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->metadata:Lcom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {v3, v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;->write(Lcom/mbridge/msdk/thrid/okio/ByteString;)Lcom/mbridge/msdk/thrid/okio/Buffer;

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x20

    add-long/2addr v1, p1

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->metadata:Lcom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;->write(JLcom/mbridge/msdk/thrid/okio/Buffer;J)V

    return-void
.end method


# virtual methods
.method commit(J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->writeMetadata(J)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    sget-object v3, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->PREFIX_CLEAN:Lcom/mbridge/msdk/thrid/okio/ByteString;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->metadata:Lcom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->writeHeader(Lcom/mbridge/msdk/thrid/okio/ByteString;JJ)V

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_26
    iput-boolean p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->complete:Z

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_32

    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstream:Lcom/mbridge/msdk/thrid/okio/Source;

    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstream:Lcom/mbridge/msdk/thrid/okio/Source;

    return-void

    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method isClosed()Z
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public metadata()Lcom/mbridge/msdk/thrid/okio/ByteString;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->metadata:Lcom/mbridge/msdk/thrid/okio/ByteString;

    return-object v0
.end method

.method public newSource()Lcom/mbridge/msdk/thrid/okio/Source;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_8
    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->sourceCount:I

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_15

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;)V

    return-object v0

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

###### Class com.mbridge.msdk.thrid.okhttp.internal.cache2.Relay.RelaySource (com.mbridge.msdk.thrid.okhttp.internal.cache2.Relay$RelaySource)
.class Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "Relay.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

.field private final timeout:Lcom/mbridge/msdk/thrid/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/Timeout;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okio/Timeout;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->timeout:Lcom/mbridge/msdk/thrid/okio/Timeout;

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iget v3, v2, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->sourceCount:I

    if-nez v3, :cond_1a

    iget-object v3, v2, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    iput-object v0, v2, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    move-object v0, v3

    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_21

    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_20
    return-void

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public read(Lcom/mbridge/msdk/thrid/okio/Buffer;J)J
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;

    if-eqz v0, :cond_119

    iget-object v4, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    monitor-enter v4

    :goto_b
    :try_start_b
    iget-wide v5, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iget-wide v7, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamPos:J

    const/4 v9, 0x2

    const-wide/16 v10, -0x1

    cmp-long v12, v5, v7

    if-nez v12, :cond_31

    iget-boolean v5, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->complete:Z

    if-eqz v5, :cond_1e

    monitor-exit v4

    return-wide v10

    :cond_1e
    iget-object v5, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-eqz v5, :cond_28

    iget-object v5, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->timeout:Lcom/mbridge/msdk/thrid/okio/Timeout;

    invoke-virtual {v5, v0}, Lcom/mbridge/msdk/thrid/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_b

    :cond_28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    const/4 v0, 0x1

    monitor-exit v4

    goto :goto_41

    :cond_31
    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v5

    sub-long v5, v7, v5

    iget-wide v12, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v0, v12, v5

    if-gez v0, :cond_fc

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_b .. :try_end_40} :catchall_116

    const/4 v0, 0x2

    :goto_41
    const-wide/16 v4, 0x20

    if-ne v0, v9, :cond_5e

    iget-wide v9, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long/2addr v7, v9

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v9, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;

    iget-wide v6, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long v10, v6, v4

    move-object/from16 v12, p1

    move-wide v13, v2

    invoke-virtual/range {v9 .. v14}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;->read(JLcom/mbridge/msdk/thrid/okio/Buffer;J)V

    iget-wide v4, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->sourcePos:J

    return-wide v2

    :cond_5e
    const/4 v6, 0x0

    :try_start_5f
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iget-object v9, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstream:Lcom/mbridge/msdk/thrid/okio/Source;

    iget-object v12, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamBuffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v13, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v9, v12, v13, v14}, Lcom/mbridge/msdk/thrid/okio/Source;->read(Lcom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-nez v0, :cond_83

    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    invoke-virtual {v0, v7, v8}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->commit(J)V
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_ec

    iget-object v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    monitor-enter v2

    :try_start_77
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iput-object v6, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-wide v10

    :catchall_80
    move-exception v0

    monitor-exit v2
    :try_end_82
    .catchall {:try_start_77 .. :try_end_82} :catchall_80

    throw v0

    :cond_83
    :try_start_83
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iget-object v14, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamBuffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    const-wide/16 v16, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v18, v2

    invoke-virtual/range {v14 .. v19}, Lcom/mbridge/msdk/thrid/okio/Buffer;->copyTo(Lcom/mbridge/msdk/thrid/okio/Buffer;JJ)Lcom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v9, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v9, v2

    iput-wide v9, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v15, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;

    add-long v16, v7, v4

    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamBuffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;->clone()Lcom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v18

    move-wide/from16 v19, v12

    invoke-virtual/range {v15 .. v20}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/FileOperator;->write(JLcom/mbridge/msdk/thrid/okio/Buffer;J)V

    iget-object v4, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    monitor-enter v4
    :try_end_ad
    .catchall {:try_start_83 .. :try_end_ad} :catchall_ec

    :try_start_ad
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iget-object v5, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamBuffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v5, v0, v12, v13}, Lcom/mbridge/msdk/thrid/okio/Buffer;->write(Lcom/mbridge/msdk/thrid/okio/Buffer;J)V

    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v7

    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iget-wide v9, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->bufferMaxSize:J

    cmp-long v5, v7, v9

    if-lez v5, :cond_d4

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v7

    iget-object v5, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iget-wide v9, v5, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->bufferMaxSize:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Lcom/mbridge/msdk/thrid/okio/Buffer;->skip(J)V

    :cond_d4
    iget-object v5, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iget-wide v7, v5, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamPos:J

    add-long/2addr v7, v12

    iput-wide v7, v5, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamPos:J

    monitor-exit v4
    :try_end_dc
    .catchall {:try_start_ad .. :try_end_dc} :catchall_e9

    monitor-enter v5

    :try_start_dd
    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iput-object v6, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    return-wide v2

    :catchall_e6
    move-exception v0

    monitor-exit v5
    :try_end_e8
    .catchall {:try_start_dd .. :try_end_e8} :catchall_e6

    throw v0

    :catchall_e9
    move-exception v0

    :try_start_ea
    monitor-exit v4
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    :try_start_eb
    throw v0
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ec

    :catchall_ec
    move-exception v0

    iget-object v2, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    monitor-enter v2

    :try_start_f0
    iget-object v3, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iput-object v6, v3, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_f8
    .catchall {:try_start_f0 .. :try_end_f8} :catchall_f9

    throw v0

    :catchall_f9
    move-exception v0

    :try_start_fa
    monitor-exit v2
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v0

    :cond_fc
    sub-long/2addr v7, v12

    :try_start_fd
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v0, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->this$0:Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;

    iget-object v9, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay;->buffer:Lcom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v7, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v11, v7, v5

    move-object/from16 v10, p1

    move-wide v13, v2

    invoke-virtual/range {v9 .. v14}, Lcom/mbridge/msdk/thrid/okio/Buffer;->copyTo(Lcom/mbridge/msdk/thrid/okio/Buffer;JJ)Lcom/mbridge/msdk/thrid/okio/Buffer;

    iget-wide v5, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v5, v2

    iput-wide v5, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->sourcePos:J

    monitor-exit v4

    return-wide v2

    :catchall_116
    move-exception v0

    monitor-exit v4
    :try_end_118
    .catchall {:try_start_fd .. :try_end_118} :catchall_116

    throw v0

    :cond_119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lcom/mbridge/msdk/thrid/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache2/Relay$RelaySource;->timeout:Lcom/mbridge/msdk/thrid/okio/Timeout;

    return-object v0
.end method
