###### Class com.google.android.gms.internal.ads.zzakd (com.google.android.gms.internal.ads.zzakd)
.class public final Lcom/google/android/gms/internal/ads/zzakd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajy;


# static fields
.field private static final zza:[F


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzaln;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:[Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzakb;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzakn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/ads/zzakc;

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/ads/zzadk;

.field private zzk:Z

.field private zzl:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzakd;->zza:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzakd;-><init>(Lcom/google/android/gms/internal/ads/zzaln;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaln;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/ads/zzaln;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzb:Lcom/google/android/gms/internal/ads/zzaln;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzd:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzakb;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzakb;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:Lcom/google/android/gms/internal/ads/zzakb;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzl:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzakn;

    const/16 v1, 0xb2

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzakn;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfj;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzakc;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzj:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzh:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzh:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzj:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzadk;->zzr(Lcom/google/android/gms/internal/ads/zzfj;I)V

    :goto_2d
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzd:[Z

    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzgg;->zza([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_49

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzk:Z

    if-nez v4, :cond_3e

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakd;->zze:Lcom/google/android/gms/internal/ads/zzakb;

    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzakb;->zza([BII)V

    :cond_3e
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzakc;

    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzakc;->zza([BII)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzakn;->zza([BII)V

    return-void

    :cond_49
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzk:Z

    if-nez v9, :cond_17e

    if-lez v8, :cond_60

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzakd;->zze:Lcom/google/android/gms/internal/ads/zzakb;

    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzakb;->zza([BII)V

    :cond_60
    if-gez v8, :cond_64

    neg-int v9, v8

    goto :goto_65

    :cond_64
    const/4 v9, 0x0

    :goto_65
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzakd;->zze:Lcom/google/android/gms/internal/ads/zzakb;

    invoke-virtual {v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(II)Z

    move-result v9

    if-eqz v9, :cond_17e

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzj:Lcom/google/android/gms/internal/ads/zzadk;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzakd;->zze:Lcom/google/android/gms/internal/ads/zzakb;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzakb;->zzb:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzi:Ljava/lang/String;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzakb;->zzc:[B

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzakb;->zza:I

    invoke-static {v15, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    new-instance v15, Lcom/google/android/gms/internal/ads/zzfi;

    array-length v10, v12

    invoke-direct {v15, v12, v10}, Lcom/google/android/gms/internal/ads/zzfi;-><init>([BI)V

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzfi;->zzm(I)V

    const/4 v10, 0x4

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzm(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    const/16 v13, 0x8

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v16

    const/4 v11, 0x3

    if-eqz v16, :cond_a2

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_a2
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v10

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v11, "Invalid aspect ratio"

    const-string v13, "H263Reader"

    const/16 v6, 0xf

    if-ne v10, v6, :cond_c5

    const/16 v6, 0x8

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v10

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v6

    if-nez v6, :cond_c0

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d2

    :cond_c0
    int-to-float v10, v10

    int-to-float v6, v6

    div-float v16, v10, v6

    goto :goto_cc

    :cond_c5
    const/4 v6, 0x7

    if-ge v10, v6, :cond_cf

    sget-object v6, Lcom/google/android/gms/internal/ads/zzakd;->zza:[F

    aget v16, v6, v10

    :goto_cc
    move/from16 v6, v16

    goto :goto_d4

    :cond_cf
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d2
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_d4
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_10e

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    const/4 v10, 0x1

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v10

    if-eqz v10, :cond_10e

    const/16 v10, 0xf

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    const/4 v11, 0x3

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    const/16 v11, 0xb

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    :cond_10e
    const/4 v10, 0x2

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v10

    if-eqz v10, :cond_11a

    const-string v10, "Unhandled video object layer shape"

    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11a
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    const/16 v10, 0x10

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v10

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v11

    if-eqz v11, :cond_141

    if-nez v10, :cond_134

    const-string v10, "Invalid vop_increment_time_resolution"

    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_141

    :cond_134
    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    :goto_137
    if-lez v10, :cond_13e

    shr-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_137

    :cond_13e
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_141
    :goto_141
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    const/16 v10, 0xd

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v11

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v10

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzak;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    const-string v14, "video/mp4v-es"

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzak;->zzab(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzak;->zzH(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzR(F)Lcom/google/android/gms/internal/ads/zzak;

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v6

    invoke-interface {v9, v6}, Lcom/google/android/gms/internal/ads/zzadk;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzk:Z

    :cond_17e
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzakc;

    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzakc;->zza([BII)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    if-lez v8, :cond_18c

    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzakn;->zza([BII)V

    const/4 v10, 0x0

    goto :goto_18d

    :cond_18c
    neg-int v10, v8

    :goto_18d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzakn;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_1b3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzakn;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzakn;->zzb:I

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzgg;->zzb([BI)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    sget v8, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzakn;->zza:[B

    invoke-virtual {v6, v8, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzE([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzb:Lcom/google/android/gms/internal/ads/zzaln;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzl:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zzaln;->zza(JLcom/google/android/gms/internal/ads/zzfj;)V

    :cond_1b3
    const/16 v1, 0xb2

    if-ne v5, v1, :cond_1c9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v5

    add-int/lit8 v6, v4, 0x2

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1c7

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzakn;->zzc(I)V

    :cond_1c7
    const/16 v5, 0xb2

    :cond_1c9
    sub-int v1, v2, v4

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzh:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzakc;

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzk:Z

    invoke-virtual {v4, v8, v9, v1, v6}, Lcom/google/android/gms/internal/ads/zzakc;->zzb(JIZ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzakc;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzakd;->zzl:J

    invoke-virtual {v1, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzakc;->zzc(IJ)V

    move-object/from16 v6, p1

    move v1, v7

    goto/16 :goto_2d
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzalk;)V
    .registers 5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalk;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalk;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzi:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzalk;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzw(II)Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzj:Lcom/google/android/gms/internal/ads/zzadk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzakc;-><init>(Lcom/google/android/gms/internal/ads/zzadk;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzakc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzb:Lcom/google/android/gms/internal/ads/zzaln;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzalk;)V

    return-void
.end method

.method public final zzc(Z)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzakc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzakc;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzh:J

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzk:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzakc;->zzb(JIZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzakc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzakc;->zzd()V

    :cond_16
    return-void
.end method

.method public final zzd(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzl:J

    :cond_b
    return-void
.end method

.method public final zze()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzd:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgg;->zzf([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zze:Lcom/google/android/gms/internal/ads/zzakb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzg:Lcom/google/android/gms/internal/ads/zzakc;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakc;->zzd()V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzf:Lcom/google/android/gms/internal/ads/zzakn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakn;->zzb()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzh:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzakd;->zzl:J

    return-void
.end method
