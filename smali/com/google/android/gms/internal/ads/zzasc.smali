###### Class com.google.android.gms.internal.ads.zzasc (com.google.android.gms.internal.ads.zzasc)
.class final Lcom/google/android/gms/internal/ads/zzasc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzasd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasc;->zza:Lcom/google/android/gms/internal/ads/zzasd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasc;->zza:Lcom/google/android/gms/internal/ads/zzasd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasd;->zzb:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasd;->zza()Landroid/os/ConditionVariable;

    move-result-object v0

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasc;->zza:Lcom/google/android/gms/internal/ads/zzasd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasd;->zzb:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_48

    return-void

    :cond_14
    const/4 v1, 0x0

    :try_start_15
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbdc;->zzco:Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbeh;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_21} :catch_22
    .catchall {:try_start_15 .. :try_end_21} :catchall_48

    goto :goto_23

    :catch_22
    const/4 v2, 0x0

    :goto_23
    if-eqz v2, :cond_36

    :try_start_25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasc;->zza:Lcom/google/android/gms/internal/ads/zzasd;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzasd;->zzb(Lcom/google/android/gms/internal/ads/zzasd;)Lcom/google/android/gms/internal/ads/zzatj;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzatj;->zza:Landroid/content/Context;

    const-string v4, "ADSHIELD"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfpv;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfpv;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzasd;->zza:Lcom/google/android/gms/internal/ads/zzfpv;
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_37

    :cond_36
    move v1, v2

    :catchall_37
    :try_start_37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasc;->zza:Lcom/google/android/gms/internal/ads/zzasd;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzasd;->zzb:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasd;->zza()Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0

    return-void

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_37 .. :try_end_4a} :catchall_48

    throw v1
.end method
