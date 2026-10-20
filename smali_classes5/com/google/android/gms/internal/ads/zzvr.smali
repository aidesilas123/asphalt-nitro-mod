###### Class com.google.android.gms.internal.ads.zzvr (com.google.android.gms.internal.ads.zzvr)
.class public final Lcom/google/android/gms/internal/ads/zzvr;
.super Lcom/google/android/gms/internal/ads/zztl;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzrr;

.field private final zzc:I

.field private zzd:Z

.field private zze:J

.field private zzf:Z

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/ads/zzhs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/ads/zzbs;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzj:Lcom/google/android/gms/internal/ads/zzvo;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzyr;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbs;Lcom/google/android/gms/internal/ads/zzgp;Lcom/google/android/gms/internal/ads/zzvo;Lcom/google/android/gms/internal/ads/zzrr;Lcom/google/android/gms/internal/ads/zzyr;ILcom/google/android/gms/internal/ads/zzvq;)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzi:Lcom/google/android/gms/internal/ads/zzbs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvr;->zza:Lcom/google/android/gms/internal/ads/zzgp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzj:Lcom/google/android/gms/internal/ads/zzvo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzb:Lcom/google/android/gms/internal/ads/zzrr;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzk:Lcom/google/android/gms/internal/ads/zzyr;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzc:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzd:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvr;->zze:J

    return-void
.end method

.method private final zzw()V
    .registers 26

    move-object/from16 v0, p0

    new-instance v10, Lcom/google/android/gms/internal/ads/zzwe;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzvr;->zze:J

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzvr;->zzf:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvr;->zzg:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvr;->zzJ()Lcom/google/android/gms/internal/ads/zzbs;

    move-result-object v14

    if-eqz v1, :cond_13

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzbs;->zzf:Lcom/google/android/gms/internal/ads/zzbi;

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    move-object/from16 v21, v1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v2, v6

    move-wide v4, v6

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v20, v14

    move-wide v14, v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v10

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v16, v11

    move-wide/from16 v10, v22

    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/zzwe;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzbs;Lcom/google/android/gms/internal/ads/zzbi;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvr;->zzd:Z

    if-eqz v1, :cond_42

    new-instance v10, Lcom/google/android/gms/internal/ads/zzvn;

    move-object/from16 v1, v24

    invoke-direct {v10, v0, v1}, Lcom/google/android/gms/internal/ads/zzvn;-><init>(Lcom/google/android/gms/internal/ads/zzvr;Lcom/google/android/gms/internal/ads/zzda;)V

    goto :goto_45

    :cond_42
    move-object/from16 v1, v24

    move-object v10, v1

    :goto_45
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zztl;->zzo(Lcom/google/android/gms/internal/ads/zzda;)V

    return-void
.end method


# virtual methods
.method public final zzG(Lcom/google/android/gms/internal/ads/zzui;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvm;->zzN()V

    return-void
.end method

.method public final zzI(Lcom/google/android/gms/internal/ads/zzuk;Lcom/google/android/gms/internal/ads/zzyn;J)Lcom/google/android/gms/internal/ads/zzui;
    .registers 21

    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzvr;->zza:Lcom/google/android/gms/internal/ads/zzgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgp;->zza()Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v2

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzvr;->zzh:Lcom/google/android/gms/internal/ads/zzhs;

    if-eqz v0, :cond_f

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzgq;->zzf(Lcom/google/android/gms/internal/ads/zzhs;)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvr;->zzJ()Lcom/google/android/gms/internal/ads/zzbs;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbs;->zzd:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzvr;->zzj:Lcom/google/android/gms/internal/ads/zzvo;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzvm;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztl;->zzb()Lcom/google/android/gms/internal/ads/zzov;

    new-instance v3, Lcom/google/android/gms/internal/ads/zztn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzacl;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zztn;-><init>(Lcom/google/android/gms/internal/ads/zzacl;)V

    iget-object v4, v14, Lcom/google/android/gms/internal/ads/zzvr;->zzb:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zztl;->zzc(Lcom/google/android/gms/internal/ads/zzuk;)Lcom/google/android/gms/internal/ads/zzrl;

    move-result-object v5

    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zzvr;->zzk:Lcom/google/android/gms/internal/ads/zzyr;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zztl;->zze(Lcom/google/android/gms/internal/ads/zzuk;)Lcom/google/android/gms/internal/ads/zzut;

    move-result-object v7

    iget v11, v14, Lcom/google/android/gms/internal/ads/zzvr;->zzc:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbl;->zzb:Landroid/net/Uri;

    const/4 v10, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v12

    move-object v0, v15

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzvm;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzvb;Lcom/google/android/gms/internal/ads/zzrr;Lcom/google/android/gms/internal/ads/zzrl;Lcom/google/android/gms/internal/ads/zzyr;Lcom/google/android/gms/internal/ads/zzut;Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzyn;Ljava/lang/String;IJ)V

    return-object v15
.end method

.method public final declared-synchronized zzJ()Lcom/google/android/gms/internal/ads/zzbs;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzi:Lcom/google/android/gms/internal/ads/zzbs;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza(JZZ)V
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvr;->zze:J

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzd:Z

    if-nez v0, :cond_1e

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvr;->zze:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1e

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzf:Z

    if-ne v0, p3, :cond_1e

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzg:Z

    if-ne v0, p4, :cond_1e

    return-void

    :cond_1e
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvr;->zze:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzf:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzg:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvr;->zzw()V

    return-void
.end method

.method protected final zzn(Lcom/google/android/gms/internal/ads/zzhs;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzhs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzh:Lcom/google/android/gms/internal/ads/zzhs;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztl;->zzb()Lcom/google/android/gms/internal/ads/zzov;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvr;->zzw()V

    return-void
.end method

.method protected final zzq()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized zzt(Lcom/google/android/gms/internal/ads/zzbs;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzi:Lcom/google/android/gms/internal/ads/zzbs;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzz()V
    .registers 1

    return-void
.end method
