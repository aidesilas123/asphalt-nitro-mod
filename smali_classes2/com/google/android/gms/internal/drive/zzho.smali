###### Class com.google.android.gms.internal.drive.zzho (com.google.android.gms.internal.drive.zzho)
.class public final Lcom/google/android/gms/internal/drive/zzho;
.super Lcom/google/android/gms/internal/drive/zzir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzir<",
        "Lcom/google/android/gms/internal/drive/zzho;",
        ">;"
    }
.end annotation


# instance fields
.field public zzac:J

.field public zzf:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzir;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzho;->zzac:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzho;->zzf:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    const/4 v0, -0x1

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
    instance-of v1, p1, Lcom/google/android/gms/internal/drive/zzho;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/drive/zzho;

    iget-wide v3, p0, Lcom/google/android/gms/internal/drive/zzho;->zzac:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/drive/zzho;->zzac:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/google/android/gms/internal/drive/zzho;->zzf:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/drive/zzho;->zzf:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzit;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_32

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzit;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_32
    :goto_32
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzit;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    return v2

    :cond_3e
    :goto_3e
    return v0
.end method

.method public final hashCode()I
    .registers 7

    const-class v0, Lcom/google/android/gms/internal/drive/zzho;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/drive/zzho;->zzac:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/drive/zzho;->zzf:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzit;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_34

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzit;->hashCode()I

    move-result v1

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v1, 0x0

    :goto_35
    add-int/2addr v0, v1

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

    if-eqz v0, :cond_30

    const/16 v1, 0x8

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-eq v0, v1, :cond_24

    const/16 v1, 0x10

    if-eq v0, v1, :cond_18

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzir;->zza(Lcom/google/android/gms/internal/drive/zzio;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzio;->zzbf()J

    move-result-wide v0

    ushr-long v4, v0, v4

    and-long/2addr v0, v2

    neg-long v0, v0

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzho;->zzf:J

    goto :goto_0

    :cond_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzio;->zzbf()J

    move-result-wide v0

    ushr-long v4, v0, v4

    and-long/2addr v0, v2

    neg-long v0, v0

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzho;->zzac:J

    goto :goto_0

    :cond_30
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/drive/zzip;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/drive/zzho;->zzac:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/drive/zzip;->zza(IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/drive/zzho;->zzf:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/drive/zzip;->zza(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/drive/zzir;->zza(Lcom/google/android/gms/internal/drive/zzip;)V

    return-void
.end method

.method protected final zzaq()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/drive/zzir;->zzaq()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/drive/zzho;->zzac:J

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/drive/zzip;->zzb(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/drive/zzho;->zzf:J

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/drive/zzip;->zzb(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
