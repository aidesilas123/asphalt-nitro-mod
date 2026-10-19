###### Class com.google.android.gms.internal.drive.zzhn (com.google.android.gms.internal.drive.zzhn)
.class public final Lcom/google/android/gms/internal/drive/zzhn;
.super Lcom/google/android/gms/internal/drive/zzir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzir<",
        "Lcom/google/android/gms/internal/drive/zzhn;",
        ">;"
    }
.end annotation


# instance fields
.field public versionCode:I

.field public zzab:Ljava/lang/String;

.field public zzac:J

.field public zzad:I

.field public zzf:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzir;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzab:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzac:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzf:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzad:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzix;->zznf:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/drive/zzhn;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/drive/zzhn;

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzhn;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/internal/drive/zzhn;->versionCode:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzab:Ljava/lang/String;

    if-nez v1, :cond_1c

    iget-object v1, p1, Lcom/google/android/gms/internal/drive/zzhn;->zzab:Ljava/lang/String;

    if-eqz v1, :cond_25

    return v2

    :cond_1c
    iget-object v3, p1, Lcom/google/android/gms/internal/drive/zzhn;->zzab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-wide v3, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzac:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/drive/zzhn;->zzac:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2e

    return v2

    :cond_2e
    iget-wide v3, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzf:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/drive/zzhn;->zzf:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_37

    return v2

    :cond_37
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzad:I

    iget v3, p1, Lcom/google/android/gms/internal/drive/zzhn;->zzad:I

    if-eq v1, v3, :cond_3e

    return v2

    :cond_3e
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    if-eqz v1, :cond_52

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzit;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_52

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzit;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_52
    :goto_52
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzit;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    return v2

    :cond_5e
    :goto_5e
    return v0
.end method

.method public final hashCode()I
    .registers 8

    const-class v0, Lcom/google/android/gms/internal/drive/zzhn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzhn;->versionCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzab:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1e

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzac:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzf:J

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzad:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzit;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_4b

    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzit;->hashCode()I

    move-result v2

    :cond_4b
    :goto_4b
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/drive/zzio;)Lcom/google/android/gms/internal/drive/zzix;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzio;->zzbd()I

    move-result v0

    if-eqz v0, :cond_51

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_43

    const/16 v1, 0x18

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-eq v0, v1, :cond_37

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x28

    if-eq v0, v1, :cond_24

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzir;->zza(Lcom/google/android/gms/internal/drive/zzio;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzio;->zzbe()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzad:I

    goto :goto_0

    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzio;->zzbf()J

    move-result-wide v0

    ushr-long v4, v0, v4

    and-long/2addr v0, v2

    neg-long v0, v0

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzf:J

    goto :goto_0

    :cond_37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzio;->zzbf()J

    move-result-wide v0

    ushr-long v4, v0, v4

    and-long/2addr v0, v2

    neg-long v0, v0

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzac:J

    goto :goto_0

    :cond_43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzio;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzab:Ljava/lang/String;

    goto :goto_0

    :cond_4a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzio;->zzbe()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->versionCode:I

    goto :goto_0

    :cond_51
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzip;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->versionCode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/drive/zzip;->zzb(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzab:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v1}, Lcom/google/android/gms/internal/drive/zzip;->zzd(II)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/drive/zzip;->zzh(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzac:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/drive/zzip;->zza(IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzf:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/drive/zzip;->zza(IJ)V

    iget v0, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzad:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/drive/zzip;->zzb(II)V

    :cond_24
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zzir;->zza(Lcom/google/android/gms/internal/drive/zzip;)V

    return-void
.end method

.method protected final zzaq()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/drive/zzir;->zzaq()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzhn;->versionCode:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/drive/zzip;->zzc(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzab:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/drive/zzip;->zzo(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzip;->zzi(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzac:J

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/drive/zzip;->zzb(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzf:J

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/drive/zzip;->zzb(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzhn;->zzad:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/drive/zzip;->zzc(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    return v0
.end method
