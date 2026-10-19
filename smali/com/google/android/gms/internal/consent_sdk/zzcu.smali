###### Class com.google.android.gms.internal.consent_sdk.zzcu (com.google.android.gms.internal.consent_sdk.zzcu)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzcu;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.1.0"


# static fields
.field private static zza:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "WebViewUtil.class"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2c

    const-class v0, Lcom/google/android/gms/internal/consent_sdk/zzcu;

    monitor-enter v0

    :try_start_9
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzcu;->zza:Ljava/lang/Boolean;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_29

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    :try_start_e
    const-string v1, "(function(){})()"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzcu;->zza:Ljava/lang/Boolean;
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_18
    .catchall {:try_start_e .. :try_end_17} :catchall_29

    goto :goto_1c

    :catch_18
    :try_start_18
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzcu;->zza:Ljava/lang/Boolean;

    :cond_1c
    :goto_1c
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzcu;->zza:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_29

    if-eqz v1, :cond_2c

    invoke-virtual {p0, p1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0

    :cond_2c
    const-string v0, "javascript:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
