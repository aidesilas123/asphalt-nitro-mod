###### Class com.google.android.gms.internal.ads.zzgwi (com.google.android.gms.internal.ads.zzgwi)
.class public Lcom/google/android/gms/internal/ads/zzgwi;
.super Lcom/google/android/gms/internal/ads/zzgum;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzgwm<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzgwi<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzgum<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/ads/zzgwm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgwm;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzgwm;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgum;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zzb:Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwm;->zzaY()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwm;->zzaD()Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgye;->zza()Lcom/google/android/gms/internal/ads/zzgye;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgye;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgyp;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgyp;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzai()Lcom/google/android/gms/internal/ads/zzgwi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzah()Lcom/google/android/gms/internal/ads/zzgum;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzai()Lcom/google/android/gms/internal/ads/zzgwi;

    move-result-object v0

    return-object v0
.end method

.method public final zzai()Lcom/google/android/gms/internal/ads/zzgwi;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zzb:Lcom/google/android/gms/internal/ads/zzgwm;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzgwm;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgwi;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzam()Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    return-object v0
.end method

.method public final zzaj(Lcom/google/android/gms/internal/ads/zzgwm;)Lcom/google/android/gms/internal/ads/zzgwi;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zzb:Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgwm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwm;->zzaY()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzaq()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgwi;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    return-object p0
.end method

.method public final zzak([BIILcom/google/android/gms/internal/ads/zzgvy;)Lcom/google/android/gms/internal/ads/zzgwi;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgwy;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgwm;->zzaY()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzaq()V

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgye;->zza()Lcom/google/android/gms/internal/ads/zzgye;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgye;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgyp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    const/4 v4, 0x0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzguq;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/ads/zzguq;-><init>(Lcom/google/android/gms/internal/ads/zzgvy;)V

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgyp;->zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzguq;)V
    :try_end_26
    .catch Lcom/google/android/gms/internal/ads/zzgwy; {:try_start_b .. :try_end_26} :catch_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_26} :catch_30
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzj()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    throw p1

    :catch_35
    move-exception p1

    throw p1
.end method

.method public final zzal()Lcom/google/android/gms/internal/ads/zzgwm;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzam()Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwm;->zzaX()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzf;-><init>(Lcom/google/android/gms/internal/ads/zzgxw;)V

    throw v1
.end method

.method public zzam()Lcom/google/android/gms/internal/ads/zzgwm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwm;->zzaY()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwm;->zzaS()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    return-object v0
.end method

.method public bridge synthetic zzan()Lcom/google/android/gms/internal/ads/zzgxw;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzam()Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object v0

    return-object v0
.end method

.method protected final zzap()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwm;->zzaY()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzaq()V

    :cond_b
    return-void
.end method

.method protected zzaq()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zzb:Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwm;->zzaD()Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwi;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    return-void
.end method

.method public final synthetic zzbg()Lcom/google/android/gms/internal/ads/zzgxw;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method
