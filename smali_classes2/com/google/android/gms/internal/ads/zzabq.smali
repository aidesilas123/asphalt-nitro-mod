###### Class com.google.android.gms.internal.ads.zzabq (com.google.android.gms.internal.ads.zzabq)
.class public Lcom/google/android/gms/internal/ads/zzabq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzabk;

.field protected final zzb:Lcom/google/android/gms/internal/ads/zzabp;

.field protected zzc:Lcom/google/android/gms/internal/ads/zzabm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzabn;Lcom/google/android/gms/internal/ads/zzabp;JJJJJJI)V
    .registers 32

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzabq;->zzd:I

    new-instance v15, Lcom/google/android/gms/internal/ads/zzabk;

    const-wide/16 v5, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Lcom/google/android/gms/internal/ads/zzabn;JJJJJJ)V

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzabq;->zza:Lcom/google/android/gms/internal/ads/zzabk;

    return-void
.end method

.method protected static final zzf(Lcom/google/android/gms/internal/ads/zzacf;JLcom/google/android/gms/internal/ads/zzadb;)I
    .registers 6

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iput-wide p1, p3, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    const/4 p0, 0x1

    return p0
.end method

.method protected static final zzg(Lcom/google/android/gms/internal/ads/zzacf;J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1b

    const-wide/32 v1, 0x40000

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1b

    long-to-int p2, p1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzacf;Lcom/google/android/gms/internal/ads/zzadb;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzc:Lcom/google/android/gms/internal/ads/zzabm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabm;->zzb(Lcom/google/android/gms/internal/ads/zzabm;)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabm;->zza(Lcom/google/android/gms/internal/ads/zzabm;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzd:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabm;->zzc(Lcom/google/android/gms/internal/ads/zzabm;)J

    move-result-wide v6

    int-to-long v8, v5

    const/4 v5, 0x0

    cmp-long v10, v3, v8

    if-gtz v10, :cond_22

    invoke-virtual {p0, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzabq;->zzc(ZJ)V

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzabq;->zzf(Lcom/google/android/gms/internal/ads/zzacf;JLcom/google/android/gms/internal/ads/zzadb;)I

    move-result p1

    return p1

    :cond_22
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzabq;->zzg(Lcom/google/android/gms/internal/ads/zzacf;J)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {p1, v6, v7, p2}, Lcom/google/android/gms/internal/ads/zzabq;->zzf(Lcom/google/android/gms/internal/ads/zzacf;JLcom/google/android/gms/internal/ads/zzadb;)I

    move-result p1

    return p1

    :cond_2d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabm;->zze(Lcom/google/android/gms/internal/ads/zzabm;)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzabp;->zza(Lcom/google/android/gms/internal/ads/zzacf;J)Lcom/google/android/gms/internal/ads/zzabo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabo;->zza(Lcom/google/android/gms/internal/ads/zzabo;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_77

    const/4 v3, -0x2

    if-eq v2, v3, :cond_6b

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5f

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabo;->zzb(Lcom/google/android/gms/internal/ads/zzabo;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzabq;->zzg(Lcom/google/android/gms/internal/ads/zzacf;J)Z

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabo;->zzb(Lcom/google/android/gms/internal/ads/zzabo;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzabq;->zzc(ZJ)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabo;->zzb(Lcom/google/android/gms/internal/ads/zzabo;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzabq;->zzf(Lcom/google/android/gms/internal/ads/zzacf;JLcom/google/android/gms/internal/ads/zzadb;)I

    move-result p1

    return p1

    :cond_5f
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabo;->zzc(Lcom/google/android/gms/internal/ads/zzabo;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabo;->zzb(Lcom/google/android/gms/internal/ads/zzabo;)J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzabm;->zzg(Lcom/google/android/gms/internal/ads/zzabm;JJ)V

    goto :goto_0

    :cond_6b
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabo;->zzc(Lcom/google/android/gms/internal/ads/zzabo;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabo;->zzb(Lcom/google/android/gms/internal/ads/zzabo;)J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzabm;->zzh(Lcom/google/android/gms/internal/ads/zzabm;JJ)V

    goto :goto_0

    :cond_77
    invoke-virtual {p0, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzabq;->zzc(ZJ)V

    invoke-static {p1, v6, v7, p2}, Lcom/google/android/gms/internal/ads/zzabq;->zzf(Lcom/google/android/gms/internal/ads/zzacf;JLcom/google/android/gms/internal/ads/zzadb;)I

    move-result p1

    return p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzade;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabq;->zza:Lcom/google/android/gms/internal/ads/zzabk;

    return-object v0
.end method

.method protected final zzc(ZJ)V
    .registers 4

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzc:Lcom/google/android/gms/internal/ads/zzabm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzabp;->zzb()V

    return-void
.end method

.method public final zzd(J)V
    .registers 20

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabq;->zzc:Lcom/google/android/gms/internal/ads/zzabm;

    if-eqz v1, :cond_11

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabm;->zzd(Lcom/google/android/gms/internal/ads/zzabm;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_11

    return-void

    :cond_11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabq;->zza:Lcom/google/android/gms/internal/ads/zzabk;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzabm;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzabk;->zzf(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabk;->zzd(Lcom/google/android/gms/internal/ads/zzabk;)J

    move-result-wide v8

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabk;->zze(Lcom/google/android/gms/internal/ads/zzabk;)J

    move-result-wide v10

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabk;->zzc(Lcom/google/android/gms/internal/ads/zzabk;)J

    move-result-wide v12

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabk;->zzb(Lcom/google/android/gms/internal/ads/zzabk;)J

    move-result-wide v15

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object v0, v14

    move-wide v14, v15

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzabm;-><init>(JJJJJJJ)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzabq;->zzc:Lcom/google/android/gms/internal/ads/zzabm;

    return-void
.end method

.method public final zze()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabq;->zzc:Lcom/google/android/gms/internal/ads/zzabm;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
