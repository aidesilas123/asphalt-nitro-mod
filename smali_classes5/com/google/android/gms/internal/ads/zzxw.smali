###### Class com.google.android.gms.internal.ads.zzxw (com.google.android.gms.internal.ads.zzxw)
.class public final Lcom/google/android/gms/internal/ads/zzxw;
.super Lcom/google/android/gms/internal/ads/zzyb;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzma;


# static fields
.field public static final synthetic zzb:I

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzfyd;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzfyd;


# instance fields
.field public final zza:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Ljava/lang/Object;

.field private final zzf:Z

.field private zzg:Lcom/google/android/gms/internal/ads/zzxk;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/ads/zzxp;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/ads/zzk;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzj:Lcom/google/android/gms/internal/ads/zzwr;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzwv;->zza:Lcom/google/android/gms/internal/ads/zzwv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfyd;->zzb(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxw;->zzc:Lcom/google/android/gms/internal/ads/zzfyd;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzww;->zza:Lcom/google/android/gms/internal/ads/zzww;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfyd;->zzb(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxw;->zzd:Lcom/google/android/gms/internal/ads/zzfyd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzwr;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxk;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyb;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Ljava/lang/Object;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzxw;->zza:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzj:Lcom/google/android/gms/internal/ads/zzwr;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzg:Lcom/google/android/gms/internal/ads/zzxk;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzk;->zza:Lcom/google/android/gms/internal/ads/zzk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzi:Lcom/google/android/gms/internal/ads/zzk;

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfs;->zzI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzf:Z

    if-nez v0, :cond_41

    if-eqz p1, :cond_41

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_41

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxp;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzxp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzh:Lcom/google/android/gms/internal/ads/zzxp;

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzg:Lcom/google/android/gms/internal/ads/zzxk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzR:Z

    if-eqz v0, :cond_50

    if-nez p1, :cond_50

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzam;Ljava/lang/String;Z)I
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzam;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x4

    return p0

    :cond_11
    :goto_11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxw;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzam;->zzd:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzxw;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_49

    if-nez p1, :cond_21

    goto :goto_49

    :cond_21
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_47

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2e

    goto :goto_47

    :cond_2e
    sget p2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const-string p2, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    return v1

    :cond_46
    return v0

    :cond_47
    :goto_47
    const/4 p0, 0x3

    return p0

    :cond_49
    :goto_49
    if-eqz p2, :cond_4f

    if-nez p0, :cond_4f

    const/4 p0, 0x1

    return p0

    :cond_4f
    return v0
.end method

.method static bridge synthetic zze()Lcom/google/android/gms/internal/ads/zzfyd;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzxw;->zzc:Lcom/google/android/gms/internal/ads/zzfyd;

    return-object v0
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/internal/ads/zzfyd;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzxw;->zzd:Lcom/google/android/gms/internal/ads/zzfyd;

    return-object v0
.end method

.method protected static zzg(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzxw;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxw;->zzu()V

    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/gms/internal/ads/zzxw;Lcom/google/android/gms/internal/ads/zzam;)Z
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzg:Lcom/google/android/gms/internal/ads/zzxk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzxk;->zzR:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8b

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzf:Z

    if-nez v1, :cond_8b

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    const/4 v4, 0x2

    if-le v1, v4, :cond_8b

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const/16 v5, 0x20

    if-nez v1, :cond_1b

    goto :goto_65

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_8e

    const/4 v7, 0x3

    sparse-switch v6, :sswitch_data_92

    goto :goto_4c

    :sswitch_24
    const-string v6, "audio/eac3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x1

    goto :goto_4d

    :sswitch_2e
    const-string v6, "audio/ac4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x3

    goto :goto_4d

    :sswitch_38
    const-string v6, "audio/ac3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x0

    goto :goto_4d

    :sswitch_42
    const-string v6, "audio/eac3-joc"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x2

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v1, -0x1

    :goto_4d
    if-eqz v1, :cond_56

    if-eq v1, v3, :cond_56

    if-eq v1, v4, :cond_56

    if-eq v1, v7, :cond_56

    goto :goto_65

    :cond_56
    :try_start_56
    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    if-lt v1, v5, :cond_8b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzh:Lcom/google/android/gms/internal/ads/zzxp;

    if-eqz v1, :cond_8b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxp;->zzg()Z

    move-result v1

    if-nez v1, :cond_65

    goto :goto_8b

    :cond_65
    :goto_65
    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    if-lt v1, v5, :cond_8c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzh:Lcom/google/android/gms/internal/ads/zzxp;

    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxp;->zzg()Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxp;->zze()Z

    move-result v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzh:Lcom/google/android/gms/internal/ads/zzxp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxp;->zzf()Z

    move-result v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzh:Lcom/google/android/gms/internal/ads/zzxp;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzi:Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzxp;->zzd(Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzam;)Z

    move-result p0

    if-eqz p0, :cond_8c

    :cond_8b
    :goto_8b
    const/4 v2, 0x1

    :cond_8c
    monitor-exit v0

    return v2

    :catchall_8e
    move-exception p0

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_56 .. :try_end_90} :catchall_8e

    throw p0

    nop

    :sswitch_data_92
    .sparse-switch
        -0x7e929daa -> :sswitch_42
        0xb269698 -> :sswitch_38
        0xb269699 -> :sswitch_2e
        0x59ae0c65 -> :sswitch_24
    .end sparse-switch
