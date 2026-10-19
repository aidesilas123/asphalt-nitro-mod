###### Class com.google.android.gms.internal.ads.zzayy (com.google.android.gms.internal.ads.zzayy)
.class final Lcom/google/android/gms/internal/ads/zzayy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwq;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgwq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzayy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayy;->zza:Lcom/google/android/gms/internal/ads/zzgwq;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayz;->zza:Lcom/google/android/gms/internal/ads/zzayz;

    packed-switch p1, :pswitch_data_2e

    const/4 v0, 0x0

    goto :goto_27

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayz;->zzl:Lcom/google/android/gms/internal/ads/zzayz;

    goto :goto_27

    :pswitch_a
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayz;->zzk:Lcom/google/android/gms/internal/ads/zzayz;

    goto :goto_27

    :pswitch_d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayz;->zzj:Lcom/google/android/gms/internal/ads/zzayz;

    goto :goto_27

    :pswitch_10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayz;->zzi:Lcom/google/android/gms/internal/ads/zzayz;

    goto :goto_27

    :pswitch_13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayz;->zzh:Lcom/google/android/gms/internal/ads/zzayz;

    goto :goto_27

    :pswitch_16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayz;->zzg:Lcom/google/android/gms/internal/ads/zzayz;

    goto :goto_27

    :pswitch_19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayz;->zzf:Lcom/google/android/gms/internal/ads/zzayz;

    goto :goto_27

    :pswitch_1c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayz;->zze:Lcom/google/android/gms/internal/ads/zzayz;

    goto :goto_27

    :pswitch_1f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayz;->zzd:Lcom/google/android/gms/internal/ads/zzayz;

    goto :goto_27

    :pswitch_22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayz;->zzc:Lcom/google/android/gms/internal/ads/zzayz;

    goto :goto_27

    :pswitch_25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayz;->zzb:Lcom/google/android/gms/internal/ads/zzayz;

    :goto_27
    :pswitch_27
    if-eqz v0, :cond_2b

    const/4 p1, 0x1

    return p1

    :cond_2b
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_27
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method
