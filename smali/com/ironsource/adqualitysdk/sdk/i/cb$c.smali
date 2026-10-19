###### Class com.ironsource.adqualitysdk.sdk.i.cb.c (com.ironsource.adqualitysdk.sdk.i.cb$c)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/cb$c;
.super Lcom/ironsource/adqualitysdk/sdk/i/az;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static t:J = 0x5effbff1dd887c65L

.field private static u:I = 0x0

.field private static v:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/az;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static k(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->t:J

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
.method final j()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/adqualitysdk/sdk/i/az$d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->u:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->v:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ｋ(Ljava/lang/String;)Ljava/lang/Class;
    .registers 9

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_ac

    goto/16 :goto_9c

    :sswitch_e
    const v1, 0x86b3

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    sub-int/2addr v1, v5

    const-string v5, "\u7c06\ufab9\u716e\ue852\u66dc\udd74\u543e\ud2f4\u4984\uc01d\u3eff\ub5fa\u2c72\uab17\u21dd\u986e\u173c\u8de5\u0496\u835f\uf9b7\u70ab\uef63\u6603\udc83\u5b7f\ud22f\u48f1\uc79f\u3e4b\ub4eb\u33e6\uaa44\u2112\u9ff6\u1672\u8d20\u0bce\u82b6\uf943\u77e9\ueea7\u654d\udc1d\u5ad5\ud16b"

    invoke-static {v5, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, 0x61

    if-eqz p1, :cond_2b

    const/16 p1, 0x61

    goto :goto_2d

    :cond_2b
    const/16 p1, 0x3e

    :goto_2d
    if-eq p1, v1, :cond_30

    goto :goto_9c

    :cond_30
    const/4 v0, 0x1

    goto :goto_9c

    :sswitch_32
    const v1, 0xb53f

    invoke-static {v5, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    add-int/2addr v6, v1

    const-string v1, "\u7c06\uc935\u1676\u63f6\ua8ec\uf630\u4376\u88a8\ud5e4\u2361\u6877\ub5fe\u02e2\u4833\u9565\ue2a2\u2ffc\u7529\uc26e\u0fbb\u54a7\ua22c\uef6e\u34a2\u81e3\ucf27\u1471\u61b3\uaeaf\uf404\u4166\u8eaa\udbeb\u211f\u6e49\ubbae\u00d0\u4e1b\u9b48"

    invoke-static {v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x1

    :goto_4c
    if-eq v5, v3, :cond_9c

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->v:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->u:I

    rem-int/2addr p1, v4

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->v:I

    rem-int/2addr v0, v4

    const/4 v0, 0x3

    goto :goto_9c

    :sswitch_60
    const v1, 0x8ef7

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    add-int/2addr v5, v1

    const-string v1, "\u7c27\uf2f3\u61e5\ud0ee\u47dc\ub6c4\u25f9\u94cd\u0bb8\u7abd"

    invoke-static {v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9c

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->u:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->v:I

    rem-int/2addr p1, v4

    const/4 v0, 0x2

    goto :goto_9c

    :sswitch_83
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, 0x566b

    const-string v6, "\u7c24\u2a6a\ud0e6\u7f4a\u25a0\ucc06\u7aa6\u20eb\ucf49\u75cf\u1c3d\uca95\u7115\u1f73"

    invoke-static {v6, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9c

    const/4 v0, 0x0

    :cond_9c
    :goto_9c
    if-eqz v0, :cond_a9

    if-eq v0, v3, :cond_a9

    if-eq v0, v4, :cond_a6

    if-eq v0, v2, :cond_a6

    const/4 p1, 0x0

    return-object p1

    :cond_a6
    const-class p1, Lcom/unity3d/services/banners/BannerView;

    return-object p1

    :cond_a9
    const-class p1, Lcom/unity3d/services/ads/adunit/AdUnitActivity;

    return-object p1

    :sswitch_data_ac
    .sparse-switch
        0xf077c96 -> :sswitch_83
        0x39549411 -> :sswitch_60
        0x3f9c6a13 -> :sswitch_32
        0x5b4461a4 -> :sswitch_e
    .end sparse-switch
.end method

.method public final ﾇ()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->u:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->v:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3b

    if-nez v0, :cond_11

    const/16 v0, 0x3b

    goto :goto_13

    :cond_11
    const/16 v0, 0x5e

    :goto_13
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1e

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    goto :goto_38

    :cond_1e
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getVersion()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x44

    :try_start_24
    div-int/2addr v1, v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_75

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    goto :goto_2a

    :cond_29
    const/4 v1, 0x1

    :goto_2a
    if-eqz v1, :cond_38

    :cond_2c
    const/4 v0, 0x0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->v:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->u:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :cond_38
    :goto_38
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->v:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->u:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    :goto_46
    const v1, 0xce2f

    const-string v4, "\u7c48"

    if-eqz v2, :cond_61

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    goto :goto_74

    :cond_61
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v4, v1}, Lcom/ironsource/adqualitysdk/sdk/i/cb$c;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    :goto_74
    return-object v0

    :catchall_75
    move-exception v0

    throw v0
.end method
