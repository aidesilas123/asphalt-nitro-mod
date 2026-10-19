###### Class com.google.android.gms.internal.consent_sdk.zzcq (com.google.android.gms.internal.consent_sdk.zzcq)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzcq;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.1.0"


# direct methods
.method public static zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzco;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, -0x1

    const-string v2, "/"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_25

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v2

    const-string v0, "_preferences"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    :cond_25
    const/4 p0, 0x2

    if-ne v0, p0, :cond_3f

    aget-object p0, p1, v2

    aget-object p1, p1, v3

    :goto_2c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3f

    :cond_39
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzco;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3f
    :goto_3f
    return-object v1
.end method

.method public static zzb(Landroid/content/Context;Ljava/util/Set;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/consent_sdk/zzcp;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzcq;->zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzco;

    move-result-object v2

    if-nez v2, :cond_2b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clearKeys: unable to process key: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserMessagingPlatform"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_2b
    iget-object v1, v2, Lcom/google/android/gms/internal/consent_sdk/zzco;->zza:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzcp;->zza(Lcom/google/android/gms/internal/consent_sdk/zzcp;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/zzco;->zzb:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_9

    :cond_37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzcp;->zzb()V

    return-void
.end method
