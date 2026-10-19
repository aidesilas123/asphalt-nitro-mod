###### Class com.google.android.gms.internal.drive.zzir (com.google.android.gms.internal.drive.zzir)
.class public abstract Lcom/google/android/gms/internal/drive/zzir;
.super Lcom/google/android/gms/internal/drive/zzix;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/drive/zzir<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/drive/zzix;"
    }
.end annotation


# instance fields
.field protected zzmw:Lcom/google/android/gms/internal/drive/zzit;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzix;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/drive/zzix;->zzbi()Lcom/google/android/gms/internal/drive/zzix;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzir;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/drive/zziv;->zza(Lcom/google/android/gms/internal/drive/zzir;Lcom/google/android/gms/internal/drive/zzir;)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/drive/zzip;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/drive/zzit;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/drive/zzit;->zzs(I)Lcom/google/android/gms/internal/drive/zziu;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/drive/zziu;->zza(Lcom/google/android/gms/internal/drive/zzip;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/drive/zzio;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzio;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzio;->zzk(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    ushr-int/lit8 v1, p2, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzio;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/drive/zzio;->zza(II)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/drive/zziz;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/drive/zziz;-><init>(I[B)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    if-nez p2, :cond_29

    new-instance p2, Lcom/google/android/gms/internal/drive/zzit;

    invoke-direct {p2}, Lcom/google/android/gms/internal/drive/zzit;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    goto :goto_2d

    :cond_29
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/drive/zzit;->zzr(I)Lcom/google/android/gms/internal/drive/zziu;

    move-result-object p1

    :goto_2d
    if-nez p1, :cond_39

    new-instance p1, Lcom/google/android/gms/internal/drive/zziu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/drive/zziu;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/drive/zzit;->zza(ILcom/google/android/gms/internal/drive/zziu;)V

    :cond_39
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/drive/zziu;->zza(Lcom/google/android/gms/internal/drive/zziz;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected zzaq()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/drive/zzit;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzir;->zzmw:Lcom/google/android/gms/internal/drive/zzit;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/drive/zzit;->zzs(I)Lcom/google/android/gms/internal/drive/zziu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/drive/zziu;->zzaq()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    move v1, v0

    :cond_1d
    return v1
.end method

.method public final synthetic zzbi()Lcom/google/android/gms/internal/drive/zzix;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzir;

    return-object v0
.end method
