###### Class com.google.android.gms.internal.play_billing.zzcl (com.google.android.gms.internal.play_billing.zzcl)
.class public Lcom/google/android/gms/internal/play_billing/zzcl;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzbn;


# instance fields
.field protected volatile zza:Lcom/google/android/gms/internal/play_billing/zzdf;

.field private volatile zzc:Lcom/google/android/gms/internal/play_billing/zzba;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzbn;->zza:Lcom/google/android/gms/internal/play_billing/zzbn;

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzcl;->zzb:Lcom/google/android/gms/internal/play_billing/zzbn;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzcl;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzcl;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/zzcl;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    if-nez v0, :cond_22

    if-eqz v1, :cond_15

    goto :goto_22

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzcl;->zzb()Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzcl;->zzb()Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzba;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_22
    :goto_22
    if-eqz v0, :cond_2c

    if-nez v1, :cond_27

    goto :goto_2c

    :cond_27
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2c
    :goto_2c
    if-eqz v0, :cond_3c

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzdg;->zzf()Lcom/google/android/gms/internal/play_billing/zzdf;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc(Lcom/google/android/gms/internal/play_billing/zzdf;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzcl;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3c
    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzdg;->zzf()Lcom/google/android/gms/internal/play_billing/zzdf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc(Lcom/google/android/gms/internal/play_billing/zzdf;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zza()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzax;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzax;->zza:[B

    array-length v0, v0

    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzdf;->zze()I

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/play_billing/zzba;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;

    monitor-exit p0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    if-nez v0, :cond_19

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzba;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;

    goto :goto_21

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzdf;->zzb()Lcom/google/android/gms/internal/play_billing/zzba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;

    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v0
.end method

.method protected final zzc(Lcom/google/android/gms/internal/play_billing/zzdf;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1b

    if-nez v0, :cond_19

    :try_start_a
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzba;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;
    :try_end_10
    .catch Lcom/google/android/gms/internal/play_billing/zzci; {:try_start_a .. :try_end_10} :catch_11
    .catchall {:try_start_a .. :try_end_10} :catchall_1b

    goto :goto_17

    :catch_11
    :try_start_11
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzba;->zzb:Lcom/google/android/gms/internal/play_billing/zzba;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcl;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;

    :goto_17
    monitor-exit p0

    return-void

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw p1
.end method
