###### Class com.google.android.gms.internal.ads.zzaai (com.google.android.gms.internal.ads.zzaai)
.class public final Lcom/google/android/gms/internal/ads/zzaai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzzo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaae;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaah;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Z

.field private zze:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:F

.field private zzg:F

.field private zzh:F

.field private zzi:F

.field private zzj:I

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzzo;

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaag;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaae;

    move-result-object v1

    if-nez v1, :cond_1f

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaaf;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaae;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    :cond_1f
    :goto_1f
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzb:Lcom/google/android/gms/internal/ads/zzaae;

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaah;->zza()Lcom/google/android/gms/internal/ads/zzaah;

    move-result-object v0

    :cond_27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzc:Lcom/google/android/gms/internal/ads/zzaah;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzl:J

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzf:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzi:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzj:I

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzaai;Landroid/view/Display;)V
    .registers 6

    if-eqz p1, :cond_1a

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v2, p1

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzk:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzl:J

    return-void

    :cond_1a
    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Unable to query display refresh rate"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzl:J

    return-void
.end method

.method private final zzk()V
    .registers 4

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zze:Landroid/view/Surface;

    if-eqz v0, :cond_1d

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzj:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1d

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzh:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    goto :goto_1d

    :cond_18
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzh:F

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaad;->zza(Landroid/view/Surface;F)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private final zzl()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzm:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzp:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzn:J

    return-void
.end method

.method private final zzm()V
    .registers 11

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_6a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zze:Landroid/view/Surface;

    if-nez v0, :cond_b

    goto :goto_6a

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzo;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzo;->zza()F

    move-result v0

    goto :goto_1c

    :cond_1a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzf:F

    :goto_1c
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzg:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_6a

    const/4 v3, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    cmpl-float v6, v0, v4

    if-eqz v6, :cond_57

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzzo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzo;->zzg()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzzo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzo;->zzd()J

    move-result-wide v6

    const-wide v8, 0x12a05f200L

    cmp-long v1, v6, v8

    if-ltz v1, :cond_4a

    const v2, 0x3ca3d70a    # 0.02f

    :cond_4a
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzg:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_62

    goto :goto_63

    :cond_57
    if-nez v6, :cond_65

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzzo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzzo;->zzb()I

    move-result v2

    if-lt v2, v1, :cond_62

    goto :goto_63

    :cond_62
    const/4 v3, 0x0

    :goto_63
    if-eqz v3, :cond_6a

    :cond_65
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzg:F

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzaai;->zzn(Z)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private final zzn(Z)V
    .registers 6

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zze:Landroid/view/Surface;

    if-eqz v0, :cond_2f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzj:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_11

    goto :goto_2f

    :cond_11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzd:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzg:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_22

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzi:F

    mul-float v2, v2, v1

    :cond_22
    if-nez p1, :cond_2a

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzh:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_2f

    :cond_2a
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzh:F

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaad;->zza(Landroid/view/Surface;F)V

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public final zza(J)J
    .registers 14

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzo;->zzg()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzo;->zzc()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzq:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzm:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzp:J

    sub-long/2addr v4, v6

    mul-long v0, v0, v4

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzi:F

    long-to-float v0, v0

    div-float/2addr v0, v4

    float-to-long v0, v0

    add-long/2addr v2, v0

    sub-long v0, p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v4, 0x1312d00

    cmp-long v6, v0, v4

    if-lez v6, :cond_36

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaai;->zzl()V

    goto :goto_37

    :cond_36
    move-wide p1, v2

    :cond_37
    :goto_37
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzm:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzn:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzo:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzc:Lcom/google/android/gms/internal/ads/zzaah;

    if-eqz v0, :cond_73

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzk:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_4d

    goto :goto_73

    :cond_4d
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzaah;->zza:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_73

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzk:J

    sub-long v4, p1, v0

    div-long/2addr v4, v2

    mul-long v4, v4, v2

    add-long/2addr v0, v4

    cmp-long v4, p1, v0

    if-gtz v4, :cond_62

    sub-long v2, v0, v2

    goto :goto_66

    :cond_62
    add-long/2addr v2, v0

    move-wide v9, v0

    move-wide v0, v2

    move-wide v2, v9

    :goto_66
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzl:J

    sub-long v6, v0, p1

    sub-long/2addr p1, v2

    cmp-long v8, v6, p1

    if-gez v8, :cond_70

    goto :goto_71

    :cond_70
    move-wide v0, v2

    :goto_71
    sub-long/2addr v0, v4

    return-wide v0

    :cond_73
    :goto_73
    return-wide p1
.end method

.method public final zzc(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzf:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzzo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzo;->zzf()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaai;->zzm()V

    return-void
.end method

.method public final zzd(J)V
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzn:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzp:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzo:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzq:J

    :cond_e
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzm:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzm:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Lcom/google/android/gms/internal/ads/zzzo;

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzo;->zze(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaai;->zzm()V

    return-void
.end method

.method public final zze(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzi:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaai;->zzl()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaai;->zzn(Z)V

    return-void
.end method

.method public final zzf()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaai;->zzl()V

    return-void
.end method

.method public final zzg()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaai;->zzl()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzb:Lcom/google/android/gms/internal/ads/zzaae;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzc:Lcom/google/android/gms/internal/ads/zzaah;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaah;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzb:Lcom/google/android/gms/internal/ads/zzaae;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaab;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzaab;-><init>(Lcom/google/android/gms/internal/ads/zzaai;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaae;->zzb(Lcom/google/android/gms/internal/ads/zzaab;)V

    :cond_1c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaai;->zzn(Z)V

    return-void
.end method

.method public final zzh()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzb:Lcom/google/android/gms/internal/ads/zzaae;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaae;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzc:Lcom/google/android/gms/internal/ads/zzaah;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaah;->zzc()V

    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaai;->zzk()V

    return-void
.end method

.method public final zzi(Landroid/view/Surface;)V
    .registers 5
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaac;->zza(Landroid/view/Surface;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zze:Landroid/view/Surface;

    const/4 v2, 0x1

    if-ne v2, v0, :cond_c

    const/4 p1, 0x0

    :cond_c
    if-ne v1, p1, :cond_f

    return-void

    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaai;->zzk()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zze:Landroid/view/Surface;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzaai;->zzn(Z)V

    return-void
.end method

.method public final zzj(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzj:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzj:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaai;->zzn(Z)V

    return-void
.end method
