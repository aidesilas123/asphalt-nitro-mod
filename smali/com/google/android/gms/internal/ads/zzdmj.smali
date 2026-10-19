###### Class com.google.android.gms.internal.ads.zzdmj (com.google.android.gms.internal.ads.zzdmj)
.class public final Lcom/google/android/gms/internal/ads/zzdmj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdkk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdkp;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkk;Lcom/google/android/gms/internal/ads/zzdkp;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zza:Lcom/google/android/gms/internal/ads/zzdkk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zzb:Lcom/google/android/gms/internal/ads/zzdkp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zzc:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zzd:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzdmj;Lcom/google/android/gms/internal/ads/zzcgv;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdmj;->zzb(Lcom/google/android/gms/internal/ads/zzcgv;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzcgv;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdmh;-><init>(Lcom/google/android/gms/internal/ads/zzcgv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zzc:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final zzq()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zzb:Lcom/google/android/gms/internal/ads/zzdkp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkp;->zzd()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_68

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zza:Lcom/google/android/gms/internal/ads/zzdkk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkk;->zzu()Lcom/google/android/gms/internal/ads/zzflf;

    move-result-object v1

    if-nez v1, :cond_4f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkk;->zzw()Lcom/google/common/util/concurrent/h0;

    move-result-object v0

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdc;->zzeZ:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zza:Lcom/google/android/gms/internal/ads/zzdkk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkk;->zzw()Lcom/google/common/util/concurrent/h0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkk;->zzp()Lcom/google/android/gms/internal/ads/zzccf;

    move-result-object v0

    if-eqz v1, :cond_68

    if-eqz v0, :cond_68

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/common/util/concurrent/h0;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgbb;->zzl([Lcom/google/common/util/concurrent/h0;)Lcom/google/common/util/concurrent/h0;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdmi;-><init>(Lcom/google/android/gms/internal/ads/zzdmj;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zzd:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbb;->zzr(Lcom/google/common/util/concurrent/h0;Lcom/google/android/gms/internal/ads/zzgax;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_4f
    if-eqz v1, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmj;->zza:Lcom/google/android/gms/internal/ads/zzdkk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkk;->zzr()Lcom/google/android/gms/internal/ads/zzcgv;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkk;->zzs()Lcom/google/android/gms/internal/ads/zzcgv;

    move-result-object v0

    if-eqz v1, :cond_5e

    goto :goto_63

    :cond_5e
    if-eqz v0, :cond_62

    move-object v1, v0

    goto :goto_63

    :cond_62
    const/4 v1, 0x0

    :goto_63
    if-eqz v1, :cond_68

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdmj;->zzb(Lcom/google/android/gms/internal/ads/zzcgv;)V

    :cond_68
    :goto_68
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdmh (com.google.android.gms.internal.ads.zzdmh)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    const-string v2, "onSdkImpression"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbmx;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
