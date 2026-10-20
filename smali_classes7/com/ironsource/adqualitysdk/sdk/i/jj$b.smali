###### Class com.ironsource.adqualitysdk.sdk.i.jj.b (com.ironsource.adqualitysdk.sdk.i.jj$b)
.class public final enum Lcom/ironsource/adqualitysdk/sdk/i/jj$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adqualitysdk/sdk/i/jj$b;",
        ">;"
    }
.end annotation


# static fields
.field private static enum a:Lcom/ironsource/adqualitysdk/sdk/i/jj$b; = null

.field private static final synthetic b:[Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

.field private static c:[C = null

.field private static d:C = '\u0000'

.field private static e:I = 0x0

.field private static f:I = 0x1

.field public static final enum ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

.field public static final enum ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/jj$b;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->e()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x73

    int-to-byte v3, v3

    const/16 v4, 0x30

    invoke-static {v1, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    const/4 v6, 0x3

    rsub-int/lit8 v5, v5, 0x3

    const-string v7, "\u0007\u0008\u0007\t"

    invoke-static {v3, v7, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    invoke-static {v2, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x48

    int-to-byte v3, v3

    invoke-static {v1, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x10

    const-string v4, "\u0005\u000e\u0010\u000b\r\u000e\u000c\u000b\t\u0007\u000e\u0013\u0010\n\u0012\u0006\u009a"

    invoke-static {v3, v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x35

    int-to-byte v4, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    rsub-int/lit8 v5, v5, 0x16

    const-string v7, "\r\u0005\n\u0012\u000c\u0010\t\r\u0005\u0008\u0013\u0012\u0018\u0013\u0014\u0000\u000e\u0007\t\u0007\u0005\r"

    invoke-static {v4, v7, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v1, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    new-array v4, v6, [Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    aput-object v6, v4, v2

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    sput-object v4, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->b:[Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->e:I

    add-int/2addr v0, v3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->f:I

    rem-int/2addr v0, v5

    if-nez v0, :cond_7e

    const/4 v2, 0x1

    :cond_7e
    if-nez v2, :cond_81

    return-void

    :cond_81
    const/4 v0, 0x0

    :try_start_82
    throw v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_83

    :catchall_83
    move-exception v0

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->c:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->d:C

    new-array v3, p2, [C

    rem-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_1d

    add-int/lit8 p2, p2, -0x1

    aget-char v4, p1, p2

    sub-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v3, p2

    :cond_1d
    const/4 v4, 0x1

    if-le p2, v4, :cond_df

    const/4 v5, 0x0

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    :goto_23
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    if-ge v5, p2, :cond_df

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    aget-char v5, p1, v5

    sput-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    if-ne v5, v6, :cond_4b

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/2addr v5, v4

    sget-char v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_d7

    :cond_4b
    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻐ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    div-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget-char v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾒ:C

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    if-ne v5, v6, :cond_8e

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_8e
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    if-ne v5, v6, :cond_bd

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    goto :goto_d7

    :cond_bd
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻛ:I

    mul-int v5, v5, v2

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﻏ:I

    add-int/2addr v5, v6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﾇ:I

    mul-int v6, v6, v2

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﮐ:I

    add-int/2addr v6, v7

    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v5, v1, v6

    aput-char v5, v3, v7

    :goto_d7
    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/g;->ｋ:I

    goto/16 :goto_23

    :cond_df
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_b .. :try_end_e5} :catchall_e6

    return-object p0

    :catchall_e6
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static e()V
    .registers 1

    const/4 v0, 0x5

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->d:C

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->c:[C

    return-void

    nop

    :array_e
    .array-data 2
        0x6es
        0x6fs
        0x61s
        0x74s
        0x6cs
        0x72s
        0x4es
        0x4fs
        0x45s
        0x54s
        0x52s
        0x41s
        0x53s
        0x50s
        0x5fs
        0x4cs
        0x59s
        0x43s
        0x55s
        0x48s
        0x49s
        0x70s
        0x71s
        0x73s
        0x75s
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/jj$b;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->f:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->e:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->f:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xf

    if-eqz v0, :cond_23

    const/16 v0, 0x18

    goto :goto_25

    :cond_23
    const/16 v0, 0xf

    :goto_25
    if-ne v0, v1, :cond_28

    return-object p0

    :cond_28
    const/4 p0, 0x0

    :try_start_29
    throw p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    throw p0
.end method

.method public static values()[Lcom/ironsource/adqualitysdk/sdk/i/jj$b;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->f:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->e:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->b:[Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->f:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-nez v1, :cond_24

    return-object v0

    :cond_24
    const/4 v0, 0x0

    :try_start_25
    throw v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    throw v0
.end method

.method public static ｋ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/jj$b;
    .registers 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d2

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->e:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->f:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    const/16 v3, 0x2d

    if-nez v0, :cond_18

    const/16 v0, 0x2d

    goto :goto_1a

    :cond_18
    const/16 v0, 0x42

    :goto_1a
    if-eq v0, v3, :cond_cc

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v3, 0xe3a

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v0, v3, :cond_83

    const v3, 0x17a99

    const-string v7, ""

    if-eq v0, v3, :cond_56

    const v3, 0x1aacd

    if-eq v0, v3, :cond_35

    goto/16 :goto_ae

    :cond_35
    invoke-static {v7, v6, v6}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/lit8 v0, v0, 0x31

    int-to-byte v0, v0

    const/16 v3, 0x30

    invoke-static {v7, v3, v6, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x2

    const-string v7, "\u0001\u0002\u009f"

    invoke-static {v0, v7, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ae

    const/4 v5, 0x0

    goto :goto_ae

    :cond_56
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x3e

    int-to-byte v0, v0

    invoke-static {v7, v7, v6, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x3

    const-string v7, "\u0003\u0004\u00aa"

    invoke-static {v0, v7, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_76

    const/4 v6, 0x1

    :cond_76
    if-eqz v6, :cond_ae

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->f:I

    add-int/lit8 p0, p0, 0x49

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->e:I

    rem-int/2addr p0, v2

    const/4 v5, 0x1

    goto :goto_ae

    :cond_83
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x49

    int-to-byte v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x2

    const-string v6, "\t\u0000"

    invoke-static {v0, v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->a(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ae

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->e:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->f:I

    rem-int/2addr p0, v2

    const/4 v5, 0x2

    :cond_ae
    :goto_ae
    if-eqz v5, :cond_bb

    if-eq v5, v4, :cond_b8

    if-eq v5, v2, :cond_b5

    goto :goto_d2

    :cond_b5
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    return-object p0

    :cond_b8
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    return-object p0

    :cond_bb
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/jj$b;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->f:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/jj$b;->e:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_c9

    return-object p0

    :cond_c9
    :try_start_c9
    throw v1
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_ca

    :catchall_ca
    move-exception p0

    throw p0

    :cond_cc
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    :try_start_cf
    throw v1
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_d0

    :catchall_d0
    move-exception p0

    throw p0

    :cond_d2
    :goto_d2
    return-object v1
.end method
