###### Class com.mbridge.msdk.thrid.okhttp.ResponseBody.BomAwareReader (com.mbridge.msdk.thrid.okhttp.ResponseBody$BomAwareReader)
.class final Lcom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;
.super Ljava/io/Reader;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BomAwareReader"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private closed:Z

.field private delegate:Ljava/io/Reader;

.field private final source:Lcom/mbridge/msdk/thrid/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okio/BufferedSource;Ljava/nio/charset/Charset;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->source:Lcom/mbridge/msdk/thrid/okio/BufferedSource;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->closed:Z

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_10

    :cond_b
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->source:Lcom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/Source;->close()V

    :goto_10
    return-void
.end method

.method public read([CII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->closed:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->source:Lcom/mbridge/msdk/thrid/okio/BufferedSource;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/Util;->bomAwareCharset(Lcom/mbridge/msdk/thrid/okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->source:Lcom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v2}, Lcom/mbridge/msdk/thrid/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    move-object v0, v1

    :cond_1e
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1

    :cond_23
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
