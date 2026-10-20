###### Class com.google.android.gms.internal.ads.zzcqg (com.google.android.gms.internal.ads.zzcqg)
.class public final Lcom/google/android/gms/internal/ads/zzcqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbpd;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcql;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbkd;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbkd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpd;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcqd;-><init>(Lcom/google/android/gms/internal/ads/zzcqg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zze:Lcom/google/android/gms/internal/ads/zzbkd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcqf;-><init>(Lcom/google/android/gms/internal/ads/zzcqg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzf:Lcom/google/android/gms/internal/ads/zzbkd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzb:Lcom/google/android/gms/internal/ads/zzbpd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzcqg;)Lcom/google/android/gms/internal/ads/zzcql;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzd:Lcom/google/android/gms/internal/ads/zzcql;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzcqg;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzc:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzcqg;Ljava/util/Map;)Z
    .registers 3

    if-nez p1, :cond_3

    goto :goto_1b

    :cond_3
    const-string v0, "hashCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zza:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzcql;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzb:Lcom/google/android/gms/internal/ads/zzbpd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zze:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v2, "/updateActiveView"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbpd;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzb:Lcom/google/android/gms/internal/ads/zzbpd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzf:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v2, "/untrackActiveViewUnit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbpd;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkd;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzd:Lcom/google/android/gms/internal/ads/zzcql;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzcgv;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zze:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcgv;->zzad(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzf:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcgv;->zzad(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkd;)V

    return-void
.end method

.method public final zze()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzb:Lcom/google/android/gms/internal/ads/zzbpd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zze:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v2, "/updateActiveView"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbpd;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzb:Lcom/google/android/gms/internal/ads/zzbpd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzf:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v2, "/untrackActiveViewUnit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbpd;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkd;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzcgv;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zze:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v1, "/updateActiveView"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcgv;->zzau(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzf:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v1, "/untrackActiveViewUnit"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcgv;->zzau(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkd;)V

    return-void
.end method
