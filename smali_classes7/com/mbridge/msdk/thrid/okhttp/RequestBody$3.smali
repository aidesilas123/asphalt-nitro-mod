###### Class com.mbridge.msdk.thrid.okhttp.RequestBody.AnonymousClass3 (com.mbridge.msdk.thrid.okhttp.RequestBody$3)
.class final Lcom/mbridge/msdk/thrid/okhttp/RequestBody$3;
.super Lcom/mbridge/msdk/thrid/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okhttp/RequestBody;->create(Lcom/mbridge/msdk/thrid/okhttp/MediaType;Ljava/io/File;)Lcom/mbridge/msdk/thrid/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Lcom/mbridge/msdk/thrid/okhttp/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/MediaType;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/RequestBody$3;->val$contentType:Lcom/mbridge/msdk/thrid/okhttp/MediaType;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/mbridge/msdk/thrid/okhttp/MediaType;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/RequestBody$3;->val$contentType:Lcom/mbridge/msdk/thrid/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/mbridge/msdk/thrid/okio/BufferedSink;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v1}, Lcom/mbridge/msdk/thrid/okio/Okio;->source(Ljava/io/File;)Lcom/mbridge/msdk/thrid/okio/Source;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/thrid/okio/BufferedSink;->writeAll(Lcom/mbridge/msdk/thrid/okio/Source;)J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_e
    move-exception p1

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method
