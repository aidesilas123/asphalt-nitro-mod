###### Class com.facebook.internal.NativeProtocol.EffectTestAppInfo (com.facebook.internal.NativeProtocol$EffectTestAppInfo)
.class final Lcom/facebook/internal/NativeProtocol$EffectTestAppInfo;
.super Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.source "NativeProtocol.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EffectTestAppInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLoginActivity()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/internal/NativeProtocol$EffectTestAppInfo;->getLoginActivity()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLoginActivity()Ljava/lang/Void;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    const-string v0, "com.facebook.arstudio.player"

    return-object v0
.end method
