###### Class com.json.adqualitysdk.sdk.i.ha (com.ironsource.adqualitysdk.sdk.i.ha)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ha;
.super Lcom/ironsource/adqualitysdk/sdk/i/gv;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/ha$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/adqualitysdk/sdk/i/gv<",
        "Landroid/media/MediaPlayer$OnCompletionListener;",
        ">;",
        "Landroid/media/MediaPlayer$OnCompletionListener;"
    }
.end annotation


# static fields
.field private static b:J = -0x3f6be4612e8dfc1cL

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field private e:Lcom/ironsource/adqualitysdk/sdk/i/ha$c;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer$OnCompletionListener;Lcom/ironsource/adqualitysdk/sdk/i/ha$c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/gv;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ha;->e:Lcom/ironsource/adqualitysdk/sdk/i/ha$c;

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    array-length p1, p0

    new-array p1, p1, [C

    const/4 v1, 0x0

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    :goto_13
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    array-length v2, p0

    if-ge v1, v2, :cond_2e

    aget-char v2, p0, v1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    mul-int v3, v3, v1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/ha;->b:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    goto :goto_13

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_35

    return-object p0

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 10

    const/16 v0, 0x10

    :try_start_2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ha;->e:Lcom/ironsource/adqualitysdk/sdk/i/ha$c;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ha$c;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ha;Landroid/media/MediaPlayer;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_12

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/ha;->c:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/ha;->d:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_3f

    :catchall_12
    move-exception v1

    const v2, 0xe37d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v5

    const-string v6, "\u03ab\ue0f7\uc55d\ua9fc\u8e7d\u72e5\u5766\u3bea\u1878\ufce8\ue169\uc5d5\uaa74\u8ed4\u7341\u57c3\u3451\u18c7\ufd4b\ue1d1\uc664\uaac0\u8f39\u73b0\u502e\u34b0\u1922\ufda4\ue23a"

    const-string v7, "\u03a1\uefdb\udb0c\uc76c\ub2a2\u9e45\u8a43\u7591\u61ac\u4d3c\u38b2\u24c9\u1034\ufc64\uefa1\udb13\uc751\ub297\u9eeb\u8a21\u75c0\u61da\u4d14\u394c\u24b3\u100c\ufc46\uef97\udbed\uc729\ub28b\u9ed8\u8a2a"

    cmpl-float v4, v5, v4

    add-int/2addr v4, v2

    invoke-static {v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ha;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const v4, 0xec4d

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v5

    shr-int/2addr v5, v0

    add-int/2addr v5, v4

    invoke-static {v7, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ha;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_3f
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/gv;->ﾇ()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2a

    if-eqz v1, :cond_48

    goto :goto_4a

    :cond_48
    const/16 v0, 0x2a

    :goto_4a
    if-eq v0, v2, :cond_55

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/gv;->ﾇ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_55
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/ha;->c:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/ha;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.ha.c (com.ironsource.adqualitysdk.sdk.i.ha$c)
.class public interface abstract Lcom/ironsource/adqualitysdk/sdk/i/ha$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ha;Landroid/media/MediaPlayer;)V
.end method
