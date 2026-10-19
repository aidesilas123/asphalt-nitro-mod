###### Class com.applovin.exoplayer2.common.b.b (com.applovin.exoplayer2.common.b.b)
.class public final Lcom/applovin/exoplayer2/common/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static n(F)I
    .registers 1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->hashCode()I

    move-result p0

    return p0
.end method
