###### Class com.gameloft.android.hdidfv.HDIDFV (com.gameloft.android.hdidfv.HDIDFV)
.class public Lcom/gameloft/android/hdidfv/HDIDFV;
.super Ljava/lang/Object;
.source "HDIDFV.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHDIDFV()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/hdidfv/HDIDFV;->getNHDIDFV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHDIDFVVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/hdidfv/HDIDFV;->getNHDIDFVVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getNHDIDFV()Ljava/lang/String;
.end method

.method public static native getNHDIDFVVersion()Ljava/lang/String;
.end method
