###### Class com.json.mediationsdk.utils.b (com.ironsource.mediationsdk.utils.b)
.class public Lcom/ironsource/mediationsdk/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/utils/b$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/ironsource/oa;)J
    .registers 9

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/utils/b$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/16 v1, 0xb

    const/16 v2, 0xc

    const/16 v3, 0xd

    const/16 v4, 0xe

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p0, v5, :cond_2f

    const/4 v7, 0x2

    if-eq p0, v7, :cond_22

    goto :goto_3f

    :cond_22
    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_3f

    :cond_2f
    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x6

    invoke-virtual {v0, p0, v5}, Ljava/util/Calendar;->add(II)V

    :goto_3f
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/ironsource/m1;)V
    .registers 5

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_8

    goto :goto_1e

    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/na;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1b

    if-nez v1, :cond_10

    monitor-exit v0

    return-void

    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Banner"

    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/b;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/na;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .registers 5

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_8

    goto :goto_1e

    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/na;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1b

    if-nez v1, :cond_10

    monitor-exit v0

    return-void

    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Interstitial"

    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/b;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/na;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 5

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_8

    goto :goto_1e

    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/na;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1b

    if-nez v1, :cond_10

    monitor-exit v0

    return-void

    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Rewarded Video"

    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/b;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/na;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/ironsource/n9;)V
    .registers 5

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_8

    goto :goto_1e

    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/na;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1b

    if-nez v1, :cond_10

    monitor-exit v0

    return-void

    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Native Ad"

    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/b;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/na;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "Banner"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    :try_start_3
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/b;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/ironsource/mediationsdk/utils/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p0, v0, :cond_7

    const-string p0, "Rewarded Video"

    goto :goto_20

    :cond_7
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p0, v0, :cond_e

    const-string p0, "Interstitial"

    goto :goto_20

    :cond_e
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p0, v0, :cond_15

    const-string p0, "Banner"

    goto :goto_20

    :cond_15
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->NATIVE_AD:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p0, v0, :cond_1c

    const-string p0, "Native Ad"

    goto :goto_20

    :cond_1c
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_20
    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    if-eqz p1, :cond_12

    :try_start_5
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Interstitial"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    goto :goto_12

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_12
    :goto_12
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    if-eqz p1, :cond_12

    :try_start_5
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Rewarded Video"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    goto :goto_12

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_12
    :goto_12
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    :try_start_3
    const-string v1, "Interstitial"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    :try_start_3
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/b;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/ironsource/mediationsdk/utils/b;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/b$b;

    move-result-object p0

    sget-object p1, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14

    if-eq p0, p1, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)Lcom/ironsource/mediationsdk/utils/b$b;
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    :try_start_7
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/na;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_1a

    :cond_e
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Interstitial"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/b;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/b$b;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1e

    monitor-exit v0

    return-object p0

    :cond_1a
    :goto_1a
    :try_start_1a
    sget-object p0, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/b$b;
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    :try_start_7
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/na;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_1a

    :cond_e
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BasePlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Rewarded Video"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/b;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/b$b;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1e

    monitor-exit v0

    return-object p0

    :cond_1a
    :goto_1a
    :try_start_1a
    sget-object p0, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object p0

    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    :try_start_3
    const-string v1, "Rewarded Video"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string v0, "CappingManager.IS_PACING_ENABLED"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->n(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1a
    const-string v0, "CappingManager.IS_CAPPING_ENABLED"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "CappingManager.MAX_NUMBER_OF_SHOWS"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->i(Landroid/content/Context;Ljava/lang/String;I)I

    const-string v0, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->i(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3e

    const/4 v4, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v4, 0x0

    :goto_3f
    if-eqz v4, :cond_75

    const-string v4, "CappingManager.CAPPING_TYPE"

    invoke-static {p1, v4, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ironsource/oa;->b:Lcom/ironsource/oa;

    invoke-virtual {v5}, Lcom/ironsource/oa;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/ironsource/oa;->values()[Lcom/ironsource/oa;

    move-result-object v6

    array-length v7, v6

    :goto_57
    if-ge v1, v7, :cond_68

    aget-object v8, v6, v1

    iget-object v9, v8, Lcom/ironsource/oa;->a:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_65

    move-object v5, v8

    goto :goto_68

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_68
    :goto_68
    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/b;->a(Lcom/ironsource/oa;)J

    move-result-wide v4

    const-string v1, "CappingManager.CAPPING_TIME_THRESHOLD"

    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->n(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_75
    add-int/2addr v2, v3

    invoke-static {p0, v0, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->m(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_79
    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    :try_start_3
    const-string v1, "Banner"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/b;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/b$b;

    move-result-object p0

    sget-object p1, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    if-eq p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/na;)V
    .registers 6

    invoke-virtual {p3}, Lcom/ironsource/na;->e()Z

    move-result v0

    const-string v1, "CappingManager.IS_DELIVERY_ENABLED"

    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->l(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-virtual {p3}, Lcom/ironsource/na;->d()Z

    move-result v0

    const-string v1, "CappingManager.IS_CAPPING_ENABLED"

    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->l(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_3d

    invoke-virtual {p3}, Lcom/ironsource/na;->b()I

    move-result v0

    const-string v1, "CappingManager.MAX_NUMBER_OF_SHOWS"

    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->m(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p3}, Lcom/ironsource/na;->a()Lcom/ironsource/oa;

    move-result-object v0

    const-string v1, "CappingManager.CAPPING_TYPE"

    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/oa;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    invoke-virtual {p3}, Lcom/ironsource/na;->f()Z

    move-result v0

    const-string v1, "CappingManager.IS_PACING_ENABLED"

    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->l(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_59

    invoke-virtual {p3}, Lcom/ironsource/na;->c()I

    move-result p3

    const-string v0, "CappingManager.SECONDS_BETWEEN_SHOWS"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->m(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_59
    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    :try_start_3
    const-string v1, "Interstitial"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/b;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/b$b;

    move-result-object p0

    sget-object p1, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    if-eq p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/b$b;
    .registers 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "CappingManager.IS_DELIVERY_ENABLED"

    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_14

    sget-object p0, Lcom/ironsource/mediationsdk/utils/b$b;->a:Lcom/ironsource/mediationsdk/utils/b$b;

    return-object p0

    :cond_14
    const-string v2, "CappingManager.IS_PACING_ENABLED"

    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_43

    const-string v2, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->j(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v2, "CappingManager.SECONDS_BETWEEN_SHOWS"

    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->i(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sub-long v6, v0, v6

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-gez v2, :cond_43

    sget-object p0, Lcom/ironsource/mediationsdk/utils/b$b;->c:Lcom/ironsource/mediationsdk/utils/b$b;

    return-object p0

    :cond_43
    const-string v2, "CappingManager.IS_CAPPING_ENABLED"

    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string v2, "CappingManager.MAX_NUMBER_OF_SHOWS"

    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->i(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v6, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    invoke-static {p1, v6, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->i(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "CappingManager.CAPPING_TIME_THRESHOLD"

    invoke-static {p1, v8, p2}, Lcom/ironsource/mediationsdk/utils/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->j(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long p2, v0, v8

    if-ltz p2, :cond_78

    invoke-static {p0, v6, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->m(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {p0, p1, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->n(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_7d

    :cond_78
    if-lt v7, v2, :cond_7d

    sget-object p0, Lcom/ironsource/mediationsdk/utils/b$b;->b:Lcom/ironsource/mediationsdk/utils/b$b;

    return-object p0

    :cond_7d
    :goto_7d
    sget-object p0, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;

    return-object p0
.end method

.method public static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-class v0, Lcom/ironsource/mediationsdk/utils/b;

    monitor-enter v0

    :try_start_3
    const-string v1, "Rewarded Video"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/b;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/b$b;

    move-result-object p0

    sget-object p1, Lcom/ironsource/mediationsdk/utils/b$b;->d:Lcom/ironsource/mediationsdk/utils/b$b;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    if-eq p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method
