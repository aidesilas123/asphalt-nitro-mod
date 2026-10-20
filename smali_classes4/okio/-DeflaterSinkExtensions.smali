###### Class okio.DeflaterSinkExtensions (okio.-DeflaterSinkExtensions)
.class public final Lokio/-DeflaterSinkExtensions;
.super Ljava/lang/Object;
.source "DeflaterSink.kt"


# direct methods
.method public static final deflate(Lokio/w;Ljava/util/zip/Deflater;)Lokio/h;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/h;

    invoke-direct {v0, p0, p1}, Lokio/h;-><init>(Lokio/w;Ljava/util/zip/Deflater;)V

    return-object v0
.end method

.method public static synthetic deflate$default(Lokio/w;Ljava/util/zip/Deflater;ILjava/lang/Object;)Lokio/h;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_9

    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    :cond_9
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "deflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lokio/h;

    invoke-direct {p2, p0, p1}, Lokio/h;-><init>(Lokio/w;Ljava/util/zip/Deflater;)V

    return-object p2
.end method
