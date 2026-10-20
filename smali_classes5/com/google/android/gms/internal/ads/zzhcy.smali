###### Class com.google.android.gms.internal.ads.zzhcy (com.google.android.gms.internal.ads.zzhcy)
.class public abstract Lcom/google/android/gms/internal/ads/zzhcy;
.super Lcom/google/android/gms/internal/ads/zzhcw;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaom;


# instance fields
.field private zza:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    const-string p1, "mvhd"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhcw;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzh()I
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzc:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhcw;->zzg()V

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:I

    return v0
.end method

.method protected final zzi(Ljava/nio/ByteBuffer;)J
    .registers 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaol;->zzc(B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhcy;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaol;->zzd(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    const-wide/16 v0, 0x4

    return-wide v0
.end method
