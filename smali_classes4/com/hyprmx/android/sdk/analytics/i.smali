###### Class com.hyprmx.android.sdk.analytics.i (com.hyprmx.android.sdk.analytics.i)
.class public final synthetic Lcom/hyprmx/android/sdk/analytics/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "android.permission.CAMERA"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "android.permission.WRITE_CALENDAR"

    return-object p0

    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string p0, "android.permission.RECORD_AUDIO"

    return-object p0

    :cond_12
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic b(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "camera_permission"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "calendar_permission"

    return-object p0

    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string p0, "microphone_permission"

    return-object p0

    :cond_12
    const/4 p0, 0x0

    throw p0
.end method
