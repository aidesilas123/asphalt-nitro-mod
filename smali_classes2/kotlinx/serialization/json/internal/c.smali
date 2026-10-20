###### Class kotlinx.serialization.json.internal.c (kotlinx.serialization.json.internal.c)
.class public synthetic Lkotlinx/serialization/json/internal/c;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(II)Ljava/lang/String;
    .registers 6

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
