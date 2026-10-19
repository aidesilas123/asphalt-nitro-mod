###### Class com.google.android.gms.internal.ads.zzvh (com.google.android.gms.internal.ads.zzvh)
.class final Lcom/google/android/gms/internal/ads/zzvh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyw;
.implements Lcom/google/android/gms/internal/ads/zztz;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzvm;

.field private final zzb:J

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhr;

.field private final zze:Lcom/google/android/gms/internal/ads/zzvb;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzach;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzei;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzadb;

.field private volatile zzi:Z

.field private zzj:Z

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/ads/zzgv;

.field private zzm:Lcom/google/android/gms/internal/ads/zzadk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvm;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzvb;Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzei;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zza:Lcom/google/android/gms/internal/ads/zzvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzc:Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhr;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhr;-><init>(Lcom/google/android/gms/internal/ads/zzgq;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzd:Lcom/google/android/gms/internal/ads/zzhr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvh;->zze:Lcom/google/android/gms/internal/ads/zzvb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzf:Lcom/google/android/gms/internal/ads/zzach;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzg:Lcom/google/android/gms/internal/ads/zzei;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzh:Lcom/google/android/gms/internal/ads/zzadb;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzj:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzub;->zza()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzb:J

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvh;->zzi(J)Lcom/google/android/gms/internal/ads/zzgv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzl:Lcom/google/android/gms/internal/ads/zzgv;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzvh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzb:J

    return-wide v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzvh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzk:J

    return-wide v0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzgv;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzl:Lcom/google/android/gms/internal/ads/zzgv;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzhr;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzd:Lcom/google/android/gms/internal/ads/zzhr;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzvh;JJ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzh:Lcom/google/android/gms/internal/ads/zzadb;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzk:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzj:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzn:Z

    return-void
.end method

.method private final zzi(J)Lcom/google/android/gms/internal/ads/zzgv;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzc:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzgt;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgt;->zzc(J)Lcom/google/android/gms/internal/ads/zzgt;

    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zza(I)Lcom/google/android/gms/internal/ads/zzgt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvm;->zzz()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzb(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgt;->zze()Lcom/google/android/gms/internal/ads/zzgv;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfj;)V
    .registers 13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzk:J

    goto :goto_14

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zza:Lcom/google/android/gms/internal/ads/zzvm;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzvm;->zzr(Lcom/google/android/gms/internal/ads/zzvm;Z)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzk:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_14
    move-wide v5, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v8

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzm:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, p1, v8}, Lcom/google/android/gms/internal/ads/zzadi;->zzb(Lcom/google/android/gms/internal/ads/zzadk;Lcom/google/android/gms/internal/ads/zzfj;I)V

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzadk;->zzt(JIIILcom/google/android/gms/internal/ads/zzadj;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzn:Z

    return-void
.end method

.method public final zzg()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvh;->zzi:Z

    return-void
.end method

.method public final zzh()V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Invalid metadata interval: "

    :cond_4
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzi:Z

    if-nez v2, :cond_20b

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    :try_start_b
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzh:Lcom/google/android/gms/internal/ads/zzadb;

    iget-wide v13, v6, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    invoke-direct {v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzvh;->zzi(J)Lcom/google/android/gms/internal/ads/zzgv;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzl:Lcom/google/android/gms/internal/ads/zzgv;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzd:Lcom/google/android/gms/internal/ads/zzhr;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzhr;->zzb(Lcom/google/android/gms/internal/ads/zzgv;)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-eqz v8, :cond_25

    add-long/2addr v6, v13

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzvh;->zza:Lcom/google/android/gms/internal/ads/zzvm;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzvm;->zzC(Lcom/google/android/gms/internal/ads/zzvm;)V

    :cond_25
    move-wide v15, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzvh;->zza:Lcom/google/android/gms/internal/ads/zzvm;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzd:Lcom/google/android/gms/internal/ads/zzhr;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzhr;->zze()Ljava/util/Map;

    move-result-object v7

    const-string v8, "icy-br"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_1eb

    const-string v9, "IcyHeaders"

    const/4 v10, -0x1

    if-eqz v8, :cond_74

    :try_start_3b
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_1eb

    :try_start_41
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_45} :catch_62
    .catchall {:try_start_41 .. :try_end_45} :catchall_1eb

    mul-int/lit16 v11, v11, 0x3e8

    if-lez v11, :cond_4d

    move/from16 v18, v11

    const/4 v2, 0x1

    goto :goto_77

    :cond_4d
    :try_start_4d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bitrate: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_61} :catch_63
    .catchall {:try_start_4d .. :try_end_61} :catchall_1eb

    goto :goto_74

    :catch_62
    const/4 v11, -0x1

    :catch_63
    :try_start_63
    const-string v2, "Invalid bitrate header: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v11

    const/4 v2, 0x0

    goto :goto_77

    :cond_74
    :goto_74
    const/4 v2, 0x0

    const/16 v18, -0x1

    :goto_77
    const-string v3, "icy-genre"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v3, :cond_8c

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v19, v2

    const/4 v2, 0x1

    goto :goto_8e

    :cond_8c
    move-object/from16 v19, v8

    :goto_8e
    const-string v3, "icy-name"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_a2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v2

    const/4 v2, 0x1

    goto :goto_a4

    :cond_a2
    move-object/from16 v20, v8

    :goto_a4
    const-string v3, "icy-url"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_b8

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v21, v2

    const/4 v2, 0x1

    goto :goto_ba

    :cond_b8
    move-object/from16 v21, v8

    :goto_ba
    const-string v3, "icy-pub"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_d4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v22, v2

    const/4 v2, 0x1

    goto :goto_d6

    :cond_d4
    const/16 v22, 0x0

    :goto_d6
    const-string v3, "icy-metaint"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_112

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_e6
    .catchall {:try_start_63 .. :try_end_e6} :catchall_1eb

    :try_start_e6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_ea
    .catch Ljava/lang/NumberFormatException; {:try_start_e6 .. :try_end_ea} :catch_103
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_1eb

    if-lez v7, :cond_f0

    move/from16 v23, v7

    const/4 v2, 0x1

    goto :goto_114

    :cond_f0
    :try_start_f0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_102
    .catch Ljava/lang/NumberFormatException; {:try_start_f0 .. :try_end_102} :catch_104
    .catchall {:try_start_f0 .. :try_end_102} :catchall_1eb

    goto :goto_112

    :catch_103
    const/4 v7, -0x1

    :catch_104
    :try_start_104
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v23, v7

    goto :goto_114

    :cond_112
    :goto_112
    const/16 v23, -0x1

    :goto_114
    if-eqz v2, :cond_11d

    new-instance v8, Lcom/google/android/gms/internal/ads/zzafk;

    move-object/from16 v17, v8

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzafk;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_11d
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzvm;->zzB(Lcom/google/android/gms/internal/ads/zzvm;Lcom/google/android/gms/internal/ads/zzafk;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzd:Lcom/google/android/gms/internal/ads/zzhr;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzvh;->zza:Lcom/google/android/gms/internal/ads/zzvm;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzvm;->zzx(Lcom/google/android/gms/internal/ads/zzvm;)Lcom/google/android/gms/internal/ads/zzafk;

    move-result-object v6

    if-eqz v6, :cond_14e

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzvm;->zzx(Lcom/google/android/gms/internal/ads/zzvm;)Lcom/google/android/gms/internal/ads/zzafk;

    move-result-object v6

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzafk;->zzf:I

    if-eq v6, v10, :cond_14e

    new-instance v6, Lcom/google/android/gms/internal/ads/zzua;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzvm;->zzx(Lcom/google/android/gms/internal/ads/zzvm;)Lcom/google/android/gms/internal/ads/zzafk;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzafk;->zzf:I

    invoke-direct {v6, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzua;-><init>(Lcom/google/android/gms/internal/ads/zzgq;ILcom/google/android/gms/internal/ads/zztz;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zza:Lcom/google/android/gms/internal/ads/zzvm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvm;->zzv()Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzm:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvm;->zzt()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzadk;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    move-object v8, v6

    goto :goto_14f

    :cond_14e
    move-object v8, v2

    :goto_14f
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvh;->zze:Lcom/google/android/gms/internal/ads/zzvb;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzc:Landroid/net/Uri;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzd:Lcom/google/android/gms/internal/ads/zzhr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhr;->zze()Ljava/util/Map;

    move-result-object v10

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzf:Lcom/google/android/gms/internal/ads/zzach;

    move-wide v11, v13

    move-wide v4, v13

    move-wide v13, v15

    move-object v15, v2

    invoke-interface/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zzvb;->zzd(Lcom/google/android/gms/internal/ads/zzt;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zzach;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zza:Lcom/google/android/gms/internal/ads/zzvm;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzvm;->zzx(Lcom/google/android/gms/internal/ads/zzvm;)Lcom/google/android/gms/internal/ads/zzafk;

    move-result-object v2

    if-eqz v2, :cond_16f

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zze:Lcom/google/android/gms/internal/ads/zzvb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzvb;->zzc()V

    :cond_16f
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzj:Z

    if-eqz v2, :cond_181

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zze:Lcom/google/android/gms/internal/ads/zzvb;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzk:J

    invoke-interface {v2, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzvb;->zzf(JJ)V
    :try_end_17a
    .catchall {:try_start_104 .. :try_end_17a} :catchall_1eb

    const/4 v2, 0x0

    :try_start_17b
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzj:Z
    :try_end_17d
    .catchall {:try_start_17b .. :try_end_17d} :catchall_17e

    goto :goto_182

    :catchall_17e
    move-exception v0

    goto/16 :goto_1ed

    :cond_181
    const/4 v2, 0x0

    :goto_182
    move-wide v13, v4

    const/4 v4, 0x0

    :cond_184
    :goto_184
    if-nez v4, :cond_1c9

    :try_start_186
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzi:Z
    :try_end_188
    .catchall {:try_start_186 .. :try_end_188} :catchall_1c5

    if-nez v5, :cond_1c2

    :try_start_18a
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzg:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzei;->zza()V
    :try_end_18f
    .catch Ljava/lang/InterruptedException; {:try_start_18a .. :try_end_18f} :catch_1bc
    .catchall {:try_start_18a .. :try_end_18f} :catchall_1c5

    :try_start_18f
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzvh;->zze:Lcom/google/android/gms/internal/ads/zzvb;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzh:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzvb;->zza(Lcom/google/android/gms/internal/ads/zzadb;)I

    move-result v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzvh;->zze:Lcom/google/android/gms/internal/ads/zzvb;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzvb;->zzb()J

    move-result-wide v5

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvh;->zza:Lcom/google/android/gms/internal/ads/zzvm;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzvm;->zzn(Lcom/google/android/gms/internal/ads/zzvm;)J

    move-result-wide v7

    add-long/2addr v7, v13

    cmp-long v9, v5, v7

    if-lez v9, :cond_184

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzg:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzei;->zzc()Z

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzvh;->zza:Lcom/google/android/gms/internal/ads/zzvm;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzvm;->zzs(Lcom/google/android/gms/internal/ads/zzvm;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzvm;->zzy(Lcom/google/android/gms/internal/ads/zzvm;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v13, v5

    goto :goto_184

    :catch_1bc
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_1c2
    .catchall {:try_start_18f .. :try_end_1c2} :catchall_1c5

    :cond_1c2
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_1ca

    :catchall_1c5
    move-exception v0

    move v5, v4

    const/4 v2, 0x1

    goto :goto_1ef

    :cond_1c9
    const/4 v3, 0x1

    :goto_1ca
    if-ne v4, v3, :cond_1ce

    const/4 v5, 0x0

    goto :goto_1e3

    :cond_1ce
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zze:Lcom/google/android/gms/internal/ads/zzvb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzvb;->zzb()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_1e2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzh:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzvb;->zzb()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    :cond_1e2
    move v5, v4

    :goto_1e3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzd:Lcom/google/android/gms/internal/ads/zzhr;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgs;->zza(Lcom/google/android/gms/internal/ads/zzgq;)V

    if-eqz v5, :cond_4

    goto :goto_20b

    :catchall_1eb
    move-exception v0

    const/4 v2, 0x0

    :goto_1ed
    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_1ef
    if-eq v5, v2, :cond_205

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zze:Lcom/google/android/gms/internal/ads/zzvb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzvb;->zzb()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_205

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzh:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzvb;->zzb()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    :cond_205
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzd:Lcom/google/android/gms/internal/ads/zzhr;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgs;->zza(Lcom/google/android/gms/internal/ads/zzgq;)V

    throw v0

    :cond_20b
    :goto_20b
    return-void
.end method
