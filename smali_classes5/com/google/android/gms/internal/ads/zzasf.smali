###### Class com.google.android.gms.internal.ads.zzasf (com.google.android.gms.internal.ads.zzasf)
.class public abstract Lcom/google/android/gms/internal/ads/zzasf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzase;


# static fields
.field protected static volatile zza:Lcom/google/android/gms/internal/ads/zzatj;


# instance fields
.field protected zzb:Landroid/view/MotionEvent;

.field protected final zzc:Ljava/util/LinkedList;

.field protected zzd:J

.field protected zze:J

.field protected zzf:J

.field protected zzg:J

.field protected zzh:J

.field protected zzi:J

.field protected zzj:J

.field protected zzk:D

.field protected zzl:F

.field protected zzm:F

.field protected zzn:F

.field protected zzo:F

.field protected zzp:Z

.field protected zzq:Landroid/util/DisplayMetrics;

.field protected zzr:Lcom/google/android/gms/internal/ads/zzatb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzs:D

.field private zzt:D

.field private zzu:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzc:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzi:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzj:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzu:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzp:Z

    :try_start_1f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaqx;->zzd()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzq:Landroid/util/DisplayMetrics;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdc;->zzcx:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_45

    new-instance p1, Lcom/google/android/gms/internal/ads/zzatb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzatb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzr:Lcom/google/android/gms/internal/ads/zzatb;
    :try_end_45
    .catchall {:try_start_1f .. :try_end_45} :catchall_45

    :catchall_45
    :cond_45
    return-void
.end method

.method private final zzj()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzi:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzc:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzc:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1e

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzc:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_3b

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzb:Landroid/view/MotionEvent;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzb:Landroid/view/MotionEvent;

    return-void
.end method

