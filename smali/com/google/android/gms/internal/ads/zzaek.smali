###### Class com.google.android.gms.internal.ads.zzaek (com.google.android.gms.internal.ads.zzaek)
.class public final Lcom/google/android/gms/internal/ads/zzaek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzace;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzacl;


# instance fields
.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzacm;

.field private zze:Lcom/google/android/gms/internal/ads/zzach;

.field private zzf:Lcom/google/android/gms/internal/ads/zzadk;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/ads/zzcb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/ads/zzacr;

.field private zzj:I

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzm:I

.field private zzn:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaej;->zza:Lcom/google/android/gms/internal/ads/zzaej;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaek;->zza:Lcom/google/android/gms/internal/ads/zzacl;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfj;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzacm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:Lcom/google/android/gms/internal/ads/zzacm;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzfj;Z)J
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:Lcom/google/android/gms/internal/ads/zzacr;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v0

    :goto_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_2b

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:Lcom/google/android/gms/internal/ads/zzacr;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzk:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:Lcom/google/android/gms/internal/ads/zzacm;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzacn;->zzc(Lcom/google/android/gms/internal/ads/zzfj;Lcom/google/android/gms/internal/ads/zzacr;ILcom/google/android/gms/internal/ads/zzacm;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:Lcom/google/android/gms/internal/ads/zzacm;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzacm;->zza:J

    return-wide p1

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2b
    if-eqz p2, :cond_65

    :goto_2d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzj:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_5d

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    :try_start_39
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:Lcom/google/android/gms/internal/ads/zzacr;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzk:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:Lcom/google/android/gms/internal/ads/zzacm;

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzacn;->zzc(Lcom/google/android/gms/internal/ads/zzfj;Lcom/google/android/gms/internal/ads/zzacr;ILcom/google/android/gms/internal/ads/zzacm;)Z

    move-result p2
    :try_end_43
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_39 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    const/4 p2, 0x0

    :goto_45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v2

    if-le v1, v2, :cond_50

    goto :goto_5a

    :cond_50
    if-eqz p2, :cond_5a

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:Lcom/google/android/gms/internal/ads/zzacm;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzacm;->zza:J

    return-wide p1

    :cond_5a
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_5d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    goto :goto_68

    :cond_65
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    :goto_68
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private final zzf()V
    .registers 12

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzn:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:Lcom/google/android/gms/internal/ads/zzacr;

    sget v3, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzacr;->zze:I

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzf:Lcom/google/android/gms/internal/ads/zzadk;

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzm:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzadk;->zzt(JIIILcom/google/android/gms/internal/ads/zzadj;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacf;Lcom/google/android/gms/internal/ads/zzadb;)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_235

    const/4 v5, 0x2

    if-eq v2, v3, :cond_225

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v2, v5, :cond_202

    if-eq v2, v7, :cond_14b

    const-wide/16 v9, -0x1

    if-eq v2, v8, :cond_da

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzf:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:Lcom/google/android/gms/internal/ads/zzacr;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzl:Lcom/google/android/gms/internal/ads/zzaei;

    const/4 v6, -0x1

    if-eqz v5, :cond_35

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzabq;->zze()Z

    move-result v7

    if-eqz v7, :cond_35

    move-object/from16 v7, p2

    invoke-virtual {v5, v1, v7}, Lcom/google/android/gms/internal/ads/zzabq;->zza(Lcom/google/android/gms/internal/ads/zzacf;Lcom/google/android/gms/internal/ads/zzadb;)I

    move-result v4

    goto/16 :goto_bb

    :cond_35
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzn:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_43

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzacn;->zzb(Lcom/google/android/gms/internal/ads/zzacf;Lcom/google/android/gms/internal/ads/zzacr;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzn:J

    goto/16 :goto_bb

    :cond_43
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v5

    const v7, 0x8000

    if-ge v5, v7, :cond_71

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    sub-int/2addr v7, v5

    invoke-interface {v1, v2, v5, v7}, Lcom/google/android/gms/internal/ads/zzacf;->zza([BII)I

    move-result v1

    if-ne v1, v6, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x0

    :goto_5b
    if-nez v3, :cond_64

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    add-int/2addr v5, v1

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzF(I)V

    goto :goto_72

    :cond_64
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v1

    if-nez v1, :cond_72

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaek;->zzf()V

    const/4 v4, -0x1

    goto :goto_bb

    :cond_71
    const/4 v3, 0x0

    :cond_72
    :goto_72
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v2

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzm:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzj:I

    if-ge v5, v6, :cond_8a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v7

    sub-int/2addr v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    :cond_8a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzaek;->zza(Lcom/google/android/gms/internal/ads/zzfj;Z)J

    move-result-wide v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzf:Lcom/google/android/gms/internal/ads/zzadk;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadi;->zzb(Lcom/google/android/gms/internal/ads/zzadk;Lcom/google/android/gms/internal/ads/zzfj;I)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzm:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzm:I

    cmp-long v1, v5, v9

    if-eqz v1, :cond_b1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaek;->zzf()V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzm:I

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzn:J

    :cond_b1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_bc

    :goto_bb
    return v4

    :cond_bc
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v1

    invoke-static {v3, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzF(I)V

    return v4

    :cond_da
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v7, v3, v4, v5, v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_141

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzk:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zze:Lcom/google/android/gms/internal/ads/zzach;

    sget v3, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzd()J

    move-result-wide v16

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:Lcom/google/android/gms/internal/ads/zzacr;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzacr;->zzk:Lcom/google/android/gms/internal/ads/zzacq;

    if-eqz v1, :cond_116

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacp;

    invoke-direct {v1, v12, v14, v15}, Lcom/google/android/gms/internal/ads/zzacp;-><init>(Lcom/google/android/gms/internal/ads/zzacr;J)V

    goto :goto_13a

    :cond_116
    const-wide/16 v5, 0x0

    cmp-long v1, v16, v9

    if-eqz v1, :cond_131

    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzacr;->zzj:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_131

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaei;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzk:I

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzaei;-><init>(Lcom/google/android/gms/internal/ads/zzacr;IJJ)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzl:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzabq;->zzb()Lcom/google/android/gms/internal/ads/zzade;

    move-result-object v1

    goto :goto_13a

    :cond_131
    new-instance v1, Lcom/google/android/gms/internal/ads/zzadd;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzacr;->zza()J

    move-result-wide v7

    invoke-direct {v1, v7, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzadd;-><init>(JJ)V

    :goto_13a
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzO(Lcom/google/android/gms/internal/ads/zzade;)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    return v4

    :cond_141
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    const-string v1, "First frame does not start with sync code."

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_14b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:Lcom/google/android/gms/internal/ads/zzacr;

    :cond_14d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfi;

    new-array v5, v8, [B

    invoke-direct {v3, v5, v8}, Lcom/google/android/gms/internal/ads/zzfi;-><init>([BI)V

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfi;->zza:[B

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v6, v5, v4, v8, v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v5

    const/4 v9, 0x7

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v9

    const/16 v10, 0x18

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v3

    add-int/2addr v3, v8

    const/4 v10, 0x6

    if-nez v9, :cond_17f

    const/16 v2, 0x26

    new-array v3, v2, [B

    invoke-virtual {v6, v3, v4, v2, v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzacr;

    invoke-direct {v2, v3, v8}, Lcom/google/android/gms/internal/ads/zzacr;-><init>([BI)V

    goto :goto_1d9

    :cond_17f
    if-eqz v2, :cond_1fc

    if-ne v9, v7, :cond_198

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v11

    invoke-virtual {v6, v11, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzaco;->zzb(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzacq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzacr;->zzf(Lcom/google/android/gms/internal/ads/zzacq;)Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    goto :goto_1d9

    :cond_198
    if-ne v9, v8, :cond_1b8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v11

    invoke-virtual {v6, v11, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-static {v9, v4, v4}, Lcom/google/android/gms/internal/ads/zzadq;->zzc(Lcom/google/android/gms/internal/ads/zzfj;ZZ)Lcom/google/android/gms/internal/ads/zzadn;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzadn;->zzb:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzacr;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    goto :goto_1d9

    :cond_1b8
    if-ne v9, v10, :cond_1d6

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v11

    invoke-virtual {v6, v11, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzafg;->zzb(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzafg;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfwu;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzacr;->zze(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    goto :goto_1d9

    :cond_1d6
    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    :goto_1d9
    sget v3, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:Lcom/google/android/gms/internal/ads/zzacr;

    if-eqz v5, :cond_14d

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzacr;->zzc:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzj:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzf:Lcom/google/android/gms/internal/ads/zzadk;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:Lcom/google/android/gms/internal/ads/zzacr;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:[B

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzh:Lcom/google/android/gms/internal/ads/zzcb;

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzacr;->zzc([BLcom/google/android/gms/internal/ads/zzcb;)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadk;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    return v4

    :cond_1fc
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_202
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v1, v3, v4, v8, v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v1

    const-wide/32 v8, 0x664c6143

    cmp-long v3, v1, v8

    if-nez v3, :cond_21e

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    return v4

    :cond_21e
    const-string v1, "Failed to read FLAC stream marker."

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_225
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:[B

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzabu;

    const/16 v6, 0x2a

    invoke-virtual {v3, v2, v4, v6, v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    return v4

    :cond_235
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zze()J

    move-result-wide v5

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zza(Lcom/google/android/gms/internal/ads/zzacf;Z)Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zze()J

    move-result-wide v7

    sub-long/2addr v7, v5

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    long-to-int v5, v7

    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzh:Lcom/google/android/gms/internal/ads/zzcb;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    return v4
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzach;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zze:Lcom/google/android/gms/internal/ads/zzach;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzw(II)Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzf:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzach;->zzD()V

    return-void
.end method

.method public final zzd(JJ)V
    .registers 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_a

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    goto :goto_11

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzl:Lcom/google/android/gms/internal/ads/zzaei;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzabq;->zzd(J)V

    :cond_11
    :goto_11
    cmp-long p1, p3, v1

    if-nez p1, :cond_16

    goto :goto_18

    :cond_16
    const-wide/16 v1, -0x1

    :goto_18
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzn:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzm:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacf;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaco;->zza(Lcom/google/android/gms/internal/ads/zzacf;Z)Lcom/google/android/gms/internal/ads/zzcb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {p1, v3, v0, v2, v0}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    return v0
.end method
