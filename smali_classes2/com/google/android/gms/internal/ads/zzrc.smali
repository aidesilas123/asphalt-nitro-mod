###### Class com.google.android.gms.internal.ads.zzrc (com.google.android.gms.internal.ads.zzrc)
.class public final Lcom/google/android/gms/internal/ads/zzrc;
.super Lcom/google/android/gms/internal/ads/zzss;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlb;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzpn;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzpv;

.field private zze:I

.field private zzf:Z

.field private zzg:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:J

.field private zzj:Z

.field private zzk:Z

.field private zzl:Lcom/google/android/gms/internal/ads/zzly;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzsu;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpo;Lcom/google/android/gms/internal/ads/zzpv;)V
    .registers 14
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzpo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v4, 0x0

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzss;-><init>(ILcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzsu;ZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzb:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {p1, p5, p6}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpo;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzc:Lcom/google/android/gms/internal/ads/zzpn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzrb;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzrb;-><init>(Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzra;)V

    invoke-interface {p7, p1}, Lcom/google/android/gms/internal/ads/zzpv;->zzp(Lcom/google/android/gms/internal/ads/zzps;)V

    return-void
.end method

.method private final zzaI(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;)I
    .registers 4

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    sget p1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1e

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzb:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfs;->zzI(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1e

    :cond_1c
    const/4 p1, -0x1

    return p1

    :cond_1e
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzam;->zzn:I

    return p1
.end method

.method private static zzaJ(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZLcom/google/android/gms/internal/ads/zzpv;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    if-nez p2, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwu;->zzl()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzpv;->zzz(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzth;->zzd()Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object p2

    if-eqz p2, :cond_1a

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfwu;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzth;->zzh(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zzaK()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzU()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzpv;->zzb(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Z

    if-eqz v2, :cond_15

    goto :goto_1b

    :cond_15
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzi:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1b
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzi:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Z

    :cond_20
    return-void
.end method

.method static bridge synthetic zzab(Lcom/google/android/gms/internal/ads/zzrc;)Lcom/google/android/gms/internal/ads/zzly;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzl:Lcom/google/android/gms/internal/ads/zzly;

    return-object p0
.end method

.method static bridge synthetic zzac(Lcom/google/android/gms/internal/ads/zzrc;)Lcom/google/android/gms/internal/ads/zzpn;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzc:Lcom/google/android/gms/internal/ads/zzpn;

    return-object p0
.end method


# virtual methods
.method protected final zzA()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzA()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzk:Z

    if-eqz v1, :cond_f

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzk:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpv;->zzk()V

    :cond_f
    return-void

    :catchall_10
    move-exception v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzk:Z

    if-nez v2, :cond_16

    goto :goto_1d

    :cond_16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzk:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpv;->zzk()V

    :goto_1d
    throw v1
.end method

.method protected final zzB()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpv;->zzi()V

    return-void
.end method

.method protected final zzC()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzaK()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpv;->zzh()V

    return-void
.end method

.method public final zzS()Ljava/lang/String;
    .registers 2

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public final zzU()Z
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzU()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpv;->zzy()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public final zzV()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpv;->zzx()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzV()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method protected final zzX(FLcom/google/android/gms/internal/ads/zzam;[Lcom/google/android/gms/internal/ads/zzam;)F
    .registers 7

    const/4 p2, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_3
    array-length v2, p3

    if-ge v0, v2, :cond_13

    aget-object v2, p3, v0

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    if-eq v2, p2, :cond_10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    if-ne v1, p2, :cond_18

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_18
    int-to-float p2, v1

    mul-float p2, p2, p1

    return p2
.end method

.method protected final zzY(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzce;->zzf(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x80

    if-nez v0, :cond_b

    return v1

    :cond_b
    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v0, v2, :cond_15

    const/16 v0, 0x20

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzam;->zzH:I

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzss;->zzaH(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4f

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzth;->zzd()Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object v2

    if-eqz v2, :cond_4f

    :cond_27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzpv;->zzd(Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzpa;

    move-result-object v2

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzpa;->zzb:Z

    if-nez v6, :cond_33

    const/4 v6, 0x0

    goto :goto_42

    :cond_33
    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzpa;->zzc:Z

    if-eq v5, v6, :cond_3a

    const/16 v6, 0x200

    goto :goto_3c

    :cond_3a
    const/16 v6, 0x600

    :goto_3c
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzpa;->zzd:Z

    if-eqz v2, :cond_42

    or-int/lit16 v6, v6, 0x800

    :cond_42
    :goto_42
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzpv;->zzz(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_50

    :cond_4b
    or-int/lit16 p1, v0, 0x8c

    :goto_4d
    or-int/2addr p1, v6

    return p1

    :cond_4f
    const/4 v6, 0x0

    :goto_50
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v7, "audio/raw"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x2

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzpv;->zzz(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v2

    if-nez v2, :cond_64

    goto :goto_85

    :cond_64
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    iget v8, p2, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    iget v9, p2, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzfs;->zzy(III)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/ads/zzpv;->zzz(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v2

    if-nez v2, :cond_75

    goto :goto_85

    :cond_75
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-static {p1, p2, v3, v2}, Lcom/google/android/gms/internal/ads/zzrc;->zzaJ(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZLcom/google/android/gms/internal/ads/zzpv;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_82

    goto :goto_85

    :cond_82
    if-nez v4, :cond_88

    const/4 v5, 0x2

    :goto_85
    or-int/lit16 p1, v5, 0x80

    return p1

    :cond_88
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsn;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzsn;->zze(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v4

    if-nez v4, :cond_ae

    const/4 v7, 0x1

    :goto_95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_ae

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzsn;

    invoke-virtual {v8, p2}, Lcom/google/android/gms/internal/ads/zzsn;->zze(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v9

    if-eqz v9, :cond_ab

    move-object v2, v8

    const/4 p1, 0x0

    const/4 v4, 0x1

    goto :goto_af

    :cond_ab
    add-int/lit8 v7, v7, 0x1

    goto :goto_95

    :cond_ae
    const/4 p1, 0x1

    :goto_af
    if-eq v5, v4, :cond_b3

    const/4 v7, 0x3

    goto :goto_b4

    :cond_b3
    const/4 v7, 0x4

    :goto_b4
    const/16 v8, 0x8

    if-eqz v4, :cond_c0

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzsn;->zzf(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result p2

    if-eqz p2, :cond_c0

    const/16 v8, 0x10

    :cond_c0
    iget-boolean p2, v2, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Z

    if-eq v5, p2, :cond_c6

    const/4 p2, 0x0

    goto :goto_c8

    :cond_c6
    const/16 p2, 0x40

    :goto_c8
    if-eq v5, p1, :cond_cb

    const/4 v1, 0x0

    :cond_cb
    or-int p1, v7, v8

    or-int/2addr p1, v0

    or-int/2addr p1, p2

    or-int/2addr p1, v1

    goto/16 :goto_4d
.end method

.method protected final zzZ(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzim;
    .registers 12

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsn;->zzb(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzim;->zze:I

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzss;->zzaF(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result v2

    if-eqz v2, :cond_10

    const v2, 0x8000

    or-int/2addr v1, v2

    :cond_10
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzrc;->zzaI(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zze:I

    if-le v2, v3, :cond_1a

    or-int/lit8 v1, v1, 0x40

    :cond_1a
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzim;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    move v7, v1

    const/4 v6, 0x0

    goto :goto_28

    :cond_24
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzim;->zzd:I

    move v6, v0

    const/4 v7, 0x0

    :goto_28
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzim;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzam;II)V

    return-object p1
.end method

.method public final zza()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzbd()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzaK()V

    :cond_a
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzi:J

    return-wide v0
.end method

.method protected final zzaa(Lcom/google/android/gms/internal/ads/zzkv;)Lcom/google/android/gms/internal/ads/zzim;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzss;->zzaa(Lcom/google/android/gms/internal/ads/zzkv;)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzc:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzi(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzim;)V

    return-object p1
.end method

.method protected final zzad(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzsi;
    .registers 12
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzR()[Lcom/google/android/gms/internal/ads/zzam;

    move-result-object p3

    array-length v0, p3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrc;->zzaI(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    goto :goto_26

    :cond_e
    const/4 v4, 0x0

    :goto_f
    if-ge v4, v0, :cond_26

    aget-object v5, p3, v4

    invoke-virtual {p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzsn;->zzb(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v6

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzim;->zzd:I

    if-eqz v6, :cond_23

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzrc;->zzaI(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzam;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_26
    :goto_26
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zze:I

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Ljava/lang/String;

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_5e

    const-string v4, "OMX.SEC.aac.dec"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5e

    sget-object p3, Lcom/google/android/gms/internal/ads/zzfs;->zzc:Ljava/lang/String;

    const-string v4, "samsung"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5e

    sget-object p3, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Ljava/lang/String;

    const-string v4, "zeroflte"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5c

    const-string v4, "herolte"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5c

    const-string v4, "heroqlte"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5e

    :cond_5c
    const/4 p3, 0x1

    goto :goto_5f

    :cond_5e
    const/4 p3, 0x0

    :goto_5f
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzf:Z

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzsn;->zzc:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzrc;->zze:I

    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    const-string v6, "mime"

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    const-string v6, "channel-count"

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    const-string v6, "sample-rate"

    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    invoke-static {v5, p3}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p3, "max-input-size"

    invoke-static {v5, p3, v4}, Lcom/google/android/gms/internal/ads/zzfc;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/16 p3, 0x17

    if-lt v0, p3, :cond_af

    const-string v4, "priority"

    invoke-virtual {v5, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_af

    if-ne v0, p3, :cond_aa

    sget-object p3, Lcom/google/android/gms/internal/ads/zzfs;->zzd:Ljava/lang/String;

    const-string v2, "ZTE B2017G"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    const-string v2, "AXON 7 mini"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_af

    :cond_aa
    const-string p3, "operating-rate"

    invoke-virtual {v5, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_af
    const/16 p3, 0x1c

    if-gt v0, p3, :cond_c2

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string p4, "audio/ac4"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c2

    const-string p3, "ac4-is-sync"

    invoke-virtual {v5, p3, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_c2
    if-lt v0, v1, :cond_db

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    iget p4, p2, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    const/4 v2, 0x4

    invoke-static {v2, p4, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzy(III)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/google/android/gms/internal/ads/zzpv;->zza(Lcom/google/android/gms/internal/ads/zzam;)I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_db

    const-string p3, "pcm-encoding"

    invoke-virtual {v5, p3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_db
    const/16 p3, 0x20

    if-lt v0, p3, :cond_e6

    const/16 p3, 0x63

    const-string p4, "max-output-channel-count"

    invoke-virtual {v5, p4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_e6
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzsn;->zzb:Ljava/lang/String;

    const-string p4, "audio/raw"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_fb

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_fb

    move-object p3, p2

    goto :goto_fc

    :cond_fb
    move-object p3, v0

    :goto_fc
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzh:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {p1, v5, p2, v0}, Lcom/google/android/gms/internal/ads/zzsi;->zza(Lcom/google/android/gms/internal/ads/zzsn;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzam;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzsi;

    move-result-object p1

    return-object p1
.end method

.method protected final zzae(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztb;
        }
    .end annotation

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzrc;->zzaJ(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzam;ZLcom/google/android/gms/internal/ads/zzpv;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzth;->zzi(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzam;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final zzaf(Lcom/google/android/gms/internal/ads/zzib;)V
    .registers 7

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4b

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzib;->zza:Lcom/google/android/gms/internal/ads/zzam;

    if-eqz v0, :cond_4b

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v1, "audio/opus"

    if-eq v0, v1, :cond_18

    if-eqz v0, :cond_4b

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaE()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzib;->zzf:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzib;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4b

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzC:I

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    const-wide/32 v2, 0xbb80

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    const-wide/32 v3, 0x3b9aca00

    div-long/2addr v0, v3

    long-to-int v1, v0

    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzpv;->zzq(II)V

    :cond_4b
    return-void
.end method

.method protected final zzag(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzez;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzc:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpn;->zza(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zzah(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsi;JJ)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzc:Lcom/google/android/gms/internal/ads/zzpn;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzpn;->zze(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final zzai(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzc:Lcom/google/android/gms/internal/ads/zzpn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzf(Ljava/lang/String;)V

    return-void
.end method

.method protected final zzaj(Lcom/google/android/gms/internal/ads/zzam;Landroid/media/MediaFormat;)V
    .registers 8
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzh:Lcom/google/android/gms/internal/ads/zzam;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move-object p1, v0

    goto/16 :goto_a4

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzas()Lcom/google/android/gms/internal/ads/zzsk;

    move-result-object v0

    if-nez v0, :cond_11

    goto/16 :goto_a4

    :cond_11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    goto :goto_46

    :cond_21
    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_34

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_46

    :cond_34
    const-string v0, "v-bits-per-sample"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfs;->zzk(I)I

    move-result v0

    goto :goto_46

    :cond_45
    const/4 v0, 0x2

    :goto_46
    new-instance v4, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzP(I)Lcom/google/android/gms/internal/ads/zzak;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzC:I

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzE(I)Lcom/google/android/gms/internal/ads/zzak;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzD:I

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzF(I)Lcom/google/android/gms/internal/ads/zzak;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzk:Lcom/google/android/gms/internal/ads/zzcb;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzO(Lcom/google/android/gms/internal/ads/zzcb;)Lcom/google/android/gms/internal/ads/zzak;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzd:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zze:I

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzW(I)Lcom/google/android/gms/internal/ads/zzak;

    const-string v0, "channel-count"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    const-string v0, "sample-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzV(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzf:Z

    if-eqz v0, :cond_a3

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_a3

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    if-ge v0, v3, :cond_a3

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_9a
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    if-ge v0, v3, :cond_a3

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    :cond_a3
    move-object p1, p2

    :goto_a4
    :try_start_a4
    sget p2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_bb

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaE()Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzm()Lcom/google/android/gms/internal/ads/zzmc;

    :cond_b3
    if-lt p2, v0, :cond_b7

    const/4 p2, 0x1

    goto :goto_b8

    :cond_b7
    const/4 p2, 0x0

    :goto_b8
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    :cond_bb
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzpv;->zze(Lcom/google/android/gms/internal/ads/zzam;I[I)V
    :try_end_c0
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_a4 .. :try_end_c0} :catch_c1

    return-void

    :catch_c1
    move-exception p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzpq;->zza:Lcom/google/android/gms/internal/ads/zzam;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzik;->zzi(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;ZI)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object p1

    throw p1
.end method

.method protected final zzak()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Z

    return-void
.end method

.method protected final zzal()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpv;->zzg()V

    return-void
.end method

.method protected final zzam()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpv;->zzj()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzpu; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaE()Z

    move-result v2

    if-eq v1, v2, :cond_11

    const/16 v1, 0x138a

    goto :goto_13

    :cond_11
    const/16 v1, 0x138b

    :goto_13
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzc:Lcom/google/android/gms/internal/ads/zzam;

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzik;->zzi(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;ZI)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object v0

    throw v0
.end method

.method protected final zzan(JJLcom/google/android/gms/internal/ads/zzsk;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzam;)Z
    .registers 15
    .param p5    # Lcom/google/android/gms/internal/ads/zzsk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzh:Lcom/google/android/gms/internal/ads/zzam;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_14

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_14

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzsk;->zzn(IZ)V

    return p2

    :cond_14
    if-eqz p12, :cond_28

    if-eqz p5, :cond_1b

    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzsk;->zzn(IZ)V

    :cond_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget p3, p1, Lcom/google/android/gms/internal/ads/zzil;->zzf:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzil;->zzf:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpv;->zzg()V

    return p2

    :cond_28
    :try_start_28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/gms/internal/ads/zzpv;->zzw(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_2e
    .catch Lcom/google/android/gms/internal/ads/zzpr; {:try_start_28 .. :try_end_2e} :catch_52
    .catch Lcom/google/android/gms/internal/ads/zzpu; {:try_start_28 .. :try_end_2e} :catch_3e

    if-eqz p1, :cond_3d

    if-eqz p5, :cond_35

    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzsk;->zzn(IZ)V

    :cond_35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    iget p3, p1, Lcom/google/android/gms/internal/ads/zzil;->zze:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzil;->zze:I

    return p2

    :cond_3d
    return p3

    :catch_3e
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzaE()Z

    move-result p2

    if-nez p2, :cond_46

    goto :goto_49

    :cond_46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzm()Lcom/google/android/gms/internal/ads/zzmc;

    :goto_49
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Z

    const/16 p3, 0x138a

    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/google/android/gms/internal/ads/zzik;->zzi(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;ZI)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object p1

    throw p1

    :catch_52
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    iget-boolean p3, p1, Lcom/google/android/gms/internal/ads/zzpr;->zzb:Z

    const/16 p4, 0x1389

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzik;->zzi(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;ZI)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object p1

    throw p1
.end method

.method protected final zzao(Lcom/google/android/gms/internal/ads/zzam;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzm()Lcom/google/android/gms/internal/ads/zzmc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzpv;->zzz(Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result p1

    return p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpv;->zzc()Lcom/google/android/gms/internal/ads/zzcj;

    move-result-object v0

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzcj;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzpv;->zzr(Lcom/google/android/gms/internal/ads/zzcj;)V

    return-void
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/zzlb;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public final zzt(ILjava/lang/Object;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_52

    const/4 v0, 0x3

    if-eq p1, v0, :cond_47

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3c

    packed-switch p1, :pswitch_data_62

    goto :goto_18

    :pswitch_d
    sget p1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_18

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzqz;->zza(Lcom/google/android/gms/internal/ads/zzpv;Ljava/lang/Object;)V

    :cond_18
    :goto_18
    return-void

    :pswitch_19
    check-cast p2, Lcom/google/android/gms/internal/ads/zzly;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzl:Lcom/google/android/gms/internal/ads/zzly;

    return-void

    :pswitch_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzpv;->zzm(I)V

    return-void

    :pswitch_2d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzpv;->zzu(Z)V

    return-void

    :cond_3c
    check-cast p2, Lcom/google/android/gms/internal/ads/zzl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzpv;->zzn(Lcom/google/android/gms/internal/ads/zzl;)V

    return-void

    :cond_47
    check-cast p2, Lcom/google/android/gms/internal/ads/zzk;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzpv;->zzl(Lcom/google/android/gms/internal/ads/zzk;)V

    return-void

    :cond_52
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzpv;->zzv(F)V

    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x9
        :pswitch_2d
        :pswitch_1e
        :pswitch_19
        :pswitch_d
    .end packed-switch
.end method

.method protected final zzw()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzk:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpv;->zzf()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_18

    :try_start_b
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzw()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzc:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzg(Lcom/google/android/gms/internal/ads/zzil;)V

    return-void

    :catchall_16
    move-exception v0

    goto :goto_24

    :catchall_18
    move-exception v0

    :try_start_19
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzss;->zzw()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_16

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzc:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzg(Lcom/google/android/gms/internal/ads/zzil;)V

    throw v0

    :goto_24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzc:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzg(Lcom/google/android/gms/internal/ads/zzil;)V

    throw v0
.end method

.method protected final zzx(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzss;->zzx(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzc:Lcom/google/android/gms/internal/ads/zzpn;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzss;->zza:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpn;->zzh(Lcom/google/android/gms/internal/ads/zzil;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzm()Lcom/google/android/gms/internal/ads/zzmc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzn()Lcom/google/android/gms/internal/ads/zzov;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzpv;->zzs(Lcom/google/android/gms/internal/ads/zzov;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzh()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzpv;->zzo(Lcom/google/android/gms/internal/ads/zzeg;)V

    return-void
.end method

.method protected final zzy(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzss;->zzy(JZ)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Lcom/google/android/gms/internal/ads/zzpv;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzpv;->zzf()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzi:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Z

    return-void
.end method

.method protected final zzz()V
    .registers 1

    return-void
.end method
