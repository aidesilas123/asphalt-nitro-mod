###### Class com.google.android.gms.internal.ads.zzor (com.google.android.gms.internal.ads.zzor)
.class public final Lcom/google/android/gms/internal/ads/zzor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzmm;
.implements Lcom/google/android/gms/internal/ads/zzos;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzot;

.field private final zzc:Landroid/media/metrics/PlaybackSession;

.field private final zzd:J

.field private final zze:Lcom/google/android/gms/internal/ads/zzcz;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcx;

.field private final zzg:Ljava/util/HashMap;

.field private final zzh:Ljava/util/HashMap;

.field private zzi:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:Landroid/media/metrics/PlaybackMetrics$Builder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzch;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzo:Lcom/google/android/gms/internal/ads/zzoq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzp:Lcom/google/android/gms/internal/ads/zzoq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzq:Lcom/google/android/gms/internal/ads/zzoq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzr:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzs:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzt:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzu:Z

.field private zzv:Z

.field private zzw:I

.field private zzx:I

.field private zzy:I

.field private zzz:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzc:Landroid/media/metrics/PlaybackSession;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zze:Lcom/google/android/gms/internal/ads/zzcz;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzf:Lcom/google/android/gms/internal/ads/zzcx;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzh:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzg:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzd:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzl:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzm:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzop;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzop;->zza:Lcom/google/android/gms/internal/ads/zzfuo;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzop;-><init>(Lcom/google/android/gms/internal/ads/zzfuo;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzot;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzot;->zzh(Lcom/google/android/gms/internal/ads/zzos;)V

    return-void
.end method

.method public static zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzor;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaMetricsManager;

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzor;

    invoke-virtual {v0}, Landroid/media/metrics/MediaMetricsManager;->createPlaybackSession()Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    return-object v1
.end method

.method private static zzr(I)I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfs;->zzi(I)I

    move-result p0

    packed-switch p0, :pswitch_data_16

    const/16 p0, 0x1b

    return p0

    :pswitch_a
    const/16 p0, 0x1a

    return p0

    :pswitch_d
    const/16 p0, 0x19

    return p0

    :pswitch_10
    const/16 p0, 0x1c

    return p0

    :pswitch_13
    const/16 p0, 0x18

    return p0

    :pswitch_data_16
    .packed-switch 0x1772
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private final zzs()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzz:Z

    if-eqz v2, :cond_69

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzy:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzw:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzx:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzg:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_2e

    move-wide v5, v3

    goto :goto_32

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_32
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzh:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_45

    move-wide v5, v3

    goto :goto_49

    :cond_45
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_49
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_5a

    const/4 v0, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v0, 0x0

    :goto_5b
    invoke-virtual {v2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzc:Landroid/media/metrics/PlaybackSession;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-virtual {v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->build()Landroid/media/metrics/PlaybackMetrics;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V

    :cond_69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzi:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzy:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzw:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzx:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzr:Lcom/google/android/gms/internal/ads/zzam;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzs:Lcom/google/android/gms/internal/ads/zzam;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzt:Lcom/google/android/gms/internal/ads/zzam;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzz:Z

    return-void
.end method

.method private final zzt(JLcom/google/android/gms/internal/ads/zzam;I)V
    .registers 11
    .param p3    # Lcom/google/android/gms/internal/ads/zzam;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzor;->zzs:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {p4, p3}, Lcom/google/android/gms/internal/ads/zzfs;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    return-void

    :cond_9
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzor;->zzs:Lcom/google/android/gms/internal/ads/zzam;

    if-nez p4, :cond_10

    const/4 p4, 0x1

    const/4 v5, 0x1

    goto :goto_12

    :cond_10
    const/4 p4, 0x0

    const/4 v5, 0x0

    :goto_12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzor;->zzs:Lcom/google/android/gms/internal/ads/zzam;

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzor;->zzx(IJLcom/google/android/gms/internal/ads/zzam;I)V

    return-void
.end method

.method private final zzu(JLcom/google/android/gms/internal/ads/zzam;I)V
    .registers 11
    .param p3    # Lcom/google/android/gms/internal/ads/zzam;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzor;->zzt:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {p4, p3}, Lcom/google/android/gms/internal/ads/zzfs;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    return-void

    :cond_9
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzor;->zzt:Lcom/google/android/gms/internal/ads/zzam;

    if-nez p4, :cond_10

    const/4 p4, 0x1

    const/4 v5, 0x1

    goto :goto_12

    :cond_10
    const/4 p4, 0x0

    const/4 v5, 0x0

    :goto_12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzor;->zzt:Lcom/google/android/gms/internal/ads/zzam;

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzor;->zzx(IJLcom/google/android/gms/internal/ads/zzam;I)V

    return-void
.end method

.method private final zzv(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;)V
    .registers 10
    .param p2    # Lcom/google/android/gms/internal/ads/zzuk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_6

    goto/16 :goto_75

    :cond_6
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzuk;->zza:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzda;->zza(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_75

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzf:Lcom/google/android/gms/internal/ads/zzcx;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzda;->zzd(ILcom/google/android/gms/internal/ads/zzcx;Z)Lcom/google/android/gms/internal/ads/zzcx;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzf:Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzor;->zze:Lcom/google/android/gms/internal/ads/zzcz;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzcx;->zzd:I

    const-wide/16 v3, 0x0

    invoke-virtual {p1, p2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzda;->zze(ILcom/google/android/gms/internal/ads/zzcz;J)Lcom/google/android/gms/internal/ads/zzcz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zze:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcz;->zze:Lcom/google/android/gms/internal/ads/zzbs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbs;->zzd:Lcom/google/android/gms/internal/ads/zzbl;

    const/4 p2, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2b

    goto :goto_3e

    :cond_2b
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbl;->zzb:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfs;->zzm(Landroid/net/Uri;)I

    move-result p1

    if-eqz p1, :cond_3d

    if-eq p1, v1, :cond_3b

    if-eq p1, p2, :cond_39

    const/4 v2, 0x1

    goto :goto_3e

    :cond_39
    const/4 v2, 0x4

    goto :goto_3e

    :cond_3b
    const/4 v2, 0x5

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x3

    :goto_3e
    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zze:Lcom/google/android/gms/internal/ads/zzcz;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzcz;->zzo:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_67

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzcz;->zzm:Z

    if-nez v2, :cond_67

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzcz;->zzj:Z

    if-nez v2, :cond_67

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcz;->zzb()Z

    move-result p1

    if-nez p1, :cond_67

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zze:Lcom/google/android/gms/internal/ads/zzcz;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzcz;->zzo:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfs;->zzt(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/media/metrics/PlaybackMetrics$Builder;->setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_67
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zze:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcz;->zzb()Z

    move-result p1

    if-eq v1, p1, :cond_70

    const/4 p2, 0x1

    :cond_70
    invoke-virtual {v0, p2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzz:Z

    :cond_75
    :goto_75
    return-void
.end method

.method private final zzw(JLcom/google/android/gms/internal/ads/zzam;I)V
    .registers 11
    .param p3    # Lcom/google/android/gms/internal/ads/zzam;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzor;->zzr:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {p4, p3}, Lcom/google/android/gms/internal/ads/zzfs;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    return-void

    :cond_9
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzor;->zzr:Lcom/google/android/gms/internal/ads/zzam;

    if-nez p4, :cond_10

    const/4 p4, 0x1

    const/4 v5, 0x1

    goto :goto_12

    :cond_10
    const/4 p4, 0x0

    const/4 v5, 0x0

    :goto_12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzor;->zzr:Lcom/google/android/gms/internal/ads/zzam;

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzor;->zzx(IJLcom/google/android/gms/internal/ads/zzam;I)V

    return-void
.end method

.method private final zzx(IJLcom/google/android/gms/internal/ads/zzam;I)V
    .registers 9
    .param p4    # Lcom/google/android/gms/internal/ads/zzam;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-direct {v0, p1}, Landroid/media/metrics/TrackChangeEvent$Builder;-><init>(I)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzd:J

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_8a

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    const/4 v0, 0x2

    if-eq p5, p3, :cond_18

    const/4 p5, 0x1

    goto :goto_19

    :cond_18
    const/4 p5, 0x2

    :goto_19
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzam;->zzl:Ljava/lang/String;

    if-eqz p5, :cond_23

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_23
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    if-eqz p5, :cond_2a

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_2a
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzam;->zzj:Ljava/lang/String;

    if-eqz p5, :cond_31

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_31
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    const/4 v1, -0x1

    if-eq p5, v1, :cond_39

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_39
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    if-eq p5, v1, :cond_40

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_40
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    if-eq p5, v1, :cond_47

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_47
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    if-eq p5, v1, :cond_4e

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_4e
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    if-eq p5, v1, :cond_55

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_55
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzam;->zzd:Ljava/lang/String;

    if-eqz p5, :cond_7e

    sget v2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const-string v2, "-"

    invoke-virtual {p5, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p5

    aget-object p2, p5, p2

    array-length v1, p5

    if-lt v1, v0, :cond_69

    aget-object p5, p5, p3

    goto :goto_6a

    :cond_69
    const/4 p5, 0x0

    :goto_6a
    invoke-static {p2, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    iget-object p5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_7e

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_7e
    iget p2, p4, Lcom/google/android/gms/internal/ads/zzam;->zzt:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p2, p4

    if-eqz p4, :cond_8d

    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_8d

    :cond_8a
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_8d
    :goto_8d
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzor;->zzz:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzc:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p1}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/metrics/PlaybackSession;->reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method private final zzy(Lcom/google/android/gms/internal/ads/zzoq;)Z
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/ads/zzoq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzot;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzoq;->zzc:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzot;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final zza()Landroid/media/metrics/LogSessionId;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzc:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0}, Landroid/media/metrics/PlaybackSession;->getSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzmk;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzd:Lcom/google/android/gms/internal/ads/zzuk;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzor;->zzs()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzi:Ljava/lang/String;

    new-instance p2, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-direct {p2}, Landroid/media/metrics/PlaybackMetrics$Builder;-><init>()V

    const-string v0, "AndroidXMedia3"

    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v0, "1.2.0-beta01"

    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzb:Lcom/google/android/gms/internal/ads/zzda;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzd:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzor;->zzv(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzmk;Ljava/lang/String;Z)V
    .registers 4

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzd:Lcom/google/android/gms/internal/ads/zzuk;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzuk;->zzb()Z

    move-result p1

    if-nez p1, :cond_15

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzi:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzor;->zzs()V

    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzg:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzh:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzim;)V
    .registers 4

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzmk;IJJ)V
    .registers 12

    iget-object p5, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzd:Lcom/google/android/gms/internal/ads/zzuk;

    if-eqz p5, :cond_42

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzot;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzb:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzh:Ljava/util/HashMap;

    invoke-interface {p6, p1, p5}, Lcom/google/android/gms/internal/ads/zzot;->zzf(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzor;->zzg:Ljava/util/HashMap;

    invoke-virtual {p6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzh:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    if-nez p5, :cond_24

    move-wide v3, v1

    goto :goto_28

    :cond_24
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_28
    add-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzor;->zzg:Ljava/util/HashMap;

    if-nez p6, :cond_35

    goto :goto_39

    :cond_35
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_39
    int-to-long p4, p2

    add-long/2addr v1, p4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzug;)V
    .registers 8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzd:Lcom/google/android/gms/internal/ads/zzuk;

    if-nez v0, :cond_5

    goto :goto_25

    :cond_5
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzug;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzoq;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzot;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmk;->zzb:Lcom/google/android/gms/internal/ads/zzda;

    invoke-interface {v4, p1, v0}, Lcom/google/android/gms/internal/ads/zzot;->zzf(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Lcom/google/android/gms/internal/ads/zzam;ILjava/lang/String;)V

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzug;->zza:I

    if-eqz p1, :cond_2c

    const/4 p2, 0x1

    if-eq p1, p2, :cond_29

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2c

    const/4 p2, 0x3

    if-eq p1, p2, :cond_26

    :goto_25
    return-void

    :cond_26
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzq:Lcom/google/android/gms/internal/ads/zzoq;

    return-void

    :cond_29
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzp:Lcom/google/android/gms/internal/ads/zzoq;

    return-void

    :cond_2c
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzo:Lcom/google/android/gms/internal/ads/zzoq;

    return-void
.end method

.method public final synthetic zzh(Lcom/google/android/gms/internal/ads/zzmk;IJ)V
    .registers 5

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzcr;Lcom/google/android/gms/internal/ads/zzml;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzml;->zzb()I

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_3f0

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzml;->zzb()I

    move-result v4

    const/16 v5, 0xb

    if-ge v3, v4, :cond_38

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzml;->zza(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzml;->zzc(I)Lcom/google/android/gms/internal/ads/zzmk;

    move-result-object v6

    if-nez v4, :cond_26

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzot;

    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/ads/zzot;->zzk(Lcom/google/android/gms/internal/ads/zzmk;)V

    goto :goto_35

    :cond_26
    if-ne v4, v5, :cond_30

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzot;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzor;->zzk:I

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzot;->zzj(Lcom/google/android/gms/internal/ads/zzmk;I)V

    goto :goto_35

    :cond_30
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzot;

    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/ads/zzot;->zzi(Lcom/google/android/gms/internal/ads/zzmk;)V

    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzml;->zzd(I)Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzml;->zzc(I)Lcom/google/android/gms/internal/ads/zzmk;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v7, :cond_51

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzmk;->zzb:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzmk;->zzd:Lcom/google/android/gms/internal/ads/zzuk;

    invoke-direct {v0, v7, v6}, Lcom/google/android/gms/internal/ads/zzor;->zzv(Lcom/google/android/gms/internal/ads/zzda;Lcom/google/android/gms/internal/ads/zzuk;)V

    :cond_51
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzml;->zzd(I)Z

    move-result v7

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_c7

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v7, :cond_c7

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcr;->zzo()Lcom/google/android/gms/internal/ads/zzdn;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdn;->zza()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_6c
    if-ge v13, v12, :cond_90

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzdm;

    const/4 v15, 0x0

    :goto_75
    iget v5, v14, Lcom/google/android/gms/internal/ads/zzdm;->zzb:I

    add-int/lit8 v5, v13, 0x1

    if-gtz v15, :cond_8c

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzdm;->zzd(I)Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzdm;->zzb(I)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzam;->zzp:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v5, :cond_8a

    goto :goto_91

    :cond_8a
    const/4 v15, 0x1

    goto :goto_75

    :cond_8c
    move v13, v5

    const/16 v5, 0xb

    goto :goto_6c

    :cond_90
    move-object v5, v10

    :goto_91
    if-eqz v5, :cond_c7

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzor;->zzj:Landroid/media/metrics/PlaybackMetrics$Builder;

    sget v12, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/4 v12, 0x0

    :goto_98
    iget v13, v5, Lcom/google/android/gms/internal/ads/zzad;->zzb:I

    if-ge v12, v13, :cond_c3

    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzad;->zza(I)Lcom/google/android/gms/internal/ads/zzac;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzac;->zza:Ljava/util/UUID;

    sget-object v14, Lcom/google/android/gms/internal/ads/zzo;->zzd:Ljava/util/UUID;

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ac

    const/4 v5, 0x3

    goto :goto_c4

    :cond_ac
    sget-object v14, Lcom/google/android/gms/internal/ads/zzo;->zze:Ljava/util/UUID;

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b6

    const/4 v5, 0x2

    goto :goto_c4

    :cond_b6
    sget-object v14, Lcom/google/android/gms/internal/ads/zzo;->zzc:Ljava/util/UUID;

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c0

    const/4 v5, 0x6

    goto :goto_c4

    :cond_c0
    add-int/lit8 v12, v12, 0x1

    goto :goto_98

    :cond_c3
    const/4 v5, 0x1

    :goto_c4
    invoke-virtual {v7, v5}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_c7
    const/16 v5, 0x3f3

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzml;->zzd(I)Z

    move-result v5

    if-eqz v5, :cond_d4

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzor;->zzy:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzor;->zzy:I

    :cond_d4
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzor;->zzn:Lcom/google/android/gms/internal/ads/zzch;

    const/16 v16, 0x9

    if-nez v5, :cond_dc

    goto/16 :goto_29a

    :cond_dc
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzor;->zza:Landroid/content/Context;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzch;->zzb:I

    const/16 v12, 0x3e9

    const/16 v17, 0xe

    const/16 v18, 0x23

    const/16 v19, 0x1f

    const/16 v13, 0x15

    const/16 v14, 0x17

    if-ne v8, v12, :cond_f4

    const/16 v17, 0x14

    const/16 v14, 0x14

    goto/16 :goto_274

    :cond_f4
    move-object v8, v5

    check-cast v8, Lcom/google/android/gms/internal/ads/zzit;

    iget v12, v8, Lcom/google/android/gms/internal/ads/zzit;->zze:I

    if-ne v12, v11, :cond_fd

    const/4 v12, 0x1

    goto :goto_fe

    :cond_fd
    const/4 v12, 0x0

    :goto_fe
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzit;->zzi:I

    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v2, v15, Ljava/io/IOException;

    if-eqz v2, :cond_203

    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzhl;

    if-eqz v2, :cond_116

    check-cast v15, Lcom/google/android/gms/internal/ads/zzhl;

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzhl;->zzd:I

    const/4 v14, 0x5

    goto/16 :goto_274

    :cond_116
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzhk;

    if-nez v2, :cond_1fe

    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzcf;

    if-eqz v2, :cond_120

    goto/16 :goto_1fe

    :cond_120
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzhj;

    if-nez v2, :cond_1cb

    instance-of v8, v15, Lcom/google/android/gms/internal/ads/zzht;

    if-eqz v8, :cond_12a

    goto/16 :goto_1cb

    :cond_12a
    iget v2, v5, Lcom/google/android/gms/internal/ads/zzch;->zzb:I

    const/16 v7, 0x3ea

    if-ne v2, v7, :cond_135

    const/4 v2, 0x0

    const/16 v14, 0x15

    goto/16 :goto_274

    :cond_135
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzrj;

    if-eqz v2, :cond_193

    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v7, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    if-lt v7, v13, :cond_158

    instance-of v8, v2, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v8, :cond_158

    check-cast v2, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v2}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfs;->zzj(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzor;->zzr(I)I

    move-result v17

    goto/16 :goto_26c

    :cond_158
    if-lt v7, v14, :cond_165

    instance-of v7, v2, Landroid/media/MediaDrmResetException;

    if-eqz v7, :cond_165

    const/16 v17, 0x1b

    const/4 v2, 0x0

    const/16 v14, 0x1b

    goto/16 :goto_274

    :cond_165
    instance-of v7, v2, Landroid/media/NotProvisionedException;

    if-eqz v7, :cond_170

    const/16 v17, 0x18

    const/4 v2, 0x0

    const/16 v14, 0x18

    goto/16 :goto_274

    :cond_170
    instance-of v7, v2, Landroid/media/DeniedByServerException;

    if-eqz v7, :cond_17b

    const/16 v17, 0x1d

    const/4 v2, 0x0

    const/16 v14, 0x1d

    goto/16 :goto_274

    :cond_17b
    instance-of v7, v2, Lcom/google/android/gms/internal/ads/zzru;

    if-eqz v7, :cond_181

    goto/16 :goto_21c

    :cond_181
    instance-of v2, v2, Lcom/google/android/gms/internal/ads/zzrh;

    if-eqz v2, :cond_18c

    const/16 v17, 0x1c

    const/4 v2, 0x0

    const/16 v14, 0x1c

    goto/16 :goto_274

    :cond_18c
    const/16 v17, 0x1e

    const/4 v2, 0x0

    const/16 v14, 0x1e

    goto/16 :goto_274

    :cond_193
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzhf;

    if-eqz v2, :cond_1c6

    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_1c6

    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    sget v7, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    if-lt v7, v13, :cond_1c1

    instance-of v7, v2, Landroid/system/ErrnoException;

    if-eqz v7, :cond_1c1

    check-cast v2, Landroid/system/ErrnoException;

    iget v2, v2, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->EACCES:I

    if-ne v2, v7, :cond_1c1

    const/16 v17, 0x20

    const/4 v2, 0x0

    const/16 v14, 0x20

    goto/16 :goto_274

    :cond_1c1
    const/4 v2, 0x0

    const/16 v14, 0x1f

    goto/16 :goto_274

    :cond_1c6
    const/4 v2, 0x0

    const/16 v14, 0x9

    goto/16 :goto_274

    :cond_1cb
    :goto_1cb
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfh;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfh;->zza()I

    move-result v7

    if-ne v7, v11, :cond_1d9

    const/4 v2, 0x0

    const/4 v14, 0x3

    goto/16 :goto_274

    :cond_1d9
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v8, v7, Ljava/net/UnknownHostException;

    if-eqz v8, :cond_1e5

    const/4 v2, 0x0

    const/4 v14, 0x6

    goto/16 :goto_274

    :cond_1e5
    instance-of v7, v7, Ljava/net/SocketTimeoutException;

    if-eqz v7, :cond_1ed

    const/4 v2, 0x0

    const/4 v14, 0x7

    goto/16 :goto_274

    :cond_1ed
    if-eqz v2, :cond_1f9

    check-cast v15, Lcom/google/android/gms/internal/ads/zzhj;

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzhj;->zzc:I

    if-ne v2, v11, :cond_1f9

    const/4 v2, 0x0

    const/4 v14, 0x4

    goto/16 :goto_274

    :cond_1f9
    const/4 v2, 0x0

    const/16 v14, 0x8

    goto/16 :goto_274

    :cond_1fe
    :goto_1fe
    const/4 v2, 0x0

    const/16 v14, 0xb

    goto/16 :goto_274

    :cond_203
    if-eqz v12, :cond_20e

    if-eqz v8, :cond_209

    if-ne v8, v11, :cond_20e

    :cond_209
    const/4 v2, 0x0

    const/16 v14, 0x23

    goto/16 :goto_274

    :cond_20e
    if-eqz v12, :cond_218

    if-ne v8, v9, :cond_218

    const/16 v17, 0xf

    const/4 v2, 0x0

    const/16 v14, 0xf

    goto :goto_274

    :cond_218
    if-eqz v12, :cond_21e

    if-ne v8, v6, :cond_21e

    :goto_21c
    const/4 v2, 0x0

    goto :goto_274

    :cond_21e
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz v2, :cond_22d

    check-cast v15, Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsq;->zzd:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfs;->zzj(Ljava/lang/String;)I

    move-result v2

    const/16 v14, 0xd

    goto :goto_274

    :cond_22d
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzsl;

    if-eqz v2, :cond_23c

    check-cast v15, Lcom/google/android/gms/internal/ads/zzsl;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsl;->zzb:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfs;->zzj(Ljava/lang/String;)I

    move-result v2

    :goto_239
    const/16 v14, 0xe

    goto :goto_274

    :cond_23c
    instance-of v2, v15, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_242

    const/4 v2, 0x0

    goto :goto_239

    :cond_242
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzpr;

    if-eqz v2, :cond_24f

    check-cast v15, Lcom/google/android/gms/internal/ads/zzpr;

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzpr;->zza:I

    const/16 v17, 0x11

    const/16 v14, 0x11

    goto :goto_274

    :cond_24f
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzpu;

    if-eqz v2, :cond_25c

    check-cast v15, Lcom/google/android/gms/internal/ads/zzpu;

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzpu;->zza:I

    const/16 v17, 0x12

    const/16 v14, 0x12

    goto :goto_274

    :cond_25c
    sget v2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    instance-of v2, v15, Landroid/media/MediaCodec$CryptoException;

    if-eqz v2, :cond_26f

    check-cast v15, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v15}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzor;->zzr(I)I

    move-result v17

    :goto_26c
    move/from16 v14, v17

    goto :goto_274

    :cond_26f
    const/16 v17, 0x16

    const/4 v2, 0x0

    const/16 v14, 0x16

    :goto_274
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzor;->zzc:Landroid/media/metrics/PlaybackSession;

    new-instance v8, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    invoke-direct {v8}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzor;->zzd:J

    sub-long v12, v3, v12

    invoke-virtual {v8, v12, v13}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzor;->zzz:Z

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzor;->zzn:Lcom/google/android/gms/internal/ads/zzch;

    :goto_29a
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzml;->zzd(I)Z

    move-result v2

    if-eqz v2, :cond_2c9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcr;->zzo()Lcom/google/android/gms/internal/ads/zzdn;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzdn;->zzb(I)Z

    move-result v5

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzdn;->zzb(I)Z

    move-result v7

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzdn;->zzb(I)Z

    move-result v2

    if-nez v5, :cond_2b7

    if-nez v7, :cond_2b7

    if-eqz v2, :cond_2c9

    const/4 v2, 0x1

    :cond_2b7
    if-nez v5, :cond_2be

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/zzor;->zzw(JLcom/google/android/gms/internal/ads/zzam;I)V

    goto :goto_2bf

    :cond_2be
    const/4 v5, 0x0

    :goto_2bf
    if-nez v7, :cond_2c4

    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/zzor;->zzt(JLcom/google/android/gms/internal/ads/zzam;I)V

    :cond_2c4
    if-nez v2, :cond_2c9

    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/zzor;->zzu(JLcom/google/android/gms/internal/ads/zzam;I)V

    :cond_2c9
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzo:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzor;->zzy(Lcom/google/android/gms/internal/ads/zzoq;)Z

    move-result v2

    if-eqz v2, :cond_2e1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzo:Lcom/google/android/gms/internal/ads/zzoq;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzoq;->zza:Lcom/google/android/gms/internal/ads/zzam;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2e1

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzor;->zzw(JLcom/google/android/gms/internal/ads/zzam;I)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzor;->zzo:Lcom/google/android/gms/internal/ads/zzoq;

    goto :goto_2e2

    :cond_2e1
    const/4 v5, 0x0

    :goto_2e2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzp:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzor;->zzy(Lcom/google/android/gms/internal/ads/zzoq;)Z

    move-result v2

    if-eqz v2, :cond_2f3

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzp:Lcom/google/android/gms/internal/ads/zzoq;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzoq;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzor;->zzt(JLcom/google/android/gms/internal/ads/zzam;I)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzor;->zzp:Lcom/google/android/gms/internal/ads/zzoq;

    :cond_2f3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzq:Lcom/google/android/gms/internal/ads/zzoq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzor;->zzy(Lcom/google/android/gms/internal/ads/zzoq;)Z

    move-result v2

    if-eqz v2, :cond_304

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzq:Lcom/google/android/gms/internal/ads/zzoq;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzoq;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzor;->zzu(JLcom/google/android/gms/internal/ads/zzam;I)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzor;->zzq:Lcom/google/android/gms/internal/ads/zzoq;

    :cond_304
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zza:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfh;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfh;->zza()I

    move-result v2

    packed-switch v2, :pswitch_data_3f2

    :pswitch_311
    const/4 v13, 0x1

    goto :goto_326

    :pswitch_313
    const/4 v13, 0x7

    goto :goto_326

    :pswitch_315
    const/16 v13, 0x8

    goto :goto_326

    :pswitch_318
    const/4 v13, 0x3

    goto :goto_326

    :pswitch_31a
    const/4 v13, 0x6

    goto :goto_326

    :pswitch_31c
    const/4 v13, 0x5

    goto :goto_326

    :pswitch_31e
    const/4 v13, 0x4

    goto :goto_326

    :pswitch_320
    const/4 v13, 0x2

    goto :goto_326

    :pswitch_322
    const/16 v13, 0x9

    goto :goto_326

    :pswitch_325
    const/4 v13, 0x0

    :goto_326
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzm:I

    if-eq v13, v2, :cond_346

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzor;->zzm:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzc:Landroid/media/metrics/PlaybackSession;

    new-instance v5, Landroid/media/metrics/NetworkEvent$Builder;

    invoke-direct {v5}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    invoke-virtual {v5, v13}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzor;->zzd:J

    sub-long v7, v3, v7

    invoke-virtual {v5, v7, v8}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    :cond_346
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcr;->zzf()I

    move-result v2

    if-eq v2, v6, :cond_350

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzu:Z

    goto :goto_351

    :cond_350
    const/4 v2, 0x0

    :goto_351
    move-object/from16 v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzmf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzmf;->zzC()Lcom/google/android/gms/internal/ads/zzit;

    move-result-object v5

    const/16 v7, 0xa

    if-nez v5, :cond_360

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzv:Z

    goto :goto_368

    :cond_360
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzml;->zzd(I)Z

    move-result v2

    if-eqz v2, :cond_368

    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzor;->zzv:Z

    :cond_368
    :goto_368
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcr;->zzf()I

    move-result v2

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzor;->zzu:Z

    if-eqz v5, :cond_372

    const/4 v5, 0x5

    goto :goto_3bc

    :cond_372
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzor;->zzv:Z

    if-eqz v5, :cond_379

    const/16 v5, 0xd

    goto :goto_3bc

    :cond_379
    const/4 v5, 0x4

    if-ne v2, v5, :cond_37f

    const/16 v5, 0xb

    goto :goto_3bc

    :cond_37f
    if-ne v2, v6, :cond_39d

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzl:I

    if-eqz v2, :cond_39b

    if-ne v2, v6, :cond_388

    goto :goto_39b

    :cond_388
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcr;->zzv()Z

    move-result v2

    if-nez v2, :cond_390

    const/4 v5, 0x7

    goto :goto_3bc

    :cond_390
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcr;->zzg()I

    move-result v2

    if-eqz v2, :cond_399

    const/16 v5, 0xa

    goto :goto_3bc

    :cond_399
    const/4 v5, 0x6

    goto :goto_3bc

    :cond_39b
    :goto_39b
    const/4 v5, 0x2

    goto :goto_3bc

    :cond_39d
    if-ne v2, v9, :cond_3b1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcr;->zzv()Z

    move-result v2

    if-nez v2, :cond_3a6

    goto :goto_3bc

    :cond_3a6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcr;->zzg()I

    move-result v2

    if-eqz v2, :cond_3af

    const/16 v5, 0x9

    goto :goto_3bc

    :cond_3af
    const/4 v5, 0x3

    goto :goto_3bc

    :cond_3b1
    if-ne v2, v11, :cond_3ba

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzl:I

    if-eqz v2, :cond_3ba

    const/16 v5, 0xc

    goto :goto_3bc

    :cond_3ba
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzor;->zzl:I

    :goto_3bc
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzl:I

    if-eq v2, v5, :cond_3df

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzor;->zzl:I

    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzor;->zzz:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzor;->zzc:Landroid/media/metrics/PlaybackSession;

    new-instance v5, Landroid/media/metrics/PlaybackStateEvent$Builder;

    invoke-direct {v5}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzor;->zzl:I

    invoke-virtual {v5, v6}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v5

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzor;->zzd:J

    sub-long/2addr v3, v6

    invoke-virtual {v5, v3, v4}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    :cond_3df
    const/16 v2, 0x404

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzml;->zzd(I)Z

    move-result v3

    if-eqz v3, :cond_3f0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzot;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzml;->zzc(I)Lcom/google/android/gms/internal/ads/zzmk;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzot;->zzg(Lcom/google/android/gms/internal/ads/zzmk;)V

    :cond_3f0
    :goto_3f0
    return-void

    nop

    :pswitch_data_3f2
    .packed-switch 0x0
        :pswitch_325
        :pswitch_322
        :pswitch_320
        :pswitch_31e
        :pswitch_31c
        :pswitch_31a
        :pswitch_311
        :pswitch_318
        :pswitch_311
        :pswitch_315
        :pswitch_313
    .end packed-switch
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzub;Lcom/google/android/gms/internal/ads/zzug;Ljava/io/IOException;Z)V
    .registers 6

    return-void
.end method

.method public final synthetic zzk(Lcom/google/android/gms/internal/ads/zzmk;I)V
    .registers 3

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzch;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzor;->zzn:Lcom/google/android/gms/internal/ads/zzch;

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzcq;Lcom/google/android/gms/internal/ads/zzcq;I)V
    .registers 5

    const/4 p1, 0x1

    if-ne p4, p1, :cond_6

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzu:Z

    const/4 p4, 0x1

    :cond_6
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzor;->zzk:I

    return-void
.end method

.method public final synthetic zzn(Lcom/google/android/gms/internal/ads/zzmk;Ljava/lang/Object;J)V
    .registers 5

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 4

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzw:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzil;->zzg:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzw:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzx:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzil;->zze:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzx:I

    return-void
.end method

.method public final synthetic zzp(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzim;)V
    .registers 4

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzdu;)V
    .registers 6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzor;->zzo:Lcom/google/android/gms/internal/ads/zzoq;

    if-eqz p1, :cond_27

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzoq;->zza:Lcom/google/android/gms/internal/ads/zzam;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzam;->zzb()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzdu;->zzc:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzab(I)Lcom/google/android/gms/internal/ads/zzak;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzdu;->zzd:I

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzH(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzoq;->zzc:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzoq;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Lcom/google/android/gms/internal/ads/zzam;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzor;->zzo:Lcom/google/android/gms/internal/ads/zzoq;

    :cond_27
    return-void
.end method
