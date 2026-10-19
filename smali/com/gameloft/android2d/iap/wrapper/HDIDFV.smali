###### Class com.gameloft.android2d.iap.wrapper.HDIDFV (com.gameloft.android2d.iap.wrapper.HDIDFV)
.class public Lcom/gameloft/android2d/iap/wrapper/HDIDFV;
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

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/HDIDFV;->getNHDIDFV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHDIDFVVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/HDIDFV;->getNHDIDFVVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getNHDIDFV()Ljava/lang/String;
.end method

.method public static native getNHDIDFVVersion()Ljava/lang/String;
.end method
