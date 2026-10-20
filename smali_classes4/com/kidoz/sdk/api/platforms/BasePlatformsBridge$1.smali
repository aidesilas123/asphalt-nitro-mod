###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass1 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$1)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$1;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Lcom/kidoz/sdk/api/interfaces/SDKEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$1;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitError(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$1;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onSDKInitError(Ljava/lang/String;)V

    return-void
.end method

.method public onInitSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$1;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onSDKInitSuccess()V

    return-void
.end method
