###### Class com.google.android.gms.internal.ads.zztp (com.google.android.gms.internal.ads.zztp)
.class public final Lcom/google/android/gms/internal/ads/zztp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzui;
.implements Lcom/google/android/gms/internal/ads/zzuh;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzui;

.field zzb:J

.field private zzc:Lcom/google/android/gms/internal/ads/zzuh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:[Lcom/google/android/gms/internal/ads/zzto;

.field private zze:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzui;ZJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzto;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzd:[Lcom/google/android/gms/internal/ads/zzto;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zze:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza(JLcom/google/android/gms/internal/ads/zzmd;)J
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_41

    iget-wide v2, p3, Lcom/google/android/gms/internal/ads/zzmd;->zzf:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v4, p3, Lcom/google/android/gms/internal/ads/zzmd;->zzg:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v10, v6, v8

    if-nez v10, :cond_20

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_21

    :cond_20
    sub-long/2addr v6, p1

    :goto_21
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v4, p3, Lcom/google/android/gms/internal/ads/zzmd;->zzf:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_35

    iget-wide v4, p3, Lcom/google/android/gms/internal/ads/zzmd;->zzg:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3a

    :cond_35
    new-instance p3, Lcom/google/android/gms/internal/ads/zzmd;

    invoke-direct {p3, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzmd;-><init>(JJ)V

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzui;->zza(JLcom/google/android/gms/internal/ads/zzmd;)J

    move-result-wide p1

    return-wide p1

    :cond_41
    return-wide v0
.end method

.method public final zzb()J
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzui;->zzb()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_17

    cmp-long v6, v0, v4

    if-ltz v6, :cond_17

    goto :goto_18

    :cond_17
    return-wide v0

    :cond_18
    :goto_18
    return-wide v2
.end method

.method public final zzc()J
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzui;->zzc()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_17

    cmp-long v6, v0, v4

    if-ltz v6, :cond_17

    goto :goto_18

    :cond_17
    return-wide v0

    :cond_18
    :goto_18
    return-wide v2
.end method

.method public final zzd()J
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzq()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_19

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zztp;->zze:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zze:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzd()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_18

    return-wide v5

    :cond_18
    return-wide v3

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzui;->zzd()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_24

    return-wide v1

    :cond_24
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    cmp-long v6, v3, v0

    if-ltz v6, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_3e

    cmp-long v6, v3, v0

    if-gtz v6, :cond_3f

    :cond_3e
    const/4 v2, 0x1

    :cond_3f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    return-wide v3
.end method

.method public final zze(J)J
    .registers 10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zze:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzd:[Lcom/google/android/gms/internal/ads/zzto;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzto;->zzc()V

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzui;->zze(J)J

    move-result-wide v0

    const/4 v3, 0x1

    cmp-long v4, v0, p1

    if-eqz v4, :cond_35

    const-wide/16 p1, 0x0

    cmp-long v4, v0, p1

    if-ltz v4, :cond_36

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-eqz v6, :cond_35

    cmp-long v4, v0, p1

    if-gtz v4, :cond_36

    :cond_35
    const/4 v2, 0x1

    :cond_36
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    return-wide v0
.end method

.method public final bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzwc;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzui;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzc:Lcom/google/android/gms/internal/ads/zzuh;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzwb;->zzf(Lcom/google/android/gms/internal/ads/zzwc;)V

    return-void
.end method

.method public final zzg([Lcom/google/android/gms/internal/ads/zzxy;[Z[Lcom/google/android/gms/internal/ads/zzwa;[ZJ)J
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p3

    array-length v2, v1

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzto;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zztp;->zzd:[Lcom/google/android/gms/internal/ads/zzto;

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzwa;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    array-length v5, v1

    const/4 v11, 0x0

    if-ge v4, v5, :cond_21

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zztp;->zzd:[Lcom/google/android/gms/internal/ads/zzto;

    aget-object v6, v1, v4

    check-cast v6, Lcom/google/android/gms/internal/ads/zzto;

    aput-object v6, v5, v4

    if-eqz v6, :cond_1c

    iget-object v11, v6, Lcom/google/android/gms/internal/ads/zzto;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    :cond_1c
    aput-object v11, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_21
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    move-object v5, p1

    move-object/from16 v6, p2

    move-object v7, v2

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzui;->zzg([Lcom/google/android/gms/internal/ads/zzxy;[Z[Lcom/google/android/gms/internal/ads/zzwa;[ZJ)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzq()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_3d

    cmp-long v6, p5, v7

    if-nez v6, :cond_3d

    move-wide v9, v7

    goto :goto_3f

    :cond_3d
    move-wide/from16 v9, p5

    :goto_3f
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zztp;->zze:J

    const/4 v6, 0x1

    cmp-long v12, v4, v9

    if-eqz v12, :cond_5d

    cmp-long v9, v4, v7

    if-ltz v9, :cond_5c

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zztp;->zzb:J

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v12, v7, v9

    if-eqz v12, :cond_5d

    cmp-long v9, v4, v7

    if-gtz v9, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v6, 0x0

    :cond_5d
    :goto_5d
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    :goto_60
    array-length v6, v1

    if-ge v3, v6, :cond_86

    aget-object v6, v2, v3

    if-nez v6, :cond_6c

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zztp;->zzd:[Lcom/google/android/gms/internal/ads/zzto;

    aput-object v11, v6, v3

    goto :goto_7d

    :cond_6c
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zztp;->zzd:[Lcom/google/android/gms/internal/ads/zzto;

    aget-object v8, v7, v3

    if-eqz v8, :cond_76

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzto;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    if-eq v8, v6, :cond_7d

    :cond_76
    new-instance v8, Lcom/google/android/gms/internal/ads/zzto;

    invoke-direct {v8, p0, v6}, Lcom/google/android/gms/internal/ads/zzto;-><init>(Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/internal/ads/zzwa;)V

    aput-object v8, v7, v3

    :cond_7d
    :goto_7d
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zztp;->zzd:[Lcom/google/android/gms/internal/ads/zzto;

    aget-object v6, v6, v3

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    :cond_86
    return-wide v4
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzui;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzc:Lcom/google/android/gms/internal/ads/zzuh;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzuh;->zzh(Lcom/google/android/gms/internal/ads/zzui;)V

    return-void
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzwl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzui;->zzi()Lcom/google/android/gms/internal/ads/zzwl;

    move-result-object v0

    return-object v0
.end method

.method public final zzj(JZ)V
    .registers 5

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzui;->zzk()V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzuh;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzc:Lcom/google/android/gms/internal/ads/zzuh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzui;->zzl(Lcom/google/android/gms/internal/ads/zzuh;J)V

    return-void
.end method

.method public final zzm(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzui;->zzm(J)V

    return-void
.end method

.method public final zzn(JJ)V
    .registers 5

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzb:J

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzla;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzui;->zzo(Lcom/google/android/gms/internal/ads/zzla;)Z

    move-result p1

    return p1
.end method

.method public final zzp()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzui;->zzp()Z

    move-result v0

    return v0
.end method

.method final zzq()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zze:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method
