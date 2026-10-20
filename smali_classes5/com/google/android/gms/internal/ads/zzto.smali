###### Class com.google.android.gms.internal.ads.zzto (com.google.android.gms.internal.ads.zzto)
.class final Lcom/google/android/gms/internal/ads/zzto;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwa;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzwa;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zztp;

.field private zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/internal/ads/zzwa;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zztp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzto;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzib;I)I
    .registers 16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zztp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztp;->zzq()Z

    move-result v1

    const/4 v2, -0x3

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzc:Z

    const/4 v3, 0x4

    const/4 v4, -0x4

    if-eqz v1, :cond_14

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzhv;->zzc(I)V

    return v4

    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztp;->zzb()J

    move-result-wide v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzto;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    invoke-interface {v5, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwa;->zza(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzib;I)I

    move-result p3

    const/4 v5, -0x5

    const-wide/high16 v6, -0x8000000000000000L

    if-ne p3, v5, :cond_4e

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzam;->zzC:I

    const/4 v0, 0x0

    if-nez p3, :cond_32

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzam;->zzD:I

    if-eqz p3, :cond_4d

    const/4 p3, 0x0

    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zztp;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zztp;->zzb:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_3b

    goto :goto_3d

    :cond_3b
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzam;->zzD:I

    :goto_3d
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzam;->zzb()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzak;->zzE(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzak;->zzF(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzam;

    :cond_4d
    return v5

    :cond_4e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zztp;

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zztp;->zzb:J

    cmp-long p1, v8, v6

    if-eqz p1, :cond_72

    if-ne p3, v4, :cond_5e

    iget-wide v10, p2, Lcom/google/android/gms/internal/ads/zzib;->zze:J

    cmp-long p1, v10, v8

    if-gez p1, :cond_68

    :cond_5e
    if-ne p3, v2, :cond_72

    cmp-long p1, v0, v6

    if-nez p1, :cond_72

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzib;->zzd:Z

    if-nez p1, :cond_72

    :cond_68
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhv;->zzb()V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzhv;->zzc(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzc:Z

    return v4

    :cond_72
    return p3
.end method

.method public final zzb(J)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zztp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztp;->zzq()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, -0x3

    return p1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwa;->zzb(J)I

    move-result p1

    return p1
.end method

.method public final zzc()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzc:Z

    return-void
.end method

.method public final zzd()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwa;->zzd()V

    return-void
.end method

.method public final zze()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zztp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztp;->zzq()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwa;->zze()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method
