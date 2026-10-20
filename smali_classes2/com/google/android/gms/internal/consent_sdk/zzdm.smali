###### Class com.google.android.gms.internal.consent_sdk.zzdm (com.google.android.gms.internal.consent_sdk.zzdm)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzdm;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzdo;


# instance fields
.field private zza:Lcom/google/android/gms/internal/consent_sdk/zzdr;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;)V
    .registers 3

    check-cast p0, Lcom/google/android/gms/internal/consent_sdk/zzdm;

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdm;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    if-nez v0, :cond_9

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdm;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdm;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdr;->zzb()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
