###### Class com.ironsource.adqualitysdk.sdk.i.r.c.e (com.ironsource.adqualitysdk.sdk.i.r$c$e)
.class final Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ao$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/r$c;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static a:I = 0xc2

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/r$c;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/r$c;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/r$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIZILjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    new-array v1, p1, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_10
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge v3, p1, :cond_2f

    aget-char v3, p4, v3

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾇ:I

    add-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v1, v3

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    aget-char v4, v1, v3

    sget v5, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->a:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    goto :goto_10

    :cond_2f
    if-lez p3, :cond_46

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    new-array p0, p1, [C

    invoke-static {v1, v2, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p1, p3

    invoke-static {p0, v2, v1, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/c;->ﾒ:I

    sub-int p4, p1, p3

    invoke-static {p0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    if-eqz p2, :cond_5e

    new-array p0, p1, [C

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    :goto_4c
    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

    if-ge p2, p1, :cond_5d

    sub-int p3, p1, p2

    add-int/lit8 p3, p3, -0x1

    aget-char p3, v1, p3

    aput-char p3, p0, p2

    add-int/lit8 p2, p2, 0x1

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/c;->ｋ:I

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


# virtual methods
.method public final ﻐ()V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->b:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/r$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c;->i:Lcom/ironsource/adqualitysdk/sdk/i/r;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;->CONFIG_LOAD_TIMEOUT:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    const/4 v3, 0x0

    const-string v4, "\u0013\t\u0011\r\u0018\uffc4\u0008\u0005\u0013\u0010\uffc4\u000b\r\n\u0012\u0013\u0007\uffc4\uffef\uffe8\ufff7\uffc4\u001d\u0018\r\u0010\u0005\u0019\ufff5\u0008\uffe5\ufff7\uffed\u0018\u0019"

    cmpl-float v2, v2, v3

    rsub-int v2, v2, 0x11f

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    cmpl-float v3, v5, v3

    add-int/lit8 v3, v3, 0x22

    const/4 v5, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x21

    invoke-static {v2, v3, v5, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->a(IIZILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/r;->K(Lcom/ironsource/adqualitysdk/sdk/i/r;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->c:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x6

    if-eqz v0, :cond_47

    const/16 v0, 0x34

    goto :goto_48

    :cond_47
    const/4 v0, 0x6

    :goto_48
    if-eq v0, v1, :cond_51

    const/16 v0, 0x3d

    :try_start_4c
    div-int/lit8 v0, v0, 0x0
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_4f

    return-void

    :catchall_4f
    move-exception v0

    throw v0

    :cond_51
    return-void
.end method

.method public final ﾇ()V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->c:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->b:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/r$c;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c;->i:Lcom/ironsource/adqualitysdk/sdk/i/r;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;->NO_NETWORK_CONNECTION:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    add-int/lit16 v2, v2, 0x126

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, "\uffbc\uffff\u000b\n\n\u0001\uffff\u0010\u0005\u000b\n\uffea\u000b\uffbc\n\u0001\u0010\u0013\u000b\u000e\u0007"

    cmpl-float v4, v4, v5

    rsub-int/lit8 v4, v4, 0x15

    const/16 v5, 0x30

    invoke-static {v6, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    rsub-int/lit8 v5, v5, 0xa

    invoke-static {v2, v4, v3, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->a(IIZILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/r;->K(Lcom/ironsource/adqualitysdk/sdk/i/r;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->c:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/r$c$e;->b:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2d

    if-eqz v0, :cond_4a

    const/16 v0, 0x2d

    goto :goto_4c

    :cond_4a
    const/16 v0, 0xd

    :goto_4c
    if-eq v0, v1, :cond_4f

    return-void

    :cond_4f
    const/4 v0, 0x3

    :try_start_50
    div-int/2addr v0, v3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_52

    return-void

    :catchall_52
    move-exception v0

    throw v0
.end method
