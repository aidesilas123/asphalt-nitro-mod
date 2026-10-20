###### Class com.google.android.gms.internal.ads.zzagw (com.google.android.gms.internal.ads.zzagw)
.class final Lcom/google/android/gms/internal/ads/zzagw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzagy;


# instance fields
.field private final zza:[B

.field private final zzb:Ljava/util/ArrayDeque;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzahf;

.field private zzd:Lcom/google/android/gms/internal/ads/zzagx;

.field private zze:I

.field private zzf:I

.field private zzg:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zza:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzb:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzc:Lcom/google/android/gms/internal/ads/zzahf;

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzacf;I)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zza:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    const-wide/16 v2, 0x0

    :goto_a
    if-ge v1, p2, :cond_1a

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zza:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-wide v2
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzagx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzd:Lcom/google/android/gms/internal/ads/zzagx;

    return-void
.end method

.method public final zzb()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zze:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzb:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzc:Lcom/google/android/gms/internal/ads/zzahf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahf;->zze()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzacf;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzd:Lcom/google/android/gms/internal/ads/zzagx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzb:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzagv;

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagv;->zzb(Lcom/google/android/gms/internal/ads/zzagv;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1d

    goto :goto_33

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzd:Lcom/google/android/gms/internal/ads/zzagx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzb:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzagv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagv;->zza(Lcom/google/android/gms/internal/ads/zzagv;)I

    move-result v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzahb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzahb;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzahd;->zzh(I)V

    return v1

    :cond_33
    :goto_33
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zze:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzc:Lcom/google/android/gms/internal/ads/zzahf;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzahf;->zzd(Lcom/google/android/gms/internal/ads/zzacf;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_8a

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    :goto_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zza:[B

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v4, v0, v3, v2, v3}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zza:[B

    aget-byte v0, v0, v3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahf;->zzb(I)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_86

    if-gt v0, v2, :cond_86

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzagw;->zza:[B

    invoke-static {v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzahf;->zzc([BIZ)J

    move-result-wide v5

    long-to-int v6, v5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzd:Lcom/google/android/gms/internal/ads/zzagx;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzahb;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzahb;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    const v5, 0x1549a966

    const v7, 0x1654ae6b

    if-eq v6, v5, :cond_81

    const v5, 0x1f43b675

    if-eq v6, v5, :cond_81

    const v5, 0x1c53bb6b

    if-eq v6, v5, :cond_81

    if-ne v6, v7, :cond_86

    const v6, 0x1654ae6b

    :cond_81
    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    int-to-long v4, v6

    goto :goto_8a

    :cond_86
    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    goto :goto_48

    :cond_8a
    :goto_8a
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_91

    return v3

    :cond_91
    long-to-int v0, v4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzf:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zze:I

    goto :goto_99

    :cond_97
    if-ne v0, v1, :cond_a6

    :goto_99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzc:Lcom/google/android/gms/internal/ads/zzahf;

    const/16 v4, 0x8

    invoke-virtual {v0, p1, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzahf;->zzd(Lcom/google/android/gms/internal/ads/zzacf;ZZI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzg:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zze:I

    :cond_a6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzd:Lcom/google/android/gms/internal/ads/zzagx;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzf:I

    check-cast v0, Lcom/google/android/gms/internal/ads/zzahb;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahb;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    const-wide/16 v6, 0x8

    const/4 v8, 0x0

    sparse-switch v4, :sswitch_data_196

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzg:J

    long-to-int v1, v0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zze:I

    goto/16 :goto_5

    :sswitch_c1
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzg:J

    const-wide/16 v11, 0x4

    cmp-long v5, v9, v11

    if-eqz v5, :cond_e4

    cmp-long v5, v9, v6

    if-nez v5, :cond_ce

    goto :goto_e4

    :cond_ce
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid float size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object p1

    throw p1

    :cond_e4
    :goto_e4
    long-to-int v5, v9

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzagw;->zzd(Lcom/google/android/gms/internal/ads/zzacf;I)J

    move-result-wide v6

    if-ne v5, v2, :cond_f2

    long-to-int p1, v6

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v5, p1

    goto :goto_f6

    :cond_f2
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    :goto_f6
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzahb;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzahd;->zzi(ID)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zze:I

    return v1

    :sswitch_fe
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzg:J

    long-to-int v0, v6

    invoke-virtual {v5, v4, v0, p1}, Lcom/google/android/gms/internal/ads/zzahd;->zzg(IILcom/google/android/gms/internal/ads/zzacf;)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zze:I

    return v1

    :sswitch_107
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v9

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzg:J

    add-long/2addr v5, v9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzb:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagv;

    invoke-direct {v0, v4, v5, v6, v8}, Lcom/google/android/gms/internal/ads/zzagv;-><init>(IJLcom/google/android/gms/internal/ads/zzagu;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzd:Lcom/google/android/gms/internal/ads/zzagx;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzf:I

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzg:J

    check-cast p1, Lcom/google/android/gms/internal/ads/zzahb;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzahb;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    move-wide v8, v9

    move-wide v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzahd;->zzk(IJJ)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zze:I

    return v1

    :sswitch_12a
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzg:J

    const-wide/32 v9, 0x7fffffff

    cmp-long v2, v5, v9

    if-gtz v2, :cond_157

    long-to-int v2, v5

    if-nez v2, :cond_139

    const-string p1, ""

    goto :goto_14f

    :cond_139
    new-array v5, v2, [B

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {p1, v5, v3, v2, v3}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    :goto_140
    if-lez v2, :cond_14a

    add-int/lit8 p1, v2, -0x1

    aget-byte v6, v5, p1

    if-nez v6, :cond_14a

    move v2, p1

    goto :goto_140

    :cond_14a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5, v3, v2}, Ljava/lang/String;-><init>([BII)V

    :goto_14f
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahb;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/internal/ads/zzahd;->zzl(ILjava/lang/String;)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zze:I

    return v1

    :cond_157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "String element size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object p1

    throw p1

    :sswitch_16d
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzagw;->zzg:J

    cmp-long v2, v9, v6

    if-gtz v2, :cond_180

    long-to-int v2, v9

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzagw;->zzd(Lcom/google/android/gms/internal/ads/zzacf;I)J

    move-result-wide v5

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzahb;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzahd;->zzj(IJ)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzagw;->zze:I

    return v1

    :cond_180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid integer size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object p1

    throw p1

    :sswitch_data_196
    .sparse-switch
        0x83 -> :sswitch_16d
        0x86 -> :sswitch_12a
        0x88 -> :sswitch_16d
        0x9b -> :sswitch_16d
        0x9f -> :sswitch_16d
        0xa0 -> :sswitch_107
        0xa1 -> :sswitch_fe
        0xa3 -> :sswitch_fe
        0xa5 -> :sswitch_fe
        0xa6 -> :sswitch_107
        0xae -> :sswitch_107
        0xb0 -> :sswitch_16d
        0xb3 -> :sswitch_16d
        0xb5 -> :sswitch_c1
        0xb7 -> :sswitch_107
        0xba -> :sswitch_16d
        0xbb -> :sswitch_107
        0xd7 -> :sswitch_16d
        0xe0 -> :sswitch_107
        0xe1 -> :sswitch_107
        0xe7 -> :sswitch_16d
        0xee -> :sswitch_16d
        0xf1 -> :sswitch_16d
        0xfb -> :sswitch_16d
        0x41e4 -> :sswitch_107
        0x41e7 -> :sswitch_16d
        0x41ed -> :sswitch_fe
        0x4254 -> :sswitch_16d
        0x4255 -> :sswitch_fe
        0x4282 -> :sswitch_12a
        0x4285 -> :sswitch_16d
        0x42f7 -> :sswitch_16d
        0x4489 -> :sswitch_c1
        0x47e1 -> :sswitch_16d
        0x47e2 -> :sswitch_fe
        0x47e7 -> :sswitch_107
        0x47e8 -> :sswitch_16d
        0x4dbb -> :sswitch_107
        0x5031 -> :sswitch_16d
        0x5032 -> :sswitch_16d
        0x5034 -> :sswitch_107
        0x5035 -> :sswitch_107
        0x536e -> :sswitch_12a
        0x53ab -> :sswitch_fe
        0x53ac -> :sswitch_16d
        0x53b8 -> :sswitch_16d
        0x54b0 -> :sswitch_16d
        0x54b2 -> :sswitch_16d
        0x54ba -> :sswitch_16d
        0x55aa -> :sswitch_16d
        0x55b0 -> :sswitch_107
        0x55b2 -> :sswitch_16d
        0x55b9 -> :sswitch_16d
        0x55ba -> :sswitch_16d
        0x55bb -> :sswitch_16d
        0x55bc -> :sswitch_16d
        0x55bd -> :sswitch_16d
        0x55d0 -> :sswitch_107
        0x55d1 -> :sswitch_c1
        0x55d2 -> :sswitch_c1
        0x55d3 -> :sswitch_c1
        0x55d4 -> :sswitch_c1
        0x55d5 -> :sswitch_c1
        0x55d6 -> :sswitch_c1
        0x55d7 -> :sswitch_c1
        0x55d8 -> :sswitch_c1
        0x55d9 -> :sswitch_c1
        0x55da -> :sswitch_c1
        0x55ee -> :sswitch_16d
        0x56aa -> :sswitch_16d
        0x56bb -> :sswitch_16d
        0x6240 -> :sswitch_107
        0x6264 -> :sswitch_16d
        0x63a2 -> :sswitch_fe
        0x6d80 -> :sswitch_107
        0x75a1 -> :sswitch_107
        0x75a2 -> :sswitch_16d
        0x7670 -> :sswitch_107
        0x7671 -> :sswitch_16d
        0x7672 -> :sswitch_fe
        0x7673 -> :sswitch_c1
        0x7674 -> :sswitch_c1
        0x7675 -> :sswitch_c1
        0x22b59c -> :sswitch_12a
        0x23e383 -> :sswitch_16d
        0x2ad7b1 -> :sswitch_16d
        0x114d9b74 -> :sswitch_107
        0x1549a966 -> :sswitch_107
        0x1654ae6b -> :sswitch_107
        0x18538067 -> :sswitch_107
        0x1a45dfa3 -> :sswitch_107
        0x1c53bb6b -> :sswitch_107
        0x1f43b675 -> :sswitch_107
    .end sparse-switch
.end method
