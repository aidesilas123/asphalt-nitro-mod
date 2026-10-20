###### Class okio.Okio__OkioKt (okio.Okio__OkioKt)
.class final synthetic Lokio/Okio__OkioKt;
.super Ljava/lang/Object;
.source "Okio.kt"


# direct methods
.method public static final blackhole()Lokio/w;
    .registers 1

    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    return-object v0
.end method

.method public static final buffer(Lokio/w;)Lokio/d;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/RealBufferedSink;

    invoke-direct {v0, p0}, Lokio/RealBufferedSink;-><init>(Lokio/w;)V

    return-object v0
.end method

.method public static final buffer(Lokio/y;)Lokio/e;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, p0}, Lokio/RealBufferedSource;-><init>(Lokio/y;)V

    return-object v0
.end method

.method public static final use(Ljava/io/Closeable;Lkotlin/jvm/b/l;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/b/l<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-interface {p1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    :goto_f
    if-nez p0, :cond_12

    goto :goto_1e

    :cond_12
    :try_start_12
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1e

    :catchall_16
    move-exception p0

    if-nez v0, :cond_1b

    move-object v0, p0

    goto :goto_1e

    :cond_1b
    invoke-static {v0, p0}, Lkotlin/c;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1e
    if-nez v0, :cond_24

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    :cond_24
    throw v0
.end method
