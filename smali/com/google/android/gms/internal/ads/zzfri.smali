###### Class com.google.android.gms.internal.ads.zzfri (com.google.android.gms.internal.ads.zzfri)
.class final Lcom/google/android/gms/internal/ads/zzfri;
.super Lcom/google/android/gms/internal/ads/zzfsc;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private zza:Landroid/os/IBinder;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:F

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:B


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsc;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsc;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzfsc;
    .registers 2

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzfsc;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzc:I

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    return-object p0
.end method

.method public final zze(F)Lcom/google/android/gms/internal/ads/zzfsc;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzd:F

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    return-object p0
.end method

.method public final zzf(Z)Lcom/google/android/gms/internal/ads/zzfsc;
    .registers 2

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    return-object p0
.end method

.method public final zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzfsc;
    .registers 3

    const-string v0, "Null windowToken"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zza:Landroid/os/IBinder;

    return-object p0
.end method

.method public final zzh(I)Lcom/google/android/gms/internal/ads/zzfsc;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zze:I

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzfsd;
    .registers 16

    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_22

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfri;->zza:Landroid/os/IBinder;

    if-nez v3, :cond_b

    goto :goto_22

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrk;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzb:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzc:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzd:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzfri;->zze:I

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzf:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzfrk;-><init>(Landroid/os/IBinder;ZLjava/lang/String;IFILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfrj;)V

    return-object v0

    :cond_22
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zza:Landroid/os/IBinder;

    if-nez v1, :cond_30

    const-string v1, " windowToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3b

    const-string v1, " stableSessionToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_46

    const-string v1, " layoutGravity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_51

    const-string v1, " layoutVerticalMargin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_5c

    const-string v1, " displayMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzg:B

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_67

    const-string v1, " windowWidthPx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_67
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
