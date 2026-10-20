###### Class com.google.android.gms.internal.ads.zzaht (com.google.android.gms.internal.ads.zzaht)
.class final Lcom/google/android/gms/internal/ads/zzaht;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field public final zza:I

.field public zzb:I

.field public zzc:I

.field public zzd:J

.field private final zze:Z

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfj;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfj;

.field private zzh:I

.field private zzi:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfj;Lcom/google/android/gms/internal/ads/zzfj;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcf;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzg:Lcom/google/android/gms/internal/ads/zzfj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzf:Lcom/google/android/gms/internal/ads/zzfj;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzaht;->zze:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaht;->zza:I

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzi:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_25

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzb:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaht;->zza:I

    if-ne v0, v2, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zze:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzf:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzu()J

    move-result-wide v2

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzf:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v2

    :goto_1d
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzd:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzh:I

    if-ne v0, v2, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzg:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzg:Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzi:I

    const/4 v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzi:I

    if-lez v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzg:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v0

    add-int/2addr v2, v0

    :cond_42
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaht;->zzh:I

    :cond_44
    return v1
.end method
