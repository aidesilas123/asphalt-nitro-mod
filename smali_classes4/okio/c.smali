###### Class okio.c (okio.c)
.class final Lokio/c;
.super Ljava/lang/Object;
.source "Okio.kt"

# interfaces
.implements Lokio/w;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public n(Lokio/Buffer;J)V
    .registers 5

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method public timeout()Lokio/z;
    .registers 2

    sget-object v0, Lokio/z;->b:Lokio/z;

    return-object v0
.end method
