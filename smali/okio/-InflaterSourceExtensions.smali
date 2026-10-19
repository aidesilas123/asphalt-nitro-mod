###### Class okio.InflaterSourceExtensions (okio.-InflaterSourceExtensions)
.class public final Lokio/-InflaterSourceExtensions;
.super Ljava/lang/Object;
.source "InflaterSource.kt"


# direct methods
.method public static final inflate(Lokio/y;Ljava/util/zip/Inflater;)Lokio/n;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/n;

    invoke-direct {v0, p0, p1}, Lokio/n;-><init>(Lokio/y;Ljava/util/zip/Inflater;)V

    return-object v0
.end method

.method public static synthetic inflate$default(Lokio/y;Ljava/util/zip/Inflater;ILjava/lang/Object;)Lokio/n;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_9

    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    :cond_9
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lokio/n;

    invoke-direct {p2, p0, p1}, Lokio/n;-><init>(Lokio/y;Ljava/util/zip/Inflater;)V

    return-object p2
.end method
