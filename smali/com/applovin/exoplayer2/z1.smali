###### Class com.applovin.exoplayer2.z1 (com.applovin.exoplayer2.z1)
.class public final synthetic Lcom/applovin/exoplayer2/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(III)I
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method public static b(I)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/applovin/exoplayer2/z1;->a(III)I

    move-result p0

    return p0
.end method

.method public static c(I)I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static d(I)I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    and-int/lit8 p0, p0, 0x20

    return p0
.end method
