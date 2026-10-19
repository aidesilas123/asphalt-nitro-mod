###### Class com.google.android.gms.internal.ads.zzawn (com.google.android.gms.internal.ads.zzawn)
.class final Lcom/google/android/gms/internal/ads/zzawn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Landroid/webkit/ValueCallback;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzawf;

.field final synthetic zzc:Landroid/webkit/WebView;

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzawp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawp;Lcom/google/android/gms/internal/ads/zzawf;Landroid/webkit/WebView;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawn;->zze:Lcom/google/android/gms/internal/ads/zzawp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawn;->zzb:Lcom/google/android/gms/internal/ads/zzawf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzawn;->zzc:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzawn;->zzd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzawm;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzawm;-><init>(Lcom/google/android/gms/internal/ads/zzawn;Lcom/google/android/gms/internal/ads/zzawf;Landroid/webkit/WebView;Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawn;->zza:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawn;->zzc:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawn;->zzc:Landroid/webkit/WebView;

    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawn;->zza:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawn;->zza:Landroid/webkit/ValueCallback;

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzawm (com.google.android.gms.internal.ads.zzawm)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzawm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzawn;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzawf;

.field public final synthetic zzc:Landroid/webkit/WebView;

.field public final synthetic zzd:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzawn;Lcom/google/android/gms/internal/ads/zzawf;Landroid/webkit/WebView;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zza:Lcom/google/android/gms/internal/ads/zzawn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzb:Lcom/google/android/gms/internal/ads/zzawf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzc:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzd:Z

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zza:Lcom/google/android/gms/internal/ads/zzawn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzawn;->zze:Lcom/google/android/gms/internal/ads/zzawp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzb:Lcom/google/android/gms/internal/ads/zzawf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzc:Landroid/webkit/WebView;

    check-cast p1, Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzd:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzawp;->zzd(Lcom/google/android/gms/internal/ads/zzawf;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
