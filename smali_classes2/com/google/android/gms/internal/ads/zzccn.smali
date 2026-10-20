###### Class com.google.android.gms.internal.ads.zzccn (com.google.android.gms.internal.ads.zzccn)
.class public final Lcom/google/android/gms/internal/ads/zzccn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcco;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcco;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccq;->zzd()V

    return-void
.end method

.method public static final zzb(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzccp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzccp;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccq;->zzd()V

    return-void
.end method
