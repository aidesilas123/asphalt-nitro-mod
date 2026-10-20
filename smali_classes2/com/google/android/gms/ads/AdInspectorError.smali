###### Class com.google.android.gms.ads.AdInspectorError (com.google.android.gms.ads.AdInspectorError)
.class public final Lcom/google/android/gms/ads/AdInspectorError;
.super Lcom/google/android/gms/ads/AdError;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdInspectorError$AdInspectorErrorCode;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_ALREADY_OPEN:I = 0x3

.field public static final ERROR_CODE_FAILED_TO_LOAD:I = 0x1

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_NOT_IN_TEST_MODE:I = 0x2


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v0

    return v0
.end method
