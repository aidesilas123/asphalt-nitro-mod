###### Class com.json.adqualitysdk.sdk.i.gz (com.ironsource.adqualitysdk.sdk.i.gz)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/gz;
.super Lcom/ironsource/adqualitysdk/sdk/i/gv;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/gz$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/adqualitysdk/sdk/i/gv<",
        "Landroid/media/MediaPlayer$OnInfoListener;",
        ">;",
        "Landroid/media/MediaPlayer$OnInfoListener;"
    }
.end annotation


# static fields
.field private static b:C = '\uc5b8'

.field private static c:C = '\u487f'

.field private static d:C = '\u7e79'

.field private static e:C = '\u0eb3'

.field private static f:I = 0x0

.field private static g:I = 0x1


# instance fields
.field private h:Lcom/ironsource/adqualitysdk/sdk/i/gz$e;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer$OnInfoListener;Lcom/ironsource/adqualitysdk/sdk/i/gz$e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/gv;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/gz;->h:Lcom/ironsource/adqualitysdk/sdk/i/gz$e;

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    array-length v1, p0

    new-array v1, v1, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    const/4 v3, 0x2

    new-array v3, v3, [C

    :goto_14
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    array-length v5, p0

    if-ge v4, v5, :cond_76

    aget-char v5, p0, v4

    aput-char v5, v3, v2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, p0, v4

    const/4 v5, 0x1

    aput-char v4, v3, v5

    const v4, 0xe370

    const/4 v6, 0x0

    :goto_28
    const/16 v7, 0x10

    if-ge v6, v7, :cond_65

    aget-char v7, v3, v5

    aget-char v8, v3, v2

    add-int/2addr v8, v4

    aget-char v9, v3, v2

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/gz;->d:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/gz;->e:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v5

    aget-char v7, v3, v2

    aget-char v8, v3, v5

    add-int/2addr v8, v4

    aget-char v9, v3, v5

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/gz;->b:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/gz;->c:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    const v7, 0x9e37

    sub-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_65
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    aget-char v6, v3, v2

    aput-char v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    aget-char v5, v3, v5

    aput-char v5, v1, v6

    add-int/lit8 v4, v4, 0x2

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    goto :goto_14

    :cond_76
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_b .. :try_end_7c} :catchall_7d

    return-object p0

    :catchall_7d
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gz;->f:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gz;->g:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x43

    if-nez v0, :cond_11

    const/16 v0, 0x5c

    goto :goto_13

    :cond_11
    const/16 v0, 0x43

    :goto_13
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1f

    :try_start_17
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/gz;->h:Lcom/ironsource/adqualitysdk/sdk/i/gz$e;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/gz$e;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/gz;Landroid/media/MediaPlayer;II)Z

    goto :goto_4c

    :catchall_1d
    move-exception v0

    goto :goto_25

    :cond_1f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/gz;->h:Lcom/ironsource/adqualitysdk/sdk/i/gz$e;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/gz$e;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/gz;Landroid/media/MediaPlayer;II)Z

    throw v2
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_1d

    :goto_25
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    add-int/lit8 v1, v1, 0x17

    const-string v4, "\u3d18\u8733\u683e\ucaec\udf14\u231b\u5866\ua00b\u913a\ud430\u1074\u8475\ua273\udcd0\u15fc\udde7\uea85\uadb3\ub61f\ufecf\u7f82\ua1a2\ua30b\u50d6"

    invoke-static {v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/gz;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1b

    const-string v5, "\u817b\ufde8\ued46\u7053\u7d3a\u6e55\u01d4\ua1ad\u886d\u3764\u3c4a\ue46f\u5866\ua00b\u913a\ud430\u1074\u8475\ua273\udcd0\u0e4d\u1329\u3b79\u37b5\u465cu\u145b\u023d"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/gz;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_4c
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/gv;->ﾇ()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7e

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/gz;->g:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/gz;->f:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x38

    if-eqz v0, :cond_63

    const/16 v0, 0x38

    goto :goto_65

    :cond_63
    const/16 v0, 0x5e

    :goto_65
    if-eq v0, v1, :cond_72

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/gv;->ﾇ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnInfoListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1

    :cond_72
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/gv;->ﾇ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnInfoListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    :try_start_7b
    throw v2
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception p1

    throw p1

    :cond_7e
    return v3
.end method
