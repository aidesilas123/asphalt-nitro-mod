###### Class com.google.android.gms.internal.ads.zzajv (com.google.android.gms.internal.ads.zzajv)
.class public final Lcom/google/android/gms/internal/ads/zzajv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalj;


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwu;->zzl()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajv;->zza:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajv;->zza:Ljava/util/List;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzakz;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakz;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajv;->zzd(Lcom/google/android/gms/internal/ads/zzali;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzakz;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzaln;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaln;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajv;->zzd(Lcom/google/android/gms/internal/ads/zzali;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaln;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzali;)Ljava/util/List;
    .registers 13

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzali;->zzd:[B

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>([B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajv;->zza:Ljava/util/List;

    :goto_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v1

    if-lez v1, :cond_8b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_86

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v1, :cond_86

    const/4 v5, 0x3

    sget-object v6, Lcom/google/android/gms/internal/ads/zzftl;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzy(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_41

    const/4 v7, 0x1

    goto :goto_42

    :cond_41
    const/4 v7, 0x0

    :goto_42
    if-eqz v7, :cond_49

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_4c

    :cond_49
    const-string v9, "application/cea-608"

    const/4 v6, 0x1

    :goto_4c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    if-eqz v7, :cond_6a

    and-int/lit8 v7, v10, 0x40

    sget v10, Lcom/google/android/gms/internal/ads/zzeh;->zza:I

    if-eqz v7, :cond_61

    new-array v7, v8, [B

    aput-byte v8, v7, v2

    goto :goto_65

    :cond_61
    new-array v7, v8, [B

    aput-byte v2, v7, v2

    :goto_65
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_6b

    :cond_6a
    const/4 v7, 0x0

    :goto_6b
    new-instance v8, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzw(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_86
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    goto/16 :goto_9

    :cond_8b
    return-object p1
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzall;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_db

    const/4 v0, 0x4

    if-eq p1, v0, :cond_db

    const/16 v0, 0x15

    if-eq p1, v0, :cond_d0

    const/16 v0, 0x1b

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c1

    const/16 v0, 0x24

    if-eq p1, v0, :cond_b2

    const/16 v0, 0x59

    if-eq p1, v0, :cond_a5

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_98

    const/16 v0, 0xac

    if-eq p1, v0, :cond_8b

    const/16 v0, 0x101

    if-eq p1, v0, :cond_7e

    const/16 v0, 0x80

    if-eq p1, v0, :cond_e8

    const/16 v0, 0x81

    if-eq p1, v0, :cond_71

    const/16 v0, 0x86

    if-eq p1, v0, :cond_64

    const/16 v0, 0x87

    if-eq p1, v0, :cond_71

    packed-switch p1, :pswitch_data_f8

    const/4 p1, 0x0

    return-object p1

    :pswitch_3b
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzali;->zzb:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzakp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzakl;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V

    return-object p2

    :pswitch_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzajv;->zzc(Lcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzaln;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzakd;-><init>(Lcom/google/android/gms/internal/ads/zzaln;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V

    return-object p1

    :pswitch_57
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzali;->zzb:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzakp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaju;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaju;-><init>(ZLjava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V

    return-object p2

    :cond_64
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaky;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzako;

    const-string v0, "application/x-scte35"

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzako;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaky;-><init>(Lcom/google/android/gms/internal/ads/zzakx;)V

    return-object p1

    :cond_71
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzali;->zzb:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzakp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzajo;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V

    return-object p2

    :cond_7e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaky;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzako;

    const-string v0, "application/vnd.dvb.ait"

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzako;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaky;-><init>(Lcom/google/android/gms/internal/ads/zzakx;)V

    return-object p1

    :cond_8b
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzali;->zzb:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzakp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzajr;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V

    return-object p2

    :cond_98
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzali;->zzb:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzakp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzajw;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V

    return-object p2

    :cond_a5
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzali;->zzc:Ljava/util/List;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzakp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzajx;-><init>(Ljava/util/List;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V

    return-object p2

    :cond_b2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzajv;->zzb(Lcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzakz;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Lcom/google/android/gms/internal/ads/zzakz;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V

    return-object p1

    :cond_c1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakh;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzajv;->zzb(Lcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzakz;

    move-result-object p2

    invoke-direct {v0, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzakh;-><init>(Lcom/google/android/gms/internal/ads/zzakz;ZZ)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V

    return-object p1

    :cond_d0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakp;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzakk;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzakk;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V

    return-object p1

    :cond_db
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzali;->zzb:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzakp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzakm;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V

    return-object p2

    :cond_e8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaka;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzajv;->zzc(Lcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzaln;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzaka;-><init>(Lcom/google/android/gms/internal/ads/zzaln;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzajy;)V

    return-object p1

    nop

    :pswitch_data_f8
    .packed-switch 0xf
        :pswitch_57
        :pswitch_48
        :pswitch_3b
    .end packed-switch
.end method
