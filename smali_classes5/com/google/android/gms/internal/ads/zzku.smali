###### Class com.google.android.gms.internal.ads.zzku (com.google.android.gms.internal.ads.zzku)
.class public final Lcom/google/android/gms/internal/ads/zzku;
.super Ljava/lang/RuntimeException;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const-string p1, "Detaching surface timed out."

    goto :goto_e

    :cond_9
    const-string p1, "Setting foreground mode timed out."

    goto :goto_e

    :cond_c
    const-string p1, "Player release timed out."

    :goto_e
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
