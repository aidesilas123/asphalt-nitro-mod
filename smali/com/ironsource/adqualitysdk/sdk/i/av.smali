###### Class com.json.adqualitysdk.sdk.i.av (com.ironsource.adqualitysdk.sdk.i.av)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/av;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/av$d;,
        Lcom/ironsource/adqualitysdk/sdk/i/av$a;
    }
.end annotation


# static fields
.field private static a:J = 0x0L

.field private static b:I = 0x0

.field private static c:C = '\ua4e3'

.field private static d:J = -0x395abd19927383abL

.field private static e:I = 0x0

.field private static f:I = 0x1


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field private n:Lcom/ironsource/adqualitysdk/sdk/i/av$d;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->m:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->n:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->g:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    add-int/lit8 v1, v0, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    const/4 v1, 0x1

    :goto_11
    const/4 v4, 0x0

    if-ne v1, v2, :cond_79

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->j:Ljava/lang/String;

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    if-eq v1, v2, :cond_63

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->k:Ljava/lang/String;

    if-eqz v1, :cond_63

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    int-to-char v4, v4

    const-string v5, "\u1465\u40b1\ued4b\u58d6"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u2ac4\u8eb4\u0357\u3001\u7777\uefa9\uf5f0\uc523\ue415\u89eb\u65d4\u8d45\u4d91\u99f8\udb64\ue66c\u91a9\u139b\u0edd\u5189\u9eda\u8838\u5132\ua8f3"

    invoke-static {v5, v6, v1, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    add-int/2addr v1, v2

    const-string v2, "\u31aa\u318a\u52d1\u2ea9\ud805\u208f\uf496"

    invoke-static {v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/av;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_63
    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6f

    const/4 v0, 0x0

    goto :goto_70

    :cond_6f
    const/4 v0, 0x1

    :goto_70
    if-eq v0, v2, :cond_78

    const/16 v0, 0x46

    :try_start_74
    div-int/2addr v0, v3
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_76

    return-object v4

    :catchall_76
    move-exception v0

    throw v0

    :cond_78
    return-object v4

    :cond_79
    :try_start_79
    throw v4
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception v0

    throw v0
.end method

.method private b()Ljava/lang/String;
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->m:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-eq v1, v2, :cond_24

    return-object v0

    :cond_24
    const/16 v1, 0x52

    :try_start_26
    div-int/2addr v1, v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_28

    return-object v0

    :catchall_28
    move-exception v0

    throw v0
.end method

.method private c()V
    .registers 13

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->g:Ljava/lang/String;

    const v1, -0x22209401

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-char v3, v3

    const-string v4, "\uff50\udf6b\u95dd\u7ea4"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\ua962\u2f5b\ua19f\u6613\u1bf0\uad1c\u0600"

    invoke-static {v4, v5, v1, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/av;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    const/16 v6, 0x30

    invoke-static {v4, v6, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    const v8, 0x4aae2192    # 5705929.0f

    add-int/2addr v7, v8

    invoke-static {v4, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v9

    rsub-int v9, v9, 0xeaf

    int-to-char v9, v9

    const-string v10, "\u91ac\uae21\uaf4a\ue10e"

    const-string v11, "\u46b4"

    invoke-static {v10, v5, v7, v9, v11}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/av;->i()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz v3, :cond_9c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    cmpl-float v3, v3, v7

    sub-int/2addr v8, v3

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    cmpl-float v3, v3, v7

    rsub-int v3, v3, 0xeb0

    int-to-char v3, v3

    invoke-static {v10, v5, v8, v3, v11}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    add-int/lit8 v3, v3, 0x65

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    rem-int/lit8 v3, v3, 0x2

    :cond_9c
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/av;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_cf

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x4aae2191    # 5705928.5f

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    sub-int/2addr v3, v9

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v9

    cmpl-float v7, v9, v7

    add-int/lit16 v7, v7, 0xeae

    int-to-char v7, v7

    invoke-static {v10, v5, v3, v7, v11}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_cf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v6, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    neg-int v7, v7

    const-string v8, "\u71ef\u71bc\u2725\u5b04\uc1c0\u390b\u90ab\ue420\u80ce\u4aff\u2804\uf6d8"

    invoke-static {v8, v7}, Lcom/ironsource/adqualitysdk/sdk/i/av;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/av;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x4aae2190    # 5705928.0f

    invoke-static {v4, v6, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v8

    int-to-byte v8, v8

    rsub-int v8, v8, 0xeae

    int-to-char v8, v8

    invoke-static {v10, v5, v7, v8, v11}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->m:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    const/16 v8, 0x19

    if-eq v3, v7, :cond_11a

    const/16 v7, 0x19

    goto :goto_11c

    :cond_11a
    const/16 v7, 0x1e

    :goto_11c
    const-string v9, "\uf985\uf9c4\ued19\u9128\u2aaf\ud254\u4b08\u3f82\u08b0\u80dc\uc338\u2d2f\u1b54\ub3b7\uf1b9\u1ce4"

    if-eq v7, v8, :cond_121

    goto :goto_131

    :cond_121
    sget v7, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    add-int/lit8 v7, v7, 0x3b

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1a0

    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    if-ne v3, v7, :cond_148

    :goto_131
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v9, v1}, Lcom/ironsource/adqualitysdk/sdk/i/av;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_148
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->n:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-direct {p0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/av;->h(Lcom/ironsource/adqualitysdk/sdk/i/av$d;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x512d9cd3    # 4.6603776E10f

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    sub-int/2addr v8, v10

    invoke-static {v4, v6, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    add-int/2addr v4, v1

    int-to-char v4, v4

    const-string v6, "\ud34c\u2d9c\ubf51\u7552"

    const-string v10, "\u65d6\ucc59\u4fbe\u097b\u3cd2\u4387\ub7cf\ua50d\u8f50"

    invoke-static {v6, v5, v8, v4, v10}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v9, v3}, Lcom/ironsource/adqualitysdk/sdk/i/av;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/m;->ﻐ(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1a6

    :cond_1a0
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    const/4 v0, 0x0

    :try_start_1a3
    throw v0
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a4

    :catchall_1a4
    move-exception v0

    throw v0

    :cond_1a6
    :goto_1a6
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1b4

    const/4 v0, 0x1

    goto :goto_1b5

    :cond_1b4
    const/4 v0, 0x0

    :goto_1b5
    if-eq v0, v1, :cond_1b8

    return-void

    :cond_1b8
    const/16 v0, 0x27

    :try_start_1ba
    div-int/2addr v0, v2
    :try_end_1bb
    .catchall {:try_start_1ba .. :try_end_1bb} :catchall_1bc

    return-void

    :catchall_1bc
    move-exception v0

    throw v0
.end method

.method private e()Ljava/lang/String;
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, -0x180e892

    const-string v2, ""

    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v1, v3

    const v3, 0xc8b7

    const/4 v4, 0x0

    invoke-static {v4, v4, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    add-int/2addr v5, v3

    int-to-char v3, v5

    const-string v5, "\u6f46\u7f17\ub7fe\u3bc8"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\ubafb\uae03\u64d9\u4ce3\u61fb\uceb3\u044d\u1ace\uf867\u7dce\udccb\u41ac\ucdff\uddfd\ub574"

    invoke-static {v5, v6, v1, v3, v7}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x64ced640

    invoke-static {v4, v4}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const-string v3, "\u3fb5\uced6\u0964\ucf65"

    const-string v5, "\ua077\ucd82\uea7a\udaf9\u1235\u193e\u6465\u7624\u2b64\u2a5a\u8431"

    cmp-long v11, v7, v9

    add-int/2addr v11, v1

    invoke-static {v4, v4}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v1

    int-to-char v1, v1

    invoke-static {v3, v6, v11, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->h:Ljava/lang/String;

    if-eqz v1, :cond_88

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, -0x102d63a1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    sub-int/2addr v0, v3

    invoke-static {v2, v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    add-int/lit16 v3, v3, 0x1d27

    int-to-char v3, v3

    const-string v5, "\u5f34\ud29c\u27ef\u311d"

    const-string v7, "\uf165"

    invoke-static {v5, v6, v0, v3, v7}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x30

    invoke-static {v2, v0, v4, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    add-int/lit16 v2, v2, 0x2aa6

    int-to-char v2, v2

    const-string v3, "\ue1ec\uaab9\ua6c4\u752a"

    const-string v4, "\u15c7\u1359\u82b9\u3d15\uf7a2\ucc96\ubf7c\u550f\ubb79\u6a7b\u51d8\ucf24\ua444\u0f2a"

    invoke-static {v3, v6, v0, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private h(Lcom/ironsource/adqualitysdk/sdk/i/av$d;)Ljava/lang/String;
    .registers 12

    const/16 v0, 0x3a

    if-eqz p1, :cond_7

    const/16 v1, 0x3c

    goto :goto_9

    :cond_7
    const/16 v1, 0x3a

    :goto_9
    if-eq v1, v0, :cond_be

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x30

    const-string v2, ""

    const/4 v3, 0x1

    if-eq p1, v3, :cond_ae

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq p1, v1, :cond_81

    if-eq p1, v4, :cond_57

    const/4 v0, 0x4

    if-eq p1, v0, :cond_45

    const/4 v0, 0x5

    if-eq p1, v0, :cond_32

    goto/16 :goto_be

    :cond_32
    const/4 p1, 0x0

    invoke-static {v5, p1, p1}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    const-string v1, "\u98d7\u9891\u6627\u1a13\u38f5\uc036\u68bc\u1c2f\u69e6\u0bea\ud12b\u0e9b\u7a10\u38fa\ue3c4\u3f69\u4b4e\u3617\uf427\u2022\u5da7\u27e1\u8560\u529d\u2e1d\u54bb\u97d8\u436b\u3f40\u4218"

    cmpl-float p1, v0, p1

    add-int/2addr p1, v3

    invoke-static {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/av;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_45
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    sub-int/2addr v3, p1

    const-string p1, "\ufb23\ufb65\ue580\u99b4\u2d05\ud5c6\u2862\u5cf1\u0a12\u884d\uc4db\u4e45\u19e4\ubb5d\uf63e\u7fab\u28b6\ub5a5\ue1ca\u60f8\u3e1f\ua44c\u9085\u1248\u4da7\ud71a\u8224\u03af\u5cb5\uc1a8\u8dc4\u34e1\u6200\uf053"

    invoke-static {p1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/av;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_57
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-string p1, "\u786d\u7848\ufe3d\u821b\ud4ee\u2c64\u8cb2\uf81e\u897d\u93df\u3d30\uea97\u9aa0\ua0b2\u0fcf\udb7c\uabfe\uae02\u1868\uc46c\ubd4e\ubfb8\u697d\ub68e\ucee9\uccaa\u7bcf\ua765\udfb5\uda09\u7429\u9031\ue101\uebef\u456d\u8289\uf2bd\uf8a7\u57d6\u7359\u03fc\u0610\ua050\u7c23\u155c\u1780\ub168\u6e9d\u2694\u24ec\u83cb\u5f46\u37f3\u3216\u9c11\u483e\u395d\u43cb\ued72"

    cmp-long v0, v6, v8

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/av;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->g:Ljava/lang/String;

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->i:Ljava/lang/String;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/2addr v0, v1

    return-object p1

    :cond_81
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    invoke-static {v2, v0, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/2addr v0, v3

    int-to-char v0, v0

    const-string v2, "\ua2a2\u0657\u8215\uc9c5"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u294b\u0e77\u0ecb\u80db\u11a2\uc176\u7409\u6a8d\ufdeb\u5fa6\ufd8f\u391d\uf71d\ud598\u2059\u2722\u5597\u2114\u1355\u83ac\u4439\u4b5d\u14a1\uce13\u9118\u7b27\u7bbc\u5d71\ud7ae\uc728\u3b20\u8983\u99ed\u7e0d\u5021\u48d5\uf728\u6a46\u9c52\u6c19\ud2f7\u1d12\ubeb1\u9f3b\ude14\uba90\u7618\ufd6b\u741f\u2331\u8924\u3040\u497a\ua32d\u2f32\ub16c\u655c\ud5e2\ue703\uf1cb\u3f6b\u76f4"

    invoke-static {v2, v6, p1, v0, v7}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->g:Ljava/lang/String;

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->i:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_ae
    invoke-static {v2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result p1

    neg-int p1, p1

    const-string v0, "\u26d7\u2682\u9b59\ue762\ud10a\u29cb\u5245\u26d4\ud7ec\uf687\u389a\u3436\uc41a\uc5d6\u0a2a\u058d\uf559\ucb28\u1dc3\u1add\ue3e4\uda89\u6c82\u6878\u9016\ua9c4"

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/av;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_be
    :goto_be
    const/4 p1, 0x0

    return-object p1
.end method

.method private i()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->g:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->i:Ljava/lang/String;

    if-eqz v0, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    :goto_12
    if-eq v3, v1, :cond_16

    goto/16 :goto_c9

    :cond_16
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    add-int/lit8 v3, v3, 0xd

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/lit8 v3, v3, 0x2

    const-string v4, "\uf494\ud797\u646f"

    const-string v5, ""

    const v6, -0x504a2011

    const-string v7, "\uee95\ub5df\u3eaf\u3c51"

    const-string v8, "\u0000\u0000\u0000\u0000"

    if-nez v3, :cond_52

    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    mul-int v3, v3, v6

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2387

    int-to-char v2, v2

    invoke-static {v7, v8, v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xb

    if-eqz v2, :cond_4d

    const/16 v2, 0xb

    goto :goto_4f

    :cond_4d
    const/16 v2, 0x44

    :goto_4f
    if-eq v2, v3, :cond_6c

    goto :goto_97

    :cond_52
    invoke-static {v5}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    rsub-int v2, v2, 0x513d

    int-to-char v2, v2

    invoke-static {v7, v8, v3, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    :cond_6c
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    add-int/lit8 v2, v2, 0x75

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    rem-int/lit8 v2, v2, 0x2

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->m:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    if-eq v2, v3, :cond_97

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    sub-int/2addr v1, v0

    const-string v0, "\ufa49\ufa07\u6f45\u137f\u8f4d\u7793\u6030\u14ef\u0b7b\u0289\u66c7\u0600\u1889\u31dd\u547b"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/av;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    rem-int/lit8 v1, v1, 0x2

    :cond_97
    :goto_97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    const v3, 0x8786

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v3

    int-to-char v3, v4

    const-string v4, "\uc59d\uec28\u865d\ue787"

    const-string v5, "\u1379\u6d1c\u014c\u4be3\ue0e8\u623d\u3b06\u00e6\ua945\uee23\ub287\u8662\uc6b9\ue700"

    invoke-static {v4, v8, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c9
    :goto_c9
    const/4 v0, 0x0

    return-object v0
.end method

.method private static j(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-wide v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->d:J

    invoke-static {v1, v2, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﾇ(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    :goto_14
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    array-length v2, p0

    if-ge v1, v2, :cond_3a

    add-int/lit8 v1, v1, -0x4

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    aget-char v2, p0, v1

    rem-int/lit8 v3, v1, 0x4

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/f;->ｋ:I

    int-to-long v4, v4

    sget-wide v6, Lcom/ironsource/adqualitysdk/sdk/i/av;->d:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/f;->ﻐ:I

    goto :goto_14

    :cond_3a
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_43

    return-object v1

    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;
    .registers 11

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_6
    check-cast p4, [C

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_e
    check-cast p1, [C

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_16
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻐ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    const/4 v1, 0x0

    aget-char v2, p0, v1

    xor-int/2addr p3, v2

    int-to-char p3, p3

    aput-char p3, p0, v1

    const/4 p3, 0x2

    aget-char v2, p1, p3

    int-to-char p2, p2

    add-int/2addr v2, p2

    int-to-char p2, v2

    aput-char p2, p1, p3

    array-length p2, p4

    new-array p3, p2, [C

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    :goto_3b
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    if-ge v1, p2, :cond_80

    add-int/lit8 v2, v1, 0x2

    rem-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v1, 0x3

    rem-int/lit8 v3, v3, 0x4

    rem-int/lit8 v1, v1, 0x4

    aget-char v1, p0, v1

    mul-int/lit16 v1, v1, 0x7fce

    aget-char v4, p1, v2

    add-int/2addr v1, v4

    const v4, 0xffff

    rem-int/2addr v1, v4

    int-to-char v1, v1

    sput-char v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ｋ:C

    aget-char v5, p0, v3

    mul-int/lit16 v5, v5, 0x7fce

    aget-char v2, p1, v2

    add-int/2addr v5, v2

    div-int/2addr v5, v4

    int-to-char v2, v5

    aput-char v2, p1, v3

    aput-char v1, p0, v3

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    aget-char v2, p4, v1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/av;->a:J

    xor-long/2addr v2, v4

    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/av;->b:I

    int-to-long v4, v4

    xor-long/2addr v2, v4

    sget-char v4, Lcom/ironsource/adqualitysdk/sdk/i/av;->c:C

    int-to-long v4, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﻛ:I

    goto :goto_3b

    :cond_80
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_1b .. :try_end_86} :catchall_87

    return-object p0

    :catchall_87
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method final d(Lcom/ironsource/adqualitysdk/sdk/i/ci;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻐ()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ｋ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻛ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﺙ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->i:Ljava/lang/String;

    const v0, -0x319afbdb    # -9.605635E8f

    const-string v1, ""

    invoke-static {v1}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    int-to-char v2, v2

    const-string v3, "\u26d9\u6504\u61ce\uc201"

    const-string v4, "\u0000\u0000\u0000\u0000"

    const-string v5, "\ua58f\u7c2c\u8d5f\udda1\u7717\uc686\ua2d8"

    invoke-static {v3, v4, v0, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x17

    if-nez v0, :cond_4b

    const/16 v0, 0x29

    goto :goto_4d

    :cond_4b
    const/16 v0, 0x17

    :goto_4d
    if-eq v0, v2, :cond_72

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    const-string v2, "\u3c16\u3c52\uf764\u8b78\u59db\ua122\ua82f\udc91\ucd00\u9a81\ub060\uce38"

    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/av;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x5b

    if-eqz v0, :cond_6e

    const/16 v0, 0x22

    goto :goto_70

    :cond_6e
    const/16 v0, 0x5b

    :goto_70
    if-eq v0, v2, :cond_9c

    :cond_72
    const v0, -0x504a2011

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    rsub-int v0, v0, 0x513d

    int-to-char v0, v0

    const-string v1, "\uee95\ub5df\u3eaf\u3c51"

    const-string v2, "\uf494\ud797\u646f"

    invoke-static {v1, v4, v5, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/av;->k(Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->i:Ljava/lang/String;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/lit8 v0, v0, 0x2

    :cond_9c
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﱟ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﻏ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ci;->ﮐ()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->l:Ljava/lang/String;

    return-void
.end method

.method final f(Lcom/ironsource/adqualitysdk/sdk/i/av$a;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->m:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    const/16 v1, 0x3b

    const/16 v2, 0xa

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3b

    goto :goto_f

    :cond_d
    const/16 v0, 0xa

    :goto_f
    if-eq v0, v2, :cond_15

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->n:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    :cond_15
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eq p1, v0, :cond_3b

    if-eq p1, v2, :cond_31

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2d

    goto :goto_30

    :cond_2d
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/av;->c()V

    :goto_30
    return-void

    :cond_31
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    rem-int/2addr p1, v2

    return-void

    :cond_3b
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    add-int/2addr p1, v1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    rem-int/2addr p1, v2

    const/16 v0, 0x2e

    if-eqz p1, :cond_4a

    const/16 p1, 0x16

    goto :goto_4c

    :cond_4a
    const/16 p1, 0x2e

    :goto_4c
    if-ne p1, v0, :cond_4f

    return-void

    :cond_4f
    const/4 p1, 0x0

    :try_start_50
    throw p1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p1

    throw p1
.end method

.method final g()Ljava/lang/String;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->n:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/av;->h(Lcom/ironsource/adqualitysdk/sdk/i/av$d;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->n:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/av;->h(Lcom/ironsource/adqualitysdk/sdk/i/av$d;)Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    throw v0
.end method

.method final l(Lcom/ironsource/adqualitysdk/sdk/i/av$d;)V
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/16 v2, 0x28

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/16 v1, 0x28

    :goto_11
    if-ne v1, v2, :cond_1b

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->n:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/av;->f(Lcom/ironsource/adqualitysdk/sdk/i/av$a;)V

    return-void

    :cond_1b
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->n:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/av;->f(Lcom/ironsource/adqualitysdk/sdk/i/av$a;)V

    const/4 p1, 0x0

    :try_start_23
    throw p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    throw p1
.end method

.method final m()Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/av;->m:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    const/16 v2, 0x62

    if-eq v0, v1, :cond_17

    const/16 v1, 0x49

    goto :goto_19

    :cond_17
    const/16 v1, 0x62

    :goto_19
    const/4 v3, 0x1

    if-eq v1, v2, :cond_2d

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-eq v1, v3, :cond_27

    goto :goto_2d

    :cond_27
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    if-ne v0, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    return v2

    :cond_2d
    :goto_2d
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av;->e:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av;->f:I

    rem-int/lit8 v0, v0, 0x2

    return v3

    :cond_38
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    const/4 v0, 0x0

    :try_start_3b
    throw v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    throw v0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.av.a (com.ironsource.adqualitysdk.sdk.i.av$a)
.class public final enum Lcom/ironsource/adqualitysdk/sdk/i/av$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adqualitysdk/sdk/i/av$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field private static b:C = '\u0000'

.field private static c:C = '\u0000'

.field private static d:C = '\u0000'

.field private static e:C = '\u0000'

.field private static f:I = 0x0

.field private static g:I = 0x1

.field public static final enum ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field public static final enum ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field public static final enum ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field public static final enum ｋ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field public static final enum ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

.field public static final enum ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->e()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/4 v3, 0x3

    rsub-int/lit8 v2, v2, 0x3

    const-string v4, "\u45bd\u4848\u013c\u9285"

    invoke-static {v4, v2}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x8

    const-string v5, "\u9d14\u5953\ubef7\u9568\u0eac\uc064\u62b5\u69bb"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    const-string v6, ""

    invoke-static {v6, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    const-string v7, "\u46ba\u7b66\u8aec\ub348\u9715\ufdf3\ua17c\ua509\u49c6\ud308\u62b5\u69bb"

    invoke-static {v7, v6}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x4

    const-string v14, "\u7d28\u7cb5"

    const-string v15, "\u9d82\u462a\uc9df\u1b08\u13ea\u408c\uf120\u33c4"

    const-string v7, "\u4542\u99ce\ue181\ufcb0\ucf6d\u54fd"

    cmp-long v16, v8, v10

    rsub-int/lit8 v8, v16, 0x3

    invoke-static {v14, v8}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v3}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v8, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    rsub-int/lit8 v9, v9, 0x8

    invoke-static {v15, v9}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v13}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    new-instance v9, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    const-wide/16 v14, -0x1

    cmp-long v16, v10, v14

    add-int/lit8 v10, v16, 0x4

    invoke-static {v7, v10}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7, v12}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    aput-object v0, v7, v1

    aput-object v2, v7, v5

    const/4 v0, 0x2

    aput-object v4, v7, v0

    aput-object v6, v7, v3

    aput-object v8, v7, v13

    aput-object v9, v7, v12

    sput-object v7, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a:[Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->f:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->g:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->d:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->e:C

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

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->b:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->c:C

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

.method static e()V
    .registers 1

    const v0, 0xe6cc

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->d:C

    const v0, 0xa2f8

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->c:C

    const v0, 0xf286

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->e:C

    const/16 v0, 0x1031

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->b:C

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/av$a;
    .registers 4

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->g:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x59

    if-eqz v1, :cond_13

    const/16 v1, 0xa

    goto :goto_15

    :cond_13
    const/16 v1, 0x59

    :goto_15
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    if-eq v1, v2, :cond_24

    const/16 v0, 0x43

    :try_start_1f
    div-int/lit8 v0, v0, 0x0
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_22

    goto :goto_24

    :catchall_22
    move-exception p0

    throw p0

    :cond_24
    :goto_24
    return-object p0
.end method

.method public static values()[Lcom/ironsource/adqualitysdk/sdk/i/av$a;
    .registers 2

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->g:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_1a

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a:[Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/i/av$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    return-object v0

    :cond_1a
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->a:[Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/i/av$a;->clone()Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_20
    throw v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    throw v0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.av.b (com.ironsource.adqualitysdk.sdk.i.av$b)
.class final synthetic Lcom/ironsource/adqualitysdk/sdk/i/av$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->values()[Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->b:[I

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->b:[I

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->b:[I

    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->b:[I

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->values()[Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->a:[I

    :try_start_47
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_4f
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->a:[I

    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_59} :catch_59

    :catch_59
    :try_start_59
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->a:[I

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_63} :catch_63

    :catch_63
    :try_start_63
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->a:[I

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6d
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->a:[I

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_77

    :catch_77
    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.av.d (com.ironsource.adqualitysdk.sdk.i.av$d)
.class public final enum Lcom/ironsource/adqualitysdk/sdk/i/av$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adqualitysdk/sdk/i/av$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/ironsource/adqualitysdk/sdk/i/av$d;

.field private static b:[C = null

.field private static c:C = '\u0000'

.field private static d:I = 0x0

.field private static e:I = 0x1

.field public static final enum ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

.field public static final enum ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

.field public static final enum ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

.field public static final enum ｋ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

.field public static final enum ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

.field public static final enum ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->e()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    const-string v1, ""

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    add-int/lit8 v4, v4, 0x52

    int-to-byte v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    const/4 v6, 0x4

    rsub-int/lit8 v5, v5, 0x4

    const-string v7, "\u0001\u0002\u0001\u0003"

    invoke-static {v4, v7, v5}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->f(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v7

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    const-string v13, "\u0001\u0003\u0004\u0003\u0000\t\u0007\u0008\u0003\u0001\t\u0006\u0000\u0003\u0005\u000e\u000e\u0001\u0007\u0011"

    const-string v14, "\u000f\u0005\u000e\u000b\u00a3\u00a3\u0002\u0000\u0007\u0003\n\u0007\u000e\r\u0014\n\u0011\u0001\u0003\u000e\u0010\u0006\u00a1"

    const-string v15, "\n\u0001\r\u0006\u0010\u000b\u0010\u000c\u0010\u0008\u0006\r\u0002\u0001\t\u000f\u000b\u0010\u0016\u0007\u00ad"

    const-string v8, "\u0010\t\u000c\u0010\u0007\u0011\u0006\t\u0000\u0006\u0018\u0000\u0001\u0007\u0007\u0003\n\u0000\u0002\u0001\u0001\u0003\u0017\u0005\u0002\u0000"

    const-string v2, "\u000f\u0005\u0014\u0005\u0002\u0004\u00b2"

    cmpl-float v7, v7, v11

    add-int/lit8 v7, v7, 0x14

    invoke-static {v5, v13, v7}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->f(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v10}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v7

    cmpl-float v7, v7, v11

    add-int/lit8 v7, v7, 0x52

    int-to-byte v7, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v11

    shr-int/lit8 v11, v11, 0x8

    add-int/lit8 v11, v11, 0x17

    invoke-static {v7, v14, v11}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->f(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v12}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    new-instance v7, Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    rsub-int/lit8 v11, v11, 0x69

    int-to-byte v11, v11

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x15

    invoke-static {v11, v15, v13}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->f(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11, v9}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    new-instance v11, Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v13

    rsub-int/lit8 v13, v13, 0x79

    int-to-byte v13, v13

    const v14, -0xffffe6

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v8, v14}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->f(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8, v6}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    new-instance v8, Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    const/16 v13, 0x30

    invoke-static {v1, v13}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    add-int/lit8 v1, v1, 0x65

    int-to-byte v1, v1

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    rsub-int/lit8 v13, v13, 0x7

    invoke-static {v1, v2, v13}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->f(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v8, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    aput-object v0, v1, v3

    aput-object v4, v1, v10

    aput-object v5, v1, v12

    aput-object v7, v1, v9

    aput-object v11, v1, v6

    aput-object v8, v1, v2

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->a:[Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->d:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->e:I

    rem-int/2addr v0, v12

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static e()V
    .registers 1

    const/4 v0, 0x5

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->c:C

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->b:[C

    return-void

    nop

    :array_e
    .array-data 2
        0x4es
        0x4fs
        0x45s
        0x57s
        0x52s
        0x5fs
        0x41s
        0x47s
        0x54s
        0x51s
        0x55s
        0x49s
        0x44s
        0x53s
        0x50s
        0x4bs
        0x56s
        0x4cs
        0x5as
        0x46s
        0x43s
        0x58s
        0x59s
        0x5bs
        0x5cs
    .end array-data
.end method

.method private static f(BLjava/lang/String;I)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_6
    check-cast p1, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/g;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->b:[C

    sget-char v2, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->c:C

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

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/av$d;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->d:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->e:I

    rem-int/lit8 v0, v0, 0x2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->d:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->e:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1f

    if-nez v0, :cond_23

    const/16 v0, 0x1f

    goto :goto_25

    :cond_23
    const/16 v0, 0x49

    :goto_25
    if-eq v0, v1, :cond_28

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

.method public static values()[Lcom/ironsource/adqualitysdk/sdk/i/av$d;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->d:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->e:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->a:[Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-virtual {v0}, [Lcom/ironsource/adqualitysdk/sdk/i/av$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->e:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    const/4 v1, 0x1

    :goto_22
    if-ne v1, v2, :cond_25

    return-object v0

    :cond_25
    const/4 v0, 0x0

    :try_start_26
    throw v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    throw v0
.end method
