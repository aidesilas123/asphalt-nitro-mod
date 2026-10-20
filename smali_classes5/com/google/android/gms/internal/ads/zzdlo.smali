###### Class com.google.android.gms.internal.ads.zzdlo (com.google.android.gms.internal.ads.zzdlo)
.class public final Lcom/google/android/gms/internal/ads/zzdlo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzb:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzc:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdpj;

.field private final zze:Lcom/google/android/gms/common/util/Clock;

.field private zzf:Lcom/google/android/gms/internal/ads/zzbic;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/ads/zzbkd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpj;Lcom/google/android/gms/common/util/Clock;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzd:Lcom/google/android/gms/internal/ads/zzdpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zze:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzd()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzb:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzc:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_a

    goto :goto_1b

    :cond_a
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1b

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzc:Ljava/lang/ref/WeakReference;

    :cond_1b
    :goto_1b
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_b

    goto :goto_46

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zza:Ljava/lang/String;

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzb:Ljava/lang/Long;

    if-eqz p1, :cond_43

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zza:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zze:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzb:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_interval"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "messageType"

    const-string v1, "onePointFiveClick"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzd:Lcom/google/android/gms/internal/ads/zzdpj;

    const-string v1, "sendMessageToNativeJs"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdpj;->zzg(Ljava/lang/String;Ljava/util/Map;)V

    :cond_43
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdlo;->zzd()V

    :cond_46
    :goto_46
    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzbic;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzf:Lcom/google/android/gms/internal/ads/zzbic;

    return-object v0
.end method

.method public final zzb()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzf:Lcom/google/android/gms/internal/ads/zzbic;

    if-nez v0, :cond_5

    goto :goto_18

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzb:Ljava/lang/Long;

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdlo;->zzd()V

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzf:Lcom/google/android/gms/internal/ads/zzbic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbic;->zze()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbic;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzf:Lcom/google/android/gms/internal/ads/zzbic;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzg:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v1, "/unconfirmedClick"

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzd:Lcom/google/android/gms/internal/ads/zzdpj;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzdpj;->zzk(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkd;)V

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdln;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdln;-><init>(Lcom/google/android/gms/internal/ads/zzdlo;Lcom/google/android/gms/internal/ads/zzbic;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzg:Lcom/google/android/gms/internal/ads/zzbkd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlo;->zzd:Lcom/google/android/gms/internal/ads/zzdpj;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdpj;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkd;)V

    return-void
.end method