.method private final zzm(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbdc;->zzcp:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_30

    sget-object v9, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzatj;

    if-eqz v9, :cond_2c

    sget-object v9, Lcom/google/android/gms/internal/ads/zzasf;->zza:Lcom/google/android/gms/internal/ads/zzatj;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzatj;->zzd()Lcom/google/android/gms/internal/ads/zzasd;

    move-result-object v9

    goto :goto_2d

    :cond_2c
    move-object v9, v8

    :goto_2d
    const-string v10, "be"

    goto :goto_32

    :cond_30
    move-object v9, v8

    move-object v10, v9

    :goto_32
    const/4 v14, 0x1

    const/4 v15, 0x2

    const/4 v13, 0x3

    if-ne v2, v13, :cond_4e

    :try_start_37
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzasf;->zzb(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzapg;

    move-result-object v8
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3b} :catch_49

    :try_start_3b
    iput-boolean v14, v1, Lcom/google/android/gms/internal/ads/zzasf;->zzu:Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3d} :catch_42

    const/16 v0, 0x3ea

    const/16 v12, 0x3ea

    goto :goto_63

    :catch_42
    move-exception v0

    move-object/from16 v17, v0

    const/4 v1, 0x3

    const/16 v18, 0x1

    goto :goto_82

    :catch_49
    move-exception v0

    const/4 v1, 0x3

    const/16 v18, 0x1

    goto :goto_80

    :cond_4e
    if-ne v2, v15, :cond_5a

    :try_start_50
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzasf;->zzd(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzapg;

    move-result-object v0

    const/16 v3, 0x3f0

    move-object v8, v0

    const/16 v12, 0x3f0

    goto :goto_63

    :cond_5a
    invoke-virtual {v1, v0, v8}, Lcom/google/android/gms/internal/ads/zzasf;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaoz;)Lcom/google/android/gms/internal/ads/zzapg;

    move-result-object v0

    const/16 v3, 0x3e8

    move-object v8, v0

    const/16 v12, 0x3e8

    :goto_63
    if-eqz v7, :cond_7d

    if-eqz v9, :cond_7d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_6b} :catch_49

    sub-long/2addr v3, v5

    const/4 v0, -0x1

    const/16 v17, 0x0

    move-object v11, v9

    const/4 v1, 0x3

    move v13, v0

    const/16 v18, 0x1

    move-wide v14, v3

    move-object/from16 v16, v10

    :try_start_77
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzasd;->zzc(IIJLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_7e

    :catch_7b
    move-exception v0

    goto :goto_80

    :cond_7d
    const/4 v1, 0x3

    :cond_7e
    :goto_7e
    const/4 v3, 0x2

    goto :goto_a7

    :goto_80
    move-object/from16 v17, v0

    :goto_82
    if-eqz v7, :cond_7e

    if-eqz v9, :cond_7e

    if-ne v2, v1, :cond_8e

    const/16 v0, 0x3eb

    const/4 v3, 0x2

    const/16 v12, 0x3eb

    goto :goto_9b

    :cond_8e
    const/4 v3, 0x2

    if-ne v2, v3, :cond_96

    const/16 v0, 0x3f1

    const/16 v12, 0x3f1

    goto :goto_9b

    :cond_96
    const/16 v0, 0x3e9

    const/4 v2, 0x1

    const/16 v12, 0x3e9

    :goto_9b
    const/4 v13, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v5

    move-object v11, v9

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzasd;->zzc(IIJLjava/lang/String;Ljava/lang/Exception;)V

    :goto_a7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v8, :cond_f2

    :try_start_ad
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgwi;->zzal()Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwm;->zzaz()I

    move-result v0

    if-nez v0, :cond_ba

    goto :goto_f2

    :cond_ba
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgwi;->zzal()Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqd;

    sget v6, Lcom/google/android/gms/internal/ads/zzaqx;->zzc:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgun;->zzax()[B

    move-result-object v0

    move-object/from16 v6, p2

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzaqx;->zza([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_123

    if-eqz v9, :cond_123

    if-ne v2, v1, :cond_d7

    const/16 v6, 0x3ee

    const/16 v12, 0x3ee

    goto :goto_e2

    :cond_d7
    if-ne v2, v3, :cond_de

    const/16 v6, 0x3f2

    const/16 v12, 0x3f2

    goto :goto_e2

    :cond_de
    const/16 v6, 0x3ec

    const/16 v12, 0x3ec

    :goto_e2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v14, v13, v4

    const/4 v13, -0x1

    const/16 v17, 0x0

    move-object v11, v9

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzasd;->zzc(IIJLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_123

    :cond_f2
    :goto_f2
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_f7} :catch_f8

    goto :goto_123

    :catch_f8
    move-exception v0

    move-object/from16 v17, v0

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_123

    if-eqz v9, :cond_123

    if-ne v2, v1, :cond_10b

    const/16 v1, 0x3ef

    const/16 v12, 0x3ef

    goto :goto_116

    :cond_10b
    if-ne v2, v3, :cond_112

    const/16 v1, 0x3f3

    const/16 v12, 0x3f3

    goto :goto_116

    :cond_112
    const/16 v1, 0x3ed

    const/16 v12, 0x3ed

    :goto_116
    const/4 v13, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v14, v1, v4

    move-object v11, v9

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzasd;->zzc(IIJLjava/lang/String;Ljava/lang/Exception;)V

    :cond_123
    :goto_123
    return-object v0
.end method


# virtual methods
.method protected abstract zza([Ljava/lang/StackTraceElement;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzasz;
        }
    .end annotation
.end method

.method protected abstract zzb(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzapg;
.end method

.method protected abstract zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaoz;)Lcom/google/android/gms/internal/ads/zzapg;
.end method

.method protected abstract zzd(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzapg;
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .registers 11
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasf;->zzm(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 12
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasf;->zzm(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatm;->zzc()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzasf;->zzm(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The caller must not be called from the UI thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 11
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasf;->zzm(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract zzi(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/zzatl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzasz;
        }
    .end annotation
.end method

.method public final declared-synchronized zzk(Landroid/view/MotionEvent;)V
    .registers 15
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzu:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasf;->zzj()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzu:Z

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3d

    if-eq v0, v2, :cond_18

    if-eq v0, v1, :cond_18

    goto :goto_4f

    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v5, v0

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzs:D

    sub-double v7, v3, v7

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzt:D

    sub-double v9, v5, v9

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzk:D

    mul-double v7, v7, v7

    mul-double v9, v9, v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v11, v7

    iput-wide v11, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzk:D

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzs:D

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzt:D

    goto :goto_4f

    :cond_3d
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzk:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v3, v0

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzs:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v3, v0

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzt:D

    :goto_4f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v3, 0x1

    if-eqz v0, :cond_df

    if-eq v0, v2, :cond_ab

    if-eq v0, v1, :cond_67

    const/4 p1, 0x3

    if-eq v0, p1, :cond_60

    goto/16 :goto_fc

    :cond_60
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzg:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzg:J

    goto/16 :goto_fc

    :cond_67
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zze:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    add-int/2addr v3, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zze:J
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_100

    :try_start_72
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzasf;->zzi(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/zzatl;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzd:Ljava/lang/Long;

    if-eqz v0, :cond_8e

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzg:Ljava/lang/Long;

    if-eqz v1, :cond_8e

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzi:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzg:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v0, v5

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzi:J

    :cond_8e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzq:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_fc

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatl;->zze:Ljava/lang/Long;

    if-eqz v0, :cond_fc

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzh:Ljava/lang/Long;

    if-eqz v1, :cond_fc

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzj:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzh:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v0, v5

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzj:J
    :try_end_aa
    .catch Lcom/google/android/gms/internal/ads/zzasz; {:try_start_72 .. :try_end_aa} :catch_fc
    .catchall {:try_start_72 .. :try_end_aa} :catchall_100

    goto :goto_fc

    :cond_ab
    :try_start_ab
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzb:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzc:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzc:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_ca

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzc:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_ca
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzf:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzf:J
    :try_end_cf
    .catchall {:try_start_ab .. :try_end_cf} :catchall_100

    :try_start_cf
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzasf;->zza([Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzh:J
    :try_end_de
    .catch Lcom/google/android/gms/internal/ads/zzasz; {:try_start_cf .. :try_end_de} :catch_fc
    .catchall {:try_start_cf .. :try_end_de} :catchall_100

    goto :goto_fc

    :cond_df
    :try_start_df
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzl:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzm:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzn:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzo:F

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzd:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzd:J

    :catch_fc
    :cond_fc
    :goto_fc
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzp:Z
    :try_end_fe
    .catchall {:try_start_df .. :try_end_fe} :catchall_100

    monitor-exit p0

    return-void

    :catchall_100
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzl(III)V
    .registers 20

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzasf;->zzb:Landroid/view/MotionEvent;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdc;->zzcn:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzasf;->zzj()V

    goto :goto_22

    :cond_1d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzasf;->zzb:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_22
    :goto_22
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzasf;->zzq:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_46

    const-wide/16 v2, 0x0

    move/from16 v4, p3

    int-to-long v4, v4

    const/4 v6, 0x1

    move/from16 v7, p1

    int-to-float v7, v7

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v0

    move/from16 v8, p2

    int-to-float v8, v8

    mul-float v8, v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzasf;->zzb:Landroid/view/MotionEvent;

    goto :goto_49

    :cond_46
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzasf;->zzb:Landroid/view/MotionEvent;

    :goto_49
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzasf;->zzp:Z
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4e

    monitor-exit p0

    return-void

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzn([Ljava/lang/StackTraceElement;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdc;->zzcx:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasf;->zzr:Lcom/google/android/gms/internal/ads/zzatb;

    if-eqz v0, :cond_1d

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzatb;->zzb(Ljava/util/List;)V

    :cond_1d
    return-void
.end method

.method public zzo(Landroid/view/View;)V
    .registers 2

    return-void
.end method
