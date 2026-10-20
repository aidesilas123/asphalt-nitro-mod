###### Class com.ironsource.adqualitysdk.sdk.i.bt.m0 (com.ironsource.adqualitysdk.sdk.i.bt$m0)
.class Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;
.super Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;",
        "Lcom/ironsource/adqualitysdk/sdk/i/gy<",
        "Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;",
        ">;"
    }
.end annotation


# static fields
.field private static a:I = 0x4b

.field private static b:[C = null

.field private static c:J = 0x0L

.field private static d:I = 0x0

.field private static e:I = 0x1


# instance fields
.field private f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

.field private g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/bt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x54

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->b:[C

    const-wide v0, 0x78b4381abd85be19L    # 2.7345076758373956E273

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->c:J

    return-void

    nop

    :array_12
    .array-data 2
        0x3301s
        -0x72d9s
        0x4f01s
        0x979s
        -0x34a4s
        -0x7a95s
        0x47a5s
        0x1b4s
        -0x3c0as
        -0x623bs
        0x5fd9s
        0x1821s
        -0x25ebs
        -0x6b89s
        0x567bs
        0x100es
        -0x2d58s
        -0x5370s
        0x6ed4s
        0x28e8s
        -0x1510s
        -0x54d2s
        0x6510s
        0x271as
        -0x1e85s
        -0x5cbds
        0x7db9s
        0x45d0s
        -0x40as
        0x39d0s
        0x7fa8s
        -0x4273s
        -0xc46s
        0x3174s
        0x7765s
        -0x4ad9s
        -0x14ecs
        0x2908s
        0x6ef0s
        -0x533cs
        -0x1d5as
        0x20aas
        0x66dfs
        -0x5b87s
        -0x25bfs
        0x1805s
        0x5e39s
        -0x63cas
        -0x221es
        0x13c4s
        0x51ebs
        -0x6845s
        -0x2a6as
        0xb6fs
        0x494ds
        -0x7081s
        -0x32c3s
        0x30cs
        0xf0s
        -0x412as
        0x7cf0s
        0x3a88s
        -0x753s
        -0x4966s
        0x7454s
        0x3245s
        -0xff9s
        -0x51ccs
        0x6c28s
        0x2bd0s
        -0x161cs
        -0x587as
        0x658as
        0x23ffs
        -0x1ea7s
        -0x609fs
        0x5d28s
        0x1b18s
        -0x26cds
        -0x6723s
        0x56e5s
        0x14d8s
        -0x2d72s
        -0x6f59s
    .end array-data
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/bt;Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;Lcom/ironsource/adqualitysdk/sdk/i/ch;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->h:Lcom/ironsource/adqualitysdk/sdk/i/bt;

    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;-><init>()V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    return-void
.end method

.method private a()Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2b

    if-eqz v0, :cond_11

    const/16 v0, 0x2b

    goto :goto_13

    :cond_11
    const/16 v0, 0x18

    :goto_13
    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    goto :goto_1e

    :cond_18
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    const/16 v1, 0x3e

    :try_start_1c
    div-int/lit8 v1, v1, 0x0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    :goto_1e
    return-object v0

    :catchall_1f
    move-exception v0

    throw v0
.end method

.method private static b(IZIILjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    new-array v1, p3, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_10
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge v3, p3, :cond_2f

    aget-char v3, p4, v3

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    add-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v1, v3

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    aget-char v4, v1, v3

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->a:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_10

    :cond_2f
    if-lez p2, :cond_46

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    new-array p0, p3, [C

    invoke-static {v1, v2, p0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, v2, v1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p3, p2

    invoke-static {p0, p2, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    if-eqz p1, :cond_5e

    new-array p0, p3, [C

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_4c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge p1, p3, :cond_5d

    sub-int p2, p3, p1

    add-int/lit8 p2, p2, -0x1

    aget-char p2, v1, p2

    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_4c

    :cond_5d
    move-object v1, p0

    :cond_5e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_65

    return-object p0

    :catchall_65
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c(IIC)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ｋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-array v1, p0, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    :goto_8
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    if-ge v2, p0, :cond_24

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->b:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->c:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    goto :goto_8

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    return-object p0

    :catchall_2b
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onAdClicked()V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->h:Lcom/ironsource/adqualitysdk/sdk/i/bt;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    add-int/lit16 v2, v2, 0xac

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/16 v9, 0x41

    const-string v10, "\u0004\n\u0002\u0008\u000b\uffe2\u0003\uffe0\r\u000e\uffcd\u0011\u0004\r\u0004\u0013\u0012\u0008\uffeb\u0003\uffe0\u000e\u0004\u0003\u0008\ufff5\u0003"

    cmp-long v11, v5, v7

    add-int/lit8 v11, v11, 0x1a

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v5

    int-to-byte v5, v5

    add-int/lit8 v5, v5, 0x1c

    invoke-static {v2, v3, v11, v5, v10}, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_41

    const/16 v1, 0x43

    goto :goto_43

    :cond_41
    const/16 v1, 0x41

    :goto_43
    if-eq v1, v9, :cond_52

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdClicked()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    rem-int/lit8 v0, v0, 0x2

    :cond_52
    return-void
.end method

.method public onAdDidReachEnd()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->h:Lcom/ironsource/adqualitysdk/sdk/i/bt;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    add-int/lit8 v2, v2, 0x1f

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x1b

    const/16 v4, 0x30

    invoke-static {v4}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v4

    rsub-int v4, v4, 0x45b6

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->c(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    const/16 v1, 0x3f

    if-eqz v0, :cond_34

    const/16 v2, 0x3f

    goto :goto_36

    :cond_34
    const/16 v2, 0x55

    :goto_36
    if-eq v2, v1, :cond_39

    goto :goto_50

    :cond_39
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdDidReachEnd()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v0, v0, 0x2

    :goto_50
    return-void
.end method

.method public onAdDismissed()V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->h:Lcom/ironsource/adqualitysdk/sdk/i/bt;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x33

    const-string v6, ""

    const-string v7, "\u000b\u0002\u000f\uffcb\u000c\u000b\uffde\u0001\uffe1\u0006\u0010\n\u0006\u0010\u0010\u0002\u0001\ufff3\u0006\u0001\u0002\u000c\uffde\u0001\uffe9\u0006\u0010\u0011\u0002"

    cmpl-float v3, v3, v4

    rsub-int v3, v3, 0xae

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x11

    const/16 v8, 0x30

    invoke-static {v6, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1c

    invoke-static {v3, v2, v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_40

    const/16 v1, 0x37

    goto :goto_42

    :cond_40
    const/16 v1, 0x33

    :goto_42
    if-eq v1, v5, :cond_51

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdDismissed()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v0, v0, 0x2

    :cond_51
    return-void
.end method

.method public onAdDismissed(I)V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->h:Lcom/ironsource/adqualitysdk/sdk/i/bt;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    add-int/lit16 v3, v3, 0xaf

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x6

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x29

    const/4 v6, 0x1

    const-string v7, "\uffdd\u000b\u0001\u0000\u0005\ufff2\u000f\u000f\u0001\u000e\u0003\u000b\u000e\uffec\u0004\u0010\u0005\ufff3\u0000\u0001\u000f\u000f\u0005\t\u000f\u0005\uffe0\u0000\uffdd\n\u000b\uffca\u000e\u0001\n\u0001\u0010\u000f\u0005\uffe8\u0000"

    invoke-static {v3, v6, v4, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x1

    :goto_3f
    if-eq v2, v6, :cond_44

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdDismissed(I)V

    :cond_44
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onAdExpired()V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->h:Lcom/ironsource/adqualitysdk/sdk/i/bt;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, "\u0003\u000c\u0003\u0012\u0011\u0007\uffea\u0002\uffdf\r\u0003\u0002\u0007\ufff4\u0002\u0003\u0010\u0007\u000e\u0016\uffe3\u0002\uffdf\u000c\r\uffcc\u0010"

    cmp-long v10, v2, v4

    rsub-int v2, v10, 0xae

    invoke-static {v7, v7}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v3

    const-wide/16 v10, 0x0

    cmp-long v5, v3, v10

    rsub-int/lit8 v3, v5, 0xd

    const/16 v4, 0x30

    invoke-static {v8, v4, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1a

    invoke-static {v2, v6, v3, v4, v9}, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_43

    const/4 v1, 0x1

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    if-eqz v1, :cond_49

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdExpired()V

    :cond_49
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_56

    goto :goto_57

    :cond_56
    const/4 v6, 0x0

    :goto_57
    if-eqz v6, :cond_5f

    const/16 v0, 0x14

    :try_start_5b
    div-int/2addr v0, v7
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5d

    return-void

    :catchall_5d
    move-exception v0

    throw v0

    :cond_5f
    return-void
.end method

.method public onAdLoadFail(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->h:Lcom/ironsource/adqualitysdk/sdk/i/bt;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v2, 0x30

    const-string v3, ""

    invoke-static {v3, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    rsub-int v2, v2, 0xaa

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "\uffce\u0012\u0005\u000e\u0005\u0014\u0013\t\uffec\u0004\uffe1\u000f\u0005\u0004\t\ufff6\u000c\t\u0001\uffe6\u0004\u0001\u000f\uffec\u0004\uffe1\u000e\u000f"

    cmp-long v10, v3, v5

    add-int/lit8 v10, v10, 0xf

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    rsub-int/lit8 v3, v3, 0x1d

    invoke-static {v2, v8, v10, v3, v9}, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_44

    const/4 v1, 0x0

    goto :goto_45

    :cond_44
    const/4 v1, 0x1

    :goto_45
    if-eqz v1, :cond_48

    goto :goto_5f

    :cond_48
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_56

    const/4 v1, 0x1

    goto :goto_57

    :cond_56
    const/4 v1, 0x0

    :goto_57
    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdLoadFail(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    if-eq v1, v8, :cond_5d

    goto :goto_5f

    :cond_5d
    const/4 p1, 0x5

    :try_start_5e
    div-int/2addr p1, v7
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_60

    :goto_5f
    return-void

    :catchall_60
    move-exception p1

    throw p1
.end method

.method public onAdLoadSuccess()V
    .registers 11

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->h:Lcom/ironsource/adqualitysdk/sdk/i/bt;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int v2, v2, 0xad

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5, v5}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v6

    const/16 v7, 0x3b

    const-string v8, ""

    const-string v9, "\u000c\r\uffcc\u0010\u0003\u000c\u0003\u0012\u0011\u0007\uffea\u0002\uffdf\r\u0003\u0002\u0007\ufff4\u0011\u0011\u0003\u0001\u0001\u0013\ufff1\u0002\uffff\r\uffea\u0002\uffdf"

    cmpl-float v5, v6, v5

    add-int/lit8 v5, v5, 0x12

    invoke-static {v8, v4}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1f

    invoke-static {v2, v3, v5, v6, v9}, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_36

    const/4 v1, 0x5

    goto :goto_38

    :cond_36
    const/16 v1, 0x3b

    :goto_38
    if-eq v1, v7, :cond_47

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdLoadSuccess()V

    :cond_47
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x21

    if-nez v0, :cond_58

    const/16 v0, 0x21

    goto :goto_5a

    :cond_58
    const/16 v0, 0x39

    :goto_5a
    if-eq v0, v1, :cond_5d

    return-void

    :cond_5d
    const/16 v0, 0x38

    :try_start_5f
    div-int/2addr v0, v4
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_61

    return-void

    :catchall_61
    move-exception v0

    throw v0
.end method

.method public onAdSkipped()V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->h:Lcom/ironsource/adqualitysdk/sdk/i/bt;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v2, 0x30

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    add-int/lit16 v2, v2, 0xae

    invoke-static {v4, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v5

    int-to-byte v5, v5

    add-int/lit8 v5, v5, 0x1c

    const/4 v6, 0x1

    const-string v7, "\u0002\uffdf\u000c\r\uffcc\u0010\u0003\u000c\u0003\u0012\u0011\u0007\uffea\u0002\uffdf\r\u0003\u0002\u0007\ufff4\u0002\u0003\u000e\u000e\u0007\t\ufff1"

    invoke-static {v2, v6, v3, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->b(IZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_3c

    const/4 v1, 0x0

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x1

    :goto_3d
    if-eqz v1, :cond_40

    goto :goto_4d

    :cond_40
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdSkipped()V

    :goto_4d
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5a

    const/4 v4, 0x1

    :cond_5a
    if-eq v4, v6, :cond_5d

    return-void

    :cond_5d
    const/4 v0, 0x0

    :try_start_5e
    throw v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v0

    throw v0
.end method

.method public onAdStarted()V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->h:Lcom/ironsource/adqualitysdk/sdk/i/bt;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v6, 0x4b

    const/4 v7, 0x0

    const-string v8, ""

    cmp-long v9, v2, v4

    rsub-int/lit8 v2, v9, 0x1c

    invoke-static {v8, v7, v7}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-static {v7}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    shr-int/lit8 v4, v4, 0x6

    add-int/lit16 v4, v4, 0x3357

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->c(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_40

    const/16 v1, 0x59

    goto :goto_42

    :cond_40
    const/16 v1, 0x4b

    :goto_42
    if-eq v1, v6, :cond_51

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdStarted()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    rem-int/lit8 v0, v0, 0x2

    :cond_51
    return-void
.end method

.method public onLeaveApp()V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->h:Lcom/ironsource/adqualitysdk/sdk/i/bt;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->g:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v2, v2, v3

    rsub-int/lit8 v2, v2, 0x1b

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    rsub-int/lit8 v3, v3, 0x3a

    invoke-static {v5, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v6

    rsub-int v6, v6, 0xa6

    int-to-char v6, v6

    invoke-static {v2, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->c(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->f:Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    if-eqz v0, :cond_3b

    const/4 v1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    if-eq v1, v4, :cond_3f

    goto :goto_5b

    :cond_3f
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4c

    const/4 v5, 0x1

    :cond_4c
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onLeaveApp()V

    if-eq v5, v4, :cond_5c

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v0, v0, 0x2

    :goto_5b
    return-void

    :cond_5c
    const/4 v0, 0x0

    :try_start_5d
    throw v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v0

    throw v0
.end method

.method public final synthetic ﾇ()Ljava/lang/Object;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->a()Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->d:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bt$m0;->e:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
