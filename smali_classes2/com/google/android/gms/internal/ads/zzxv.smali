###### Class com.google.android.gms.internal.ads.zzxv (com.google.android.gms.internal.ads.zzxv)
.class final Lcom/google/android/gms/internal/ads/zzxv;
.super Lcom/google/android/gms/internal/ads/zzxs;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zze:Z

.field private final zzf:Lcom/google/android/gms/internal/ads/zzxk;

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Z

.field private final zzn:I

.field private final zzo:Z

.field private final zzp:Z

.field private final zzq:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzdc;ILcom/google/android/gms/internal/ads/zzxk;IIZ)V
    .registers 12

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxs;-><init>(ILcom/google/android/gms/internal/ads/zzdc;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzf:Lcom/google/android/gms/internal/ads/zzxk;

    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzxk;->zzJ:Z

    const/4 p2, 0x1

    if-eq p2, p1, :cond_e

    const/16 p1, 0x10

    goto :goto_10

    :cond_e
    const/16 p1, 0x18

    :goto_10
    const/high16 p6, -0x40800000    # -1.0f

    const/4 v0, -0x1

    if-eqz p7, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzam;->zzt:F

    cmpl-float v3, v2, p6

    if-eqz v3, :cond_27

    const/high16 v3, 0x4f000000

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2b

    :cond_27
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zze:Z

    if-eqz p7, :cond_51

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget v1, p7, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    if-eq v1, v0, :cond_38

    if-ltz v1, :cond_51

    :cond_38
    iget v1, p7, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    if-eq v1, v0, :cond_3e

    if-ltz v1, :cond_51

    :cond_3e
    iget v1, p7, Lcom/google/android/gms/internal/ads/zzam;->zzt:F

    cmpl-float p6, v1, p6

    if-eqz p6, :cond_49

    const/4 p6, 0x0

    cmpl-float p6, v1, p6

    if-ltz p6, :cond_51

    :cond_49
    iget p6, p7, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    if-eq p6, v0, :cond_4f

    if-ltz p6, :cond_51

    :cond_4f
    const/4 p6, 0x1

    goto :goto_52

    :cond_51
    const/4 p6, 0x0

    :goto_52
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzg:Z

    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzxw;->zzn(IZ)Z

    move-result p6

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzh:Z

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget p7, p6, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzi:I

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzam;->zza()I

    move-result p6

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzj:I

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget p6, p6, Lcom/google/android/gms/internal/ads/zzam;->zzf:I

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p6

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzl:I

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget p6, p6, Lcom/google/android/gms/internal/ads/zzam;->zzf:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzm:Z

    const/4 p6, 0x0

    :goto_77
    iget-object p7, p4, Lcom/google/android/gms/internal/ads/zzdj;->zzo:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p7

    if-ge p6, p7, :cond_95

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget-object p7, p7, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    if-eqz p7, :cond_92

    iget-object v1, p4, Lcom/google/android/gms/internal/ads/zzdj;->zzo:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-interface {v1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_92

    goto :goto_98

    :cond_92
    add-int/lit8 p6, p6, 0x1

    goto :goto_77

    :cond_95
    const p6, 0x7fffffff

    :goto_98
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzk:I

    and-int/lit16 p4, p5, 0x180

    const/16 p6, 0x80

    if-ne p4, p6, :cond_a2

    const/4 p4, 0x1

    goto :goto_a3

    :cond_a2
    const/4 p4, 0x0

    :goto_a3
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzo:Z

    and-int/lit8 p4, p5, 0x40

    const/16 p6, 0x40

    if-ne p4, p6, :cond_ad

    const/4 p4, 0x1

    goto :goto_ae

    :cond_ad
    const/4 p4, 0x0

    :goto_ae
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzp:Z

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget-object p6, p4, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const/4 p7, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-nez p6, :cond_bb

    :goto_b9
    const/4 p7, 0x0

    goto :goto_108

    :cond_bb
    invoke-virtual {p6}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_138

    goto :goto_f5

    :sswitch_c3
    const-string v3, "video/x-vnd.on2.vp9"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_f5

    const/4 p6, 0x3

    goto :goto_f6

    :sswitch_cd
    const-string v3, "video/avc"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_f5

    const/4 p6, 0x4

    goto :goto_f6

    :sswitch_d7
    const-string v3, "video/hevc"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_f5

    const/4 p6, 0x2

    goto :goto_f6

    :sswitch_e1
    const-string v3, "video/av01"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_f5

    const/4 p6, 0x1

    goto :goto_f6

    :sswitch_eb
    const-string v3, "video/dolby-vision"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_f5

    const/4 p6, 0x0

    goto :goto_f6

    :cond_f5
    :goto_f5
    const/4 p6, -0x1

    :goto_f6
    if-eqz p6, :cond_107

    if-eq p6, p2, :cond_108

    if-eq p6, v2, :cond_105

    if-eq p6, v1, :cond_103

    if-eq p6, p7, :cond_101

    goto :goto_b9

    :cond_101
    const/4 p7, 0x1

    goto :goto_108

    :cond_103
    const/4 p7, 0x2

    goto :goto_108

    :cond_105
    const/4 p7, 0x3

    goto :goto_108

    :cond_107
    const/4 p7, 0x5

    :cond_108
    :goto_108
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzq:I

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzf:Lcom/google/android/gms/internal/ads/zzxk;

    iget-boolean p7, p6, Lcom/google/android/gms/internal/ads/zzxk;->zzS:Z

    invoke-static {p5, p7}, Lcom/google/android/gms/internal/ads/zzxw;->zzn(IZ)Z

    move-result p7

    if-nez p7, :cond_115

    goto :goto_134

    :cond_115
    iget-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzxv;->zze:Z

    if-nez p7, :cond_11e

    iget-boolean p6, p6, Lcom/google/android/gms/internal/ads/zzxk;->zzH:Z

    if-nez p6, :cond_11e

    goto :goto_134

    :cond_11e
    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzxw;->zzn(IZ)Z

    move-result p3

    if-eqz p3, :cond_133

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzg:Z

    if-eqz p3, :cond_133

    if-eqz p7, :cond_133

    iget p3, p4, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    if-eq p3, v0, :cond_133

    and-int/2addr p1, p5

    if-eqz p1, :cond_133

    const/4 p3, 0x2

    goto :goto_134

    :cond_133
    const/4 p3, 0x1

    :goto_134
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzn:I

    return-void

    nop

    :sswitch_data_138
    .sparse-switch
        -0x6e5534ef -> :sswitch_eb
        -0x631b55f6 -> :sswitch_e1
        -0x63185e82 -> :sswitch_d7
        0x4f62373a -> :sswitch_cd
        0x5f50bed9 -> :sswitch_c3
    .end sparse-switch
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzxv;Lcom/google/android/gms/internal/ads/zzxv;)I
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zze:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzh:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxw;->zze()Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v0

    goto :goto_15

    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxw;->zze()Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyd;->zza()Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v0

    :goto_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwj;->zzj()Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzf:Lcom/google/android/gms/internal/ads/zzxk;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzdj;->zzA:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxw;->zzf()Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfwj;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfwj;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzi:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzi:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfwj;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwj;->zza()I

    move-result p0

    return p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzxv;Lcom/google/android/gms/internal/ads/zzxv;)I
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwj;->zzj()Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzh:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzh:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwj;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzl:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzl:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwj;->zzb(II)Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfwj;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zze:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxv;->zze:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwj;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzg:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzg:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwj;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyd;->zzc()Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfyd;->zza()Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfwj;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzo:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzo:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfwj;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzp:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzp:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfwj;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v0

    if-eqz v1, :cond_5d

    if-eqz v2, :cond_5d

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzq:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzq:I

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfwj;->zzb(II)Lcom/google/android/gms/internal/ads/zzfwj;

    move-result-object v0

    :cond_5d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwj;->zza()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzn:I

    return v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzxs;)Z
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzxs;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzf:Lcom/google/android/gms/internal/ads/zzxk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzxk;->zzK:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzo:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzo:Z

    if-ne v0, v1, :cond_22

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzp:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzxv;->zzp:Z

    if-ne v0, p1, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method
