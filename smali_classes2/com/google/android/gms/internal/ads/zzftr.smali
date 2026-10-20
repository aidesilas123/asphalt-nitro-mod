###### Class com.google.android.gms.internal.ads.zzftr (com.google.android.gms.internal.ads.zzftr)
.class public final Lcom/google/android/gms/internal/ads/zzftr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzftp;

.field private zzc:Lcom/google/android/gms/internal/ads/zzftp;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzftq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzftp;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzftp;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftr;->zzb:Lcom/google/android/gms/internal/ads/zzftp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftr;->zzc:Lcom/google/android/gms/internal/ads/zzftp;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftr;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftr;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftr;->zzb:Lcom/google/android/gms/internal/ads/zzftp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzftp;->zzb:Lcom/google/android/gms/internal/ads/zzftp;

    const-string v2, ""

    :goto_17
    if-eqz v1, :cond_46

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzftp;->zza:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_41

    :cond_3e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_41
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzftp;->zzb:Lcom/google/android/gms/internal/ads/zzftp;

    const-string v2, ", "

    goto :goto_17

    :cond_46
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzftr;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzftp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzftp;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftr;->zzc:Lcom/google/android/gms/internal/ads/zzftp;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzftp;->zzb:Lcom/google/android/gms/internal/ads/zzftp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftr;->zzc:Lcom/google/android/gms/internal/ads/zzftp;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzftp;->zza:Ljava/lang/Object;

    return-object p0
.end method
