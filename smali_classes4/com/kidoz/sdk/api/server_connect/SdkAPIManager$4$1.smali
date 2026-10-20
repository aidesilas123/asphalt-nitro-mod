###### Class com.kidoz.sdk.api.server_connect.SdkAPIManager.AnonymousClass4.AnonymousClass1 (com.kidoz.sdk.api.server_connect.SdkAPIManager$4$1)
.class Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4$1;
.super Ljava/lang/Object;
.source "SdkAPIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4$1;->this$1:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4$1;->this$1:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;

    iget-object v1, v0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$getParamsCallback:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;

    if-eqz v1, :cond_b

    iget-object v0, v0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    invoke-interface {v1, v0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;->onResult(Landroid/content/ContentValues;)V

    :cond_b
    return-void
.end method
