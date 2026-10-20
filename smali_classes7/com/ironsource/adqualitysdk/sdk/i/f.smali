###### Class com.json.adqualitysdk.sdk.i.f (com.ironsource.adqualitysdk.sdk.i.f)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/f;
.super Ljava/lang/Object;


# static fields
.field public static ﻐ:I

.field public static ｋ:I

.field public static final ﾇ:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    return-void
.end method

.method public static ﾇ(J[CI)[C
    .registers 15

    array-length v0, p2

    new-array v1, v0, [C

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    :goto_7
    array-length v6, p2

    if-ge v3, v6, :cond_28

    ushr-long v6, p0, v3

    const-wide/16 v8, 0x1

    and-long/2addr v6, v8

    int-to-long v8, p3

    cmp-long v10, v6, v8

    if-nez v10, :cond_16

    if-lt v4, v2, :cond_1f

    :cond_16
    if-ge v5, v0, :cond_1f

    aget-char v6, p2, v3

    aput-char v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_1f
    aget-char v6, p2, v3

    aput-char v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_28
    return-object v1
.end method
