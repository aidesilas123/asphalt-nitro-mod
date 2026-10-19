###### Class com.gameloft.android2d.iap.wrapper.NativeUtils (com.gameloft.android2d.iap.wrapper.NativeUtils)
.class public Lcom/gameloft/android2d/iap/wrapper/NativeUtils;
.super Ljava/lang/Object;
.source "NativeUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nativeU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CheckRoot()Z
.end method

.method public static native getClock()F
.end method

.method public static native getClockMillis()J
.end method

.method public static native getClockNano()J
.end method
