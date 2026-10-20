###### Class com.google.android.gms.internal.ads.zzhcw (com.google.android.gms.internal.ads.zzhcw)
.class public abstract Lcom/google/android/gms/internal/ads/zzhcw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaom;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhdh;


# instance fields
.field protected final zzb:Ljava/lang/String;

.field zzc:Z

.field zzd:Z

.field zze:J

.field zzf:J

.field zzg:Lcom/google/android/gms/internal/ads/zzhdb;

.field private zzh:Lcom/google/android/gms/internal/ads/zzaon;

.field private zzi:Ljava/nio/ByteBuffer;

.field private zzj:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzhcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhdh;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhdh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhcw;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzf:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzj:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzb:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzd:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzc:Z

    return-void
.end method

.method private final declared-synchronized zzd()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzd:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_39

    if-nez v0, :cond_37

    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcw;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    const-string v1, "mem mapping "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_16
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1c
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhdh;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzg:Lcom/google/android/gms/internal/ads/zzhdb;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zze:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzf:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhdb;->zzd(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzi:Ljava/nio/ByteBuffer;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2b} :catch_30
    .catchall {:try_start_5 .. :try_end_2b} :catchall_39

    const/4 v0, 0x1

    :try_start_2c
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzd:Z
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_39

    monitor-exit p0

    return-void

    :catch_30
    move-exception v0

    :try_start_31
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_39

    :cond_37
    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhdb;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzaoj;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhdb;->zzb()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zze:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzf:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzg:Lcom/google/android/gms/internal/ads/zzhdb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhdb;->zzb()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhdb;->zze(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzd:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzc:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhcw;->zzg()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaon;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzh:Lcom/google/android/gms/internal/ads/zzaon;

    return-void
.end method

.method protected abstract zzf(Ljava/nio/ByteBuffer;)V
.end method

.method public final declared-synchronized zzg()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhcw;->zzd()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcw;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    const-string v1, "parsing details of "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_15
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhdh;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzi:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzc:Z

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhcw;->zzf(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_37

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzj:Ljava/nio/ByteBuffer;

    :cond_37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcw;->zzi:Ljava/nio/ByteBuffer;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3e

    monitor-exit p0

    return-void

    :cond_3c
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