.end method

.method protected static zzn(IZ)Z
    .registers 5

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_e

    if-eqz p1, :cond_f

    const/4 p1, 0x3

    if-ne p0, p1, :cond_d

    goto :goto_e

    :cond_d
    return v0

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private static zzt(Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzdj;Ljava/util/Map;)V
    .registers 5

    const/4 p2, 0x0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzc:I

    if-ge p2, v0, :cond_18

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzwl;->zzb(I)Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdj;->zzC:Lcom/google/android/gms/internal/ads/zzfwx;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfwx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzde;

    if-nez v0, :cond_16

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_16
    const/4 p0, 0x0

    throw p0

    :cond_18
    return-void
.end method

.method private final zzu()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzg:Lcom/google/android/gms/internal/ads/zzxk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzxk;->zzR:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzf:Z

    if-nez v1, :cond_1f

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v3, 0x20

    if-lt v1, v3, :cond_1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzh:Lcom/google/android/gms/internal/ads/zzxp;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxp;->zzg()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_26

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzye;->zzs()V

    :cond_25
    return-void

    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private static final zzv(ILcom/google/android/gms/internal/ads/zzya;[[[ILcom/google/android/gms/internal/ads/zzxr;Ljava/util/Comparator;)Landroid/util/Pair;
    .registers 22
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x2

    if-ge v3, v4, :cond_88

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzya;->zzc(I)I

    move-result v5

    move/from16 v6, p0

    if-ne v6, v5, :cond_83

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzya;->zzd(I)Lcom/google/android/gms/internal/ads/zzwl;

    move-result-object v5

    const/4 v7, 0x0

    :goto_18
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzwl;->zzc:I

    if-ge v7, v8, :cond_83

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzwl;->zzb(I)Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v8

    aget-object v9, p2, v3

    aget-object v9, v9, v7

    move-object/from16 v10, p3

    invoke-interface {v10, v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzxr;->zza(ILcom/google/android/gms/internal/ads/zzdc;[I)Ljava/util/List;

    move-result-object v9

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    const/4 v8, 0x1

    new-array v11, v8, [Z

    const/4 v12, 0x0

    :goto_30
    if-gtz v12, :cond_80

    add-int/lit8 v13, v12, 0x1

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzxs;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzxs;->zzb()I

    move-result v15

    aget-boolean v12, v11, v12

    if-nez v12, :cond_7c

    if-nez v15, :cond_45

    goto :goto_7c

    :cond_45
    if-ne v15, v8, :cond_4d

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfwu;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v12

    :cond_4b
    const/4 v2, 0x1

    goto :goto_78

    :cond_4d
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v15, v13

    :goto_56
    if-gtz v15, :cond_4b

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/google/android/gms/internal/ads/zzxs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxs;->zzb()I

    move-result v8

    if-ne v8, v4, :cond_73

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzxs;->zzc(Lcom/google/android/gms/internal/ads/zzxs;)Z

    move-result v8

    if-eqz v8, :cond_73

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    aput-boolean v2, v11, v15

    goto :goto_74

    :cond_73
    const/4 v2, 0x1

    :goto_74
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    goto :goto_56

    :goto_78
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_7c
    :goto_7c
    const/4 v2, 0x1

    :goto_7d
    move v12, v13

    const/4 v8, 0x1

    goto :goto_30

    :cond_80
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_83
    move-object/from16 v10, p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_88
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_90

    const/4 v0, 0x0

    return-object v0

    :cond_90
    move-object/from16 v0, p4

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_9f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzxs;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzxs;->zzc:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_b2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzxs;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzxx;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzxs;->zzb:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzxx;-><init>(Lcom/google/android/gms/internal/ads/zzdc;[II)V

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzxs;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/internal/ads/zzya;[[[I[ILcom/google/android/gms/internal/ads/zzuk;Lcom/google/android/gms/internal/ads/zzda;)Landroid/util/Pair;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzxw;->zze:Ljava/lang/Object;

    monitor-enter v4

    :try_start_b
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzxw;->zzg:Lcom/google/android/gms/internal/ads/zzxk;

    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzxk;->zzR:Z

    if-eqz v6, :cond_25

    sget v6, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v7, 0x20

    if-lt v6, v7, :cond_25

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzxw;->zzh:Lcom/google/android/gms/internal/ads/zzxp;

    if-eqz v6, :cond_25

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v1, v7}, Lcom/google/android/gms/internal/ads/zzxp;->zzb(Lcom/google/android/gms/internal/ads/zzxw;Landroid/os/Looper;)V

    :cond_25
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_20d

    const/4 v4, 0x2

    new-array v6, v4, [Lcom/google/android/gms/internal/ads/zzxx;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzxa;

    invoke-direct {v7, v5, v3}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(Lcom/google/android/gms/internal/ads/zzxk;[I)V

    sget-object v8, Lcom/google/android/gms/internal/ads/zzxb;->zza:Lcom/google/android/gms/internal/ads/zzxb;

    invoke-static {v4, v0, v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzxw;->zzv(ILcom/google/android/gms/internal/ads/zzya;[[[ILcom/google/android/gms/internal/ads/zzxr;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_45

    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzxx;

    aput-object v7, v6, v9

    :cond_45
    const/4 v7, 0x0

    :goto_46
    const/4 v9, 0x1

    if-ge v7, v4, :cond_5c

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzya;->zzc(I)I

    move-result v10

    if-ne v10, v4, :cond_59

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzya;->zzd(I)Lcom/google/android/gms/internal/ads/zzwl;

    move-result-object v10

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzwl;->zzc:I

    if-lez v10, :cond_59

    const/4 v7, 0x1

    goto :goto_5d

    :cond_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    :cond_5c
    const/4 v7, 0x0

    :goto_5d
    new-instance v10, Lcom/google/android/gms/internal/ads/zzwy;

    invoke-direct {v10, v1, v5, v7, v3}, Lcom/google/android/gms/internal/ads/zzwy;-><init>(Lcom/google/android/gms/internal/ads/zzxw;Lcom/google/android/gms/internal/ads/zzxk;Z[I)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzwz;->zza:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-static {v9, v0, v2, v10, v3}, Lcom/google/android/gms/internal/ads/zzxw;->zzv(ILcom/google/android/gms/internal/ads/zzya;[[[ILcom/google/android/gms/internal/ads/zzxr;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_78

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/ads/zzxx;

    aput-object v10, v6, v7

    :cond_78
    if-nez v3, :cond_7c

    const/4 v3, 0x0

    goto :goto_8f

    :cond_7c
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Lcom/google/android/gms/internal/ads/zzxx;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzxx;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzxx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzxx;->zzb:[I

    aget v3, v3, v8

    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(I)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzam;->zzd:Ljava/lang/String;

    :goto_8f
    new-instance v10, Lcom/google/android/gms/internal/ads/zzxc;

    invoke-direct {v10, v5, v3}, Lcom/google/android/gms/internal/ads/zzxc;-><init>(Lcom/google/android/gms/internal/ads/zzxk;Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzxd;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    const/4 v11, 0x3

    invoke-static {v11, v0, v2, v10, v3}, Lcom/google/android/gms/internal/ads/zzxw;->zzv(ILcom/google/android/gms/internal/ads/zzya;[[[ILcom/google/android/gms/internal/ads/zzxr;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_ab

    iget-object v10, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzxx;

    aput-object v3, v6, v10

    :cond_ab
    const/4 v3, 0x0

    :goto_ac
    if-ge v3, v4, :cond_110

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzya;->zzc(I)I

    move-result v10

    if-eq v10, v4, :cond_10a

    if-eq v10, v9, :cond_10a

    if-eq v10, v11, :cond_10a

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzya;->zzd(I)Lcom/google/android/gms/internal/ads/zzwl;

    move-result-object v10

    aget-object v12, v2, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_c1
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzwl;->zzc:I

    if-ge v13, v11, :cond_fa

    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/ads/zzwl;->zzb(I)Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v11

    aget-object v16, v12, v13

    const/16 v17, 0x0

    :goto_cd
    iget v7, v11, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    if-gtz v17, :cond_f5

    aget v7, v16, v8

    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzxk;->zzS:Z

    invoke-static {v7, v4}, Lcom/google/android/gms/internal/ads/zzxw;->zzn(IZ)Z

    move-result v4

    if-eqz v4, :cond_f0

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(I)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v4

    new-instance v7, Lcom/google/android/gms/internal/ads/zzxf;

    aget v9, v16, v8

    invoke-direct {v7, v4, v9}, Lcom/google/android/gms/internal/ads/zzxf;-><init>(Lcom/google/android/gms/internal/ads/zzam;I)V

    if-eqz v15, :cond_ee

    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzxf;)I

    move-result v4

    if-lez v4, :cond_f0

    :cond_ee
    move-object v15, v7

    move-object v14, v11

    :cond_f0
    const/4 v4, 0x2

    const/4 v9, 0x1

    const/16 v17, 0x1

    goto :goto_cd

    :cond_f5
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x2

    const/4 v9, 0x1

    goto :goto_c1

    :cond_fa
    if-nez v14, :cond_fe

    const/4 v4, 0x0

    goto :goto_108

    :cond_fe
    new-instance v4, Lcom/google/android/gms/internal/ads/zzxx;

    const/4 v7, 0x1

    new-array v9, v7, [I

    aput v8, v9, v8

    invoke-direct {v4, v14, v9, v8}, Lcom/google/android/gms/internal/ads/zzxx;-><init>(Lcom/google/android/gms/internal/ads/zzdc;[II)V

    :goto_108
    aput-object v4, v6, v3

    :cond_10a
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v11, 0x3

    goto :goto_ac

    :cond_110
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x2

    :goto_117
    if-ge v3, v4, :cond_123

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzya;->zzd(I)Lcom/google/android/gms/internal/ads/zzwl;

    move-result-object v7

    invoke-static {v7, v5, v2}, Lcom/google/android/gms/internal/ads/zzxw;->zzt(Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzdj;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_117

    :cond_123
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzya;->zze()Lcom/google/android/gms/internal/ads/zzwl;

    move-result-object v3

    invoke-static {v3, v5, v2}, Lcom/google/android/gms/internal/ads/zzxw;->zzt(Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzdj;Ljava/util/Map;)V

    const/4 v3, 0x0

    :goto_12b
    if-ge v3, v4, :cond_142

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzya;->zzc(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzde;

    if-nez v7, :cond_140

    add-int/lit8 v3, v3, 0x1

    goto :goto_12b

    :cond_140
    const/4 v3, 0x0

    throw v3

    :cond_142
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_144
    if-ge v2, v4, :cond_15e

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzya;->zzd(I)Lcom/google/android/gms/internal/ads/zzwl;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzxk;->zzg(ILcom/google/android/gms/internal/ads/zzwl;)Z

    move-result v7

    if-nez v7, :cond_151

    goto :goto_159

    :cond_151
    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzxk;->zze(ILcom/google/android/gms/internal/ads/zzwl;)Lcom/google/android/gms/internal/ads/zzxm;

    move-result-object v4

    if-nez v4, :cond_15d

    aput-object v3, v6, v2

    :goto_159
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x2

    goto :goto_144

    :cond_15d
    throw v3

    :cond_15e
    const/4 v2, 0x0

    :goto_15f
    const/4 v3, 0x2

    if-ge v2, v3, :cond_181

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzya;->zzc(I)I

    move-result v3

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzxk;->zzf(I)Z

    move-result v4

    if-nez v4, :cond_17b

    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzdj;->zzD:Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzfwp;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_179

    goto :goto_17b

    :cond_179
    const/4 v3, 0x0

    goto :goto_17e

    :cond_17b
    :goto_17b
    const/4 v3, 0x0

    aput-object v3, v6, v2

    :goto_17e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15f

    :cond_181
    const/4 v3, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzxw;->zzj:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzye;->zzq()Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v4

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzws;->zzf([Lcom/google/android/gms/internal/ads/zzxx;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v7

    const/4 v9, 0x2

    new-array v15, v9, [Lcom/google/android/gms/internal/ads/zzxy;

    const/4 v14, 0x0

    :goto_190
    if-ge v14, v9, :cond_1d9

    aget-object v9, v6, v14

    if-eqz v9, :cond_1d1

    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzxx;->zzb:[I

    array-length v10, v11

    if-nez v10, :cond_19c

    goto :goto_1d1

    :cond_19c
    const/4 v13, 0x1

    if-ne v10, v13, :cond_1b7

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzxx;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzxz;

    aget v18, v11, v8

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v10

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzxz;-><init>(Lcom/google/android/gms/internal/ads/zzdc;IIILjava/lang/Object;)V

    move/from16 v18, v14

    const/16 v17, 0x1

    goto :goto_1ce

    :cond_1b7
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzxx;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    const/4 v12, 0x0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Lcom/google/android/gms/internal/ads/zzfwu;

    move-object v9, v2

    const/16 v17, 0x1

    move-object v13, v4

    move/from16 v18, v14

    move-object/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzwr;->zza(Lcom/google/android/gms/internal/ads/zzdc;[IILcom/google/android/gms/internal/ads/zzym;Lcom/google/android/gms/internal/ads/zzfwu;)Lcom/google/android/gms/internal/ads/zzws;

    move-result-object v10

    :goto_1ce
    aput-object v10, v15, v18

    goto :goto_1d5

    :cond_1d1
    :goto_1d1
    move/from16 v18, v14

    const/16 v17, 0x1

    :goto_1d5
    add-int/lit8 v14, v18, 0x1

    const/4 v9, 0x2

    goto :goto_190

    :cond_1d9
    new-array v2, v9, [Lcom/google/android/gms/internal/ads/zzmc;

    :goto_1db
    if-ge v8, v9, :cond_208

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzya;->zzc(I)I

    move-result v4

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzxk;->zzf(I)Z

    move-result v6

    if-nez v6, :cond_202

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzdj;->zzD:Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzfwp;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f4

    goto :goto_202

    :cond_1f4
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzya;->zzc(I)I

    move-result v4

    const/4 v6, -0x2

    if-eq v4, v6, :cond_1ff

    aget-object v4, v15, v8

    if-eqz v4, :cond_202

    :cond_1ff
    sget-object v4, Lcom/google/android/gms/internal/ads/zzmc;->zza:Lcom/google/android/gms/internal/ads/zzmc;

    goto :goto_203

    :cond_202
    :goto_202
    move-object v4, v3

    :goto_203
    aput-object v4, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1db

    :cond_208
    invoke-static {v2, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catchall_20d
    move-exception v0

    :try_start_20e
    monitor-exit v4
    :try_end_20f
    .catchall {:try_start_20e .. :try_end_20f} :catchall_20d

    throw v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzma;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzxk;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzg:Lcom/google/android/gms/internal/ads/zzxk;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzi()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzh:Lcom/google/android/gms/internal/ads/zzxp;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxp;->zzc()V

    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzye;->zzi()V

    return-void

    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzk;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzi:Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzk;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzi:Lcom/google/android/gms/internal/ads/zzk;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_14

    if-eqz v1, :cond_13

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxw;->zzu()V

    :cond_13
    return-void

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzxi;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxk;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzxk;-><init>(Lcom/google/android/gms/internal/ads/zzxi;Lcom/google/android/gms/internal/ads/zzxj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zze:Ljava/lang/Object;

    monitor-enter p1

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzg:Lcom/google/android/gms/internal/ads/zzxk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdj;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzg:Lcom/google/android/gms/internal/ads/zzxk;

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_29

    if-eqz v1, :cond_28

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzR:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zza:Landroid/content/Context;

    if-nez p1, :cond_25

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzye;->zzs()V

    :cond_28
    return-void

    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public final zzm()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
