###### Class com.google.android.gms.internal.ads.zzuc (com.google.android.gms.internal.ads.zzuc)
.class public final Lcom/google/android/gms/internal/ads/zzuc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzui;
.implements Lcom/google/android/gms/internal/ads/zzuh;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzuk;

.field private final zzb:J

.field private zzc:Lcom/google/android/gms/internal/ads/zzum;

.field private zzd:Lcom/google/android/gms/internal/ads/zzui;

.field private zze:Lcom/google/android/gms/internal/ads/zzuh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:J

.field private final zzg:Lcom/google/android/gms/internal/ads/zzyn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzuk;Lcom/google/android/gms/internal/ads/zzyn;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzg:Lcom/google/android/gms/internal/ads/zzyn;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzb:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzf:J

    return-void
.end method

.method private final zzv(J)J
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    return-wide v0

    :cond_c
    return-wide p1
.end method


# virtual methods
.method public final zza(JLcom/google/android/gms/internal/ads/zzmd;)J
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzui;->zza(JLcom/google/android/gms/internal/ads/zzmd;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzb()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzui;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzui;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzui;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zze(J)J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzui;->zze(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzwc;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzui;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zze:Lcom/google/android/gms/internal/ads/zzuh;

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzwb;->zzf(Lcom/google/android/gms/internal/ads/zzwc;)V

    return-void
.end method

.method public final zzg([Lcom/google/android/gms/internal/ads/zzxy;[Z[Lcom/google/android/gms/internal/ads/zzwa;[ZJ)J
    .registers 22

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzuc;->zzf:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_16

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzuc;->zzb:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_16

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzuc;->zzf:J

    move-wide v13, v1

    goto :goto_18

    :cond_16
    move-wide/from16 v13, p5

    :goto_18
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzui;->zzg([Lcom/google/android/gms/internal/ads/zzxy;[Z[Lcom/google/android/gms/internal/ads/zzwa;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzui;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zze:Lcom/google/android/gms/internal/ads/zzuh;

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzuh;->zzh(Lcom/google/android/gms/internal/ads/zzui;)V

    return-void
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzwl;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzui;->zzi()Lcom/google/android/gms/internal/ads/zzwl;

    move-result-object v0

    return-object v0
.end method

.method public final zzj(JZ)V
    .registers 5

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzui;->zzj(JZ)V

    return-void
.end method

.method public final zzk()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzui;->zzk()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzc:Lcom/google/android/gms/internal/ads/zzum;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzum;->zzz()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    return-void

    :catch_10
    move-exception v0

    throw v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzuh;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zze:Lcom/google/android/gms/internal/ads/zzuh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    if-eqz p1, :cond_f

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzb:J

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzuc;->zzv(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzui;->zzl(Lcom/google/android/gms/internal/ads/zzuh;J)V

    :cond_f
    return-void
.end method

.method public final zzm(J)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzui;->zzm(J)V

    return-void
.end method

.method public final zzn()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzf:J

    return-wide v0
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzla;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzui;->zzo(Lcom/google/android/gms/internal/ads/zzla;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final zzp()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzui;->zzp()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzq()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzb:J

    return-wide v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzuk;)V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzb:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzuc;->zzv(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzc:Lcom/google/android/gms/internal/ads/zzum;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzg:Lcom/google/android/gms/internal/ads/zzyn;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzum;->zzI(Lcom/google/android/gms/internal/ads/zzuk;Lcom/google/android/gms/internal/ads/zzyn;J)Lcom/google/android/gms/internal/ads/zzui;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuc;->zze:Lcom/google/android/gms/internal/ads/zzuh;

    if-eqz v2, :cond_1a

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzui;->zzl(Lcom/google/android/gms/internal/ads/zzuh;J)V

    :cond_1a
    return-void
.end method

.method public final zzs(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzf:J

    return-void
.end method

.method public final zzt()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzd:Lcom/google/android/gms/internal/ads/zzui;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzc:Lcom/google/android/gms/internal/ads/zzum;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzum;->zzG(Lcom/google/android/gms/internal/ads/zzui;)V

    :cond_c
    return-void
.end method

.method public final zzu(Lcom/google/android/gms/internal/ads/zzum;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzc:Lcom/google/android/gms/internal/ads/zzum;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzc:Lcom/google/android/gms/internal/ads/zzum;

    return-void
.end method
