###### Class com.google.android.gms.internal.measurement.zzjo (com.google.android.gms.internal.measurement.zzjo)
.class public final Lcom/google/android/gms/internal/measurement/zzjo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@20.1.2"


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzjo;

.field private static volatile zzb:Z

.field private static volatile zzc:Lcom/google/android/gms/internal/measurement/zzjo;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzjo;


# instance fields
.field private final zze:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjo;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Lcom/google/android/gms/internal/measurement/zzjo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zze:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzjo;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjo;->zzc:Lcom/google/android/gms/internal/measurement/zzjo;

    if-nez v0, :cond_14

    const-class v1, Lcom/google/android/gms/internal/measurement/zzjo;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjo;->zzc:Lcom/google/android/gms/internal/measurement/zzjo;

    if-nez v0, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Lcom/google/android/gms/internal/measurement/zzjo;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjo;->zzc:Lcom/google/android/gms/internal/measurement/zzjo;

    :cond_f
    monitor-exit v1

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :goto_14
    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzjo;
    .registers 2

    const-class v0, Lcom/google/android/gms/internal/measurement/zzjo;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjo;->zzd:Lcom/google/android/gms/internal/measurement/zzjo;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    monitor-enter v0

    :try_start_8
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjo;->zzd:Lcom/google/android/gms/internal/measurement/zzjo;

    if-eqz v1, :cond_e

    monitor-exit v0

    return-object v1

    :cond_e
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjw;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzjo;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzjo;->zzd:Lcom/google/android/gms/internal/measurement/zzjo;

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/measurement/zzlj;I)Lcom/google/android/gms/internal/measurement/zzka;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zze:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjn;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjn;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzka;

    return-object p1
.end method
