###### Class com.google.android.gms.internal.ads.zzarz (com.google.android.gms.internal.ads.zzarz)
.class final Lcom/google/android/gms/internal/ads/zzarz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfpo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfno;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasb;Lcom/google/android/gms/internal/ads/zzfno;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzarz;->zza:Lcom/google/android/gms/internal/ads/zzfno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/io/File;)Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarz;->zza:Lcom/google/android/gms/internal/ads/zzfno;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfno;->zza(Ljava/io/File;)Z

    move-result p1
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    const/4 p1, 0x0

    return p1
.end method
