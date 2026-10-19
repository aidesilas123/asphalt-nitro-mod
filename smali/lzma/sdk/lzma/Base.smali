###### Class lzma.sdk.lzma.Base (lzma.sdk.lzma.Base)
.class public Llzma/sdk/lzma/Base;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLenToPosState(I)I
    .registers 2

    add-int/lit8 p0, p0, -0x2

    const/4 v0, 0x4

    if-ge p0, v0, :cond_6

    return p0

    :cond_6
    const/4 p0, 0x3

    return p0
.end method

.method public static stateInit()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static stateIsCharState(I)Z
    .registers 2

    const/4 v0, 0x7

    if-ge p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static stateUpdateChar(I)I
    .registers 2

    const/4 v0, 0x4

    if-ge p0, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/16 v0, 0xa

    if-ge p0, v0, :cond_c

    add-int/lit8 p0, p0, -0x3

    return p0

    :cond_c
    add-int/lit8 p0, p0, -0x6

    return p0
.end method

.method public static stateUpdateMatch(I)I
    .registers 2

    const/4 v0, 0x7

    if-ge p0, v0, :cond_4

    goto :goto_6

    :cond_4
    const/16 v0, 0xa

    :goto_6
    return v0
.end method

.method public static stateUpdateRep(I)I
    .registers 2

    const/4 v0, 0x7

    if-ge p0, v0, :cond_6

    const/16 p0, 0x8

    goto :goto_8

    :cond_6
    const/16 p0, 0xb

    :goto_8
    return p0
.end method

.method public static stateUpdateShortRep(I)I
    .registers 2

    const/4 v0, 0x7

    if-ge p0, v0, :cond_6

    const/16 p0, 0x9

    goto :goto_8

    :cond_6
    const/16 p0, 0xb

    :goto_8
    return p0
.end method
