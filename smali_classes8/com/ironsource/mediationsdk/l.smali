###### Class com.json.mediationsdk.l (com.ironsource.mediationsdk.l)
.class public Lcom/ironsource/mediationsdk/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/l$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "BANNER"

.field public static final b:Ljava/lang/String; = "LARGE"

.field public static final c:Ljava/lang/String; = "RECTANGLE"

.field public static final d:Ljava/lang/String; = "LEADERBOARD"

.field public static final e:Ljava/lang/String; = "SMART"

.field public static final f:Ljava/lang/String; = "CUSTOM"

.field public static final g:Ljava/lang/String; = "bannerAdSize"

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x5

.field public static final l:I = 0x6

.field public static final m:Ljava/lang/String; = "Adaptive=true"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(JJ)J
    .registers 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sub-long/2addr p2, v0

    return-wide p2
.end method

.method public static a()Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 4

    new-instance v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    const-string v1, "LEADERBOARD"

    const/16 v2, 0x2d8

    const/16 v3, 0x5a

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;II)Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 4

    new-instance v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/ISBannerSize;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->a()V

    :cond_5
    return-void
.end method

.method public static a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 5

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/mediationsdk/l$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/l$a;-><init>(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/mediationsdk/ISBannerSize;",
            ")V"
        }
    .end annotation

    const-string v0, "ext1"

    if-eqz p1, :cond_c6

    :try_start_4
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_c8

    goto :goto_46

    :sswitch_15
    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v2, 0x4

    goto :goto_46

    :sswitch_1f
    const-string v3, "BANNER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v2, 0x0

    goto :goto_46

    :sswitch_29
    const-string v3, "SMART"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v2, 0x3

    goto :goto_46

    :sswitch_33
    const-string v3, "LARGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v2, 0x1

    goto :goto_46

    :sswitch_3d
    const-string v3, "RECTANGLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_bc

    if-eqz v1, :cond_46

    const/4 v2, 0x2

    :cond_46
    :goto_46
    const-string v1, "bannerAdSize"

    if-eqz v2, :cond_8d

    if-eq v2, v7, :cond_88

    if-eq v2, v6, :cond_83

    if-eq v2, v5, :cond_7d

    if-eq v2, v4, :cond_53

    goto :goto_92

    :cond_53
    const/4 v2, 0x6

    :try_start_54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "custom_banner_size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_79
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_92

    :cond_7d
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_79

    :cond_83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_79

    :cond_88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_79

    :cond_8d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_79

    :goto_92
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->isAdaptive()Z

    move-result p1

    if-eqz p1, :cond_c6

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_9c} :catch_bc

    const-string v1, "Adaptive=true"

    if-eqz p1, :cond_b8

    :try_start_a0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b8
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_bb} :catch_bc

    goto :goto_c6

    :catch_bc
    move-exception p0

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_c6
    :goto_c6
    return-void

    nop

    :sswitch_data_c8
    .sparse-switch
        -0x171242b1 -> :sswitch_3d
        0x44dc31b -> :sswitch_33
        0x4b59da9 -> :sswitch_29
        0x7458732c -> :sswitch_1f
        0x77297f71 -> :sswitch_15
    .end sparse-switch
.end method

.method static b(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/m1;Lcom/ironsource/mediationsdk/l$b;)V
    .registers 7

    invoke-static {p0}, Lcom/ironsource/mediationsdk/l;->d(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "can\'t load banner - %s"

    if-nez v0, :cond_1a

    new-array v0, v2, [Ljava/lang/Object;

    if-nez p0, :cond_11

    const-string p0, "banner is null"

    goto :goto_13

    :cond_11
    const-string p0, "banner is destroyed"

    :goto_13
    aput-object p0, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_27
    new-array p0, v2, [Ljava/lang/Object;

    if-nez p1, :cond_2e

    const-string p1, "placement is null"

    goto :goto_30

    :cond_2e
    const-string p1, "placement name is empty"

    :goto_30
    aput-object p1, p0, v1

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_45

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/ironsource/mediationsdk/l$b;->a(Ljava/lang/String;)V

    goto :goto_48

    :cond_45
    invoke-interface {p2}, Lcom/ironsource/mediationsdk/l$b;->a()V

    :goto_48
    return-void
.end method

.method static c(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/l$b;)V
    .registers 4

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    invoke-interface {p1}, Lcom/ironsource/mediationsdk/l$b;->a()V

    goto :goto_23

    :cond_d
    :goto_d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p0, :cond_16

    const-string p0, "banner is null"

    goto :goto_18

    :cond_16
    const-string p0, "banner is destroyed"

    :goto_18
    aput-object p0, v0, v1

    const-string p0, "can\'t destroy banner - %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/ironsource/mediationsdk/l$b;->a(Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method static d(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Z
    .registers 1

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
