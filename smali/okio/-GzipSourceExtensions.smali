###### Class okio.GzipSourceExtensions (okio.-GzipSourceExtensions)
.class public final Lokio/-GzipSourceExtensions;
.super Ljava/lang/Object;
.source "GzipSource.kt"


# direct methods
.method public static final gzip(Lokio/y;)Lokio/m;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/m;

    invoke-direct {v0, p0}, Lokio/m;-><init>(Lokio/y;)V

    return-object v0
.end method
