###### Class com.tapjoy.internal.g7 (com.tapjoy.internal.g7)
.class public abstract Lcom/tapjoy/internal/g7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/tapjoy/internal/y2;->a:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_7
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    :goto_17
    invoke-interface {p0, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_26

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_2e

    invoke-static {v1}, Lcom/tapjoy/internal/l8;->a(Ljava/io/Closeable;)V

    return-object p0

    :cond_26
    :try_start_26
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2e

    goto :goto_17

    :catchall_2e
    move-exception p0

    invoke-static {v1}, Lcom/tapjoy/internal/l8;->a(Ljava/io/Closeable;)V

    throw p0
.end method
