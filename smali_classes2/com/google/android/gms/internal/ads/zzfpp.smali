###### Class com.google.android.gms.internal.ads.zzfpp (com.google.android.gms.internal.ads.zzfpp)
.class public final Lcom/google/android/gms/internal/ads/zzfpp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zza:Ljava/lang/Object;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Landroid/content/SharedPreferences;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfow;

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpp;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfow;Z)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzfow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzf:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzb:Landroid/content/Context;

    add-int/lit8 p2, p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzd:Ljava/lang/String;

    const-string p2, "pcvmspf"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzc:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zze:Lcom/google/android/gms/internal/ads/zzfow;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzf:Z

    return-void
.end method

.method private final zze(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzb:Landroid/content/Context;

    const-string v1, "pccache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzd:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzavc;)Ljava/lang/String;
    .registers 4
    .param p0    # Lcom/google/android/gms/internal/ads/zzavc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavf;->zze()Lcom/google/android/gms/internal/ads/zzave;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavc;->zzd()Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavf;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzave;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzave;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavc;->zzd()Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavf;->zzj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzave;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzave;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavc;->zzd()Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavf;->zza()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzave;->zzb(J)Lcom/google/android/gms/internal/ads/zzave;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavc;->zzd()Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavf;->zzd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzave;->zzd(J)Lcom/google/android/gms/internal/ads/zzave;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavc;->zzd()Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavf;->zzc()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzave;->zzc(J)Lcom/google/android/gms/internal/ads/zzave;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzal()Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzavf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgun;->zzax()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzg()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzd:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FBAMTD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzh()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzd:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LATMTD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzi(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zze:Lcom/google/android/gms/internal/ads/zzfow;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfow;->zza(IJ)V

    return-void
.end method

.method private final zzj(IJLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zze:Lcom/google/android/gms/internal/ads/zzfow;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzfow;->zzb(IJLjava/lang/String;)V

    return-void
.end method

.method private final zzk(I)Lcom/google/android/gms/internal/ads/zzavf;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzc:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpp;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzc:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpp;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_19
    if-nez p1, :cond_1c

    return-object v0

    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_20
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->stringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgve;->zzb:Lcom/google/android/gms/internal/ads/zzgve;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzgve;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object p1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzf:Z

    if-eqz v3, :cond_35

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvy;->zza()Lcom/google/android/gms/internal/ads/zzgvy;

    move-result-object v3

    goto :goto_39

    :cond_35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvy;->zzb()Lcom/google/android/gms/internal/ads/zzgvy;

    move-result-object v3

    :goto_39
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzavf;->zzi(Lcom/google/android/gms/internal/ads/zzgve;Lcom/google/android/gms/internal/ads/zzgvy;)Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object p1
    :try_end_3d
    .catch Lcom/google/android/gms/internal/ads/zzgwy; {:try_start_20 .. :try_end_3d} :catch_49
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_3d} :catch_44
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_3d} :catch_3e

    return-object p1

    :catch_3e
    const/16 p1, 0x7f0

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    goto :goto_49

    :catch_44
    const/16 p1, 0x7ed

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    :catch_49
    :goto_49
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzavc;)Z
    .registers 8
    .param p1    # Lcom/google/android/gms/internal/ads/zzavc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfpp;->zza:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzavc;->zzd()Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzavf;->zzk()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzfpp;->zze(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "pcbc"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzavc;->zze()Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgve;->zzA()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzfpj;->zze(Ljava/io/File;[B)Z

    move-result v3

    if-nez v3, :cond_30

    const/16 p1, 0xfb4

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    monitor-exit v2

    const/4 p1, 0x0

    return p1

    :cond_30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzf(Lcom/google/android/gms/internal/ads/zzavc;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfpp;->zzc:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfpp;->zzh()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_4d

    const/16 v3, 0x1397

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    goto :goto_52

    :cond_4d
    const/16 v3, 0xfb5

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    :goto_52
    monitor-exit v2

    return p1

    :catchall_54
    move-exception p1

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzavc;Lcom/google/android/gms/internal/ads/zzfpo;)Z
    .registers 19
    .param p1    # Lcom/google/android/gms/internal/ads/zzavc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzfpo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfpp;->zza:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x1

    :try_start_c
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzfpp;->zzk(I)Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzavc;->zzd()Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzavf;->zzk()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzavf;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const/16 v0, 0xfae

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    monitor-exit v4

    return v8

    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/zzfpp;->zze(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    const/16 v12, 0xfaf

    if-eqz v11, :cond_74

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v11

    const-string v13, "1"

    const-string v14, "0"

    if-eq v5, v11, :cond_47

    move-object v13, v14

    :cond_47
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    const-string v11, "1"

    const-string v14, "0"

    if-eq v5, v6, :cond_52

    move-object v11, v14

    :cond_52
    const/16 v6, 0xfb7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "d:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",f:"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzfpp;->zzj(IJLjava/lang/String;)V

    invoke-direct {v1, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    goto :goto_95

    :cond_74
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_95

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v0

    const-string v2, "1"

    const-string v3, "0"

    if-eq v5, v0, :cond_85

    move-object v2, v3

    :cond_85
    const/16 v0, 0xfb8

    const-string v3, "cw:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzfpp;->zzj(IJLjava/lang/String;)V

    invoke-direct {v1, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    monitor-exit v4

    return v8

    :cond_95
    :goto_95
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/zzfpp;->zze(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    const-string v9, "pcam.jar"

    invoke-direct {v7, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string v10, "pcbc"

    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzavc;->zzf()Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgve;->zzA()[B

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/gms/internal/ads/zzfpj;->zze(Ljava/io/File;[B)Z

    move-result v10

    if-nez v10, :cond_bc

    const/16 v0, 0xfb0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    monitor-exit v4

    return v8

    :cond_bc
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzavc;->zze()Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgve;->zzA()[B

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzfpj;->zze(Ljava/io/File;[B)Z

    move-result v9

    if-nez v9, :cond_d1

    const/16 v0, 0xfb1

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    monitor-exit v4

    return v8

    :cond_d1
    if-eqz v0, :cond_e3

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/zzfpo;->zza(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_e3

    const/16 v0, 0xfb2

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfpj;->zzd(Ljava/io/File;)Z

    monitor-exit v4

    return v8

    :cond_e3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzf(Lcom/google/android/gms/internal/ads/zzavc;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzfpp;->zzc:Landroid/content/SharedPreferences;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfpp;->zzh()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzfpp;->zzc:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfpp;->zzh()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v9, :cond_10c

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfpp;->zzg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_10c
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_119

    const/16 v0, 0xfb3

    invoke-direct {v1, v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    monitor-exit v4

    return v8

    :cond_119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzfpp;->zzk(I)Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object v6

    if-eqz v6, :cond_12b

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzavf;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_12b
    const/4 v6, 0x2

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/zzfpp;->zzk(I)Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object v6

    if-eqz v6, :cond_139

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzavf;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_139
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfpp;->zzb:Landroid/content/Context;

    const-string v9, "pccache"

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzfpp;->zzd:Ljava/lang/String;

    invoke-direct {v6, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    :goto_14d
    if-ge v8, v7, :cond_161

    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15e

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfpj;->zzd(Ljava/io/File;)Z

    :cond_15e
    add-int/lit8 v8, v8, 0x1

    goto :goto_14d

    :cond_161
    const/16 v0, 0x1396

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    monitor-exit v4

    return v5

    :catchall_168
    move-exception v0

    monitor-exit v4
    :try_end_16a
    .catchall {:try_start_c .. :try_end_16a} :catchall_168

    throw v0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzfph;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfpp;->zza:Ljava/lang/Object;

    monitor-enter p1

    const/4 v2, 0x1

    :try_start_8
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzfpp;->zzk(I)Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object v2

    if-nez v2, :cond_16

    const/16 v2, 0xfb6

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    monitor-exit p1

    const/4 p1, 0x0

    return-object p1

    :cond_16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzavf;->zzk()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzfpp;->zze(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "pcam.jar"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_32

    new-instance v4, Ljava/io/File;

    const-string v5, "pcam"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_32
    new-instance v5, Ljava/io/File;

    const-string v6, "pcbc"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "pcopt"

    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v3, 0x1398

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfph;

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfph;-><init>(Lcom/google/android/gms/internal/ads/zzavf;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    monitor-exit p1

    return-object v0

    :catchall_4c
    move-exception v0

    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public final zzd(I)Z
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfpp;->zza:Ljava/lang/Object;

    monitor-enter p1

    const/4 v2, 0x1

    :try_start_8
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzfpp;->zzk(I)Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_16

    const/16 v2, 0xfb9

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    monitor-exit p1

    return v4

    :cond_16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzavf;->zzk()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzfpp;->zze(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    const-string v6, "pcam.jar"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_32

    const/16 v2, 0xfba

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    monitor-exit p1

    return v4

    :cond_32
    new-instance v5, Ljava/io/File;

    const-string v6, "pcbc"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_46

    const/16 v2, 0xfbb

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    monitor-exit p1

    return v4

    :cond_46
    const/16 v3, 0x139b

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfpp;->zzi(IJ)V

    monitor-exit p1

    return v2

    :catchall_4d
    move-exception v0

    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_4d

    throw v0
.end method
