###### Class com.kidoz.sdk.api.general.BaseDialog.AnonymousClass2 (com.kidoz.sdk.api.general.BaseDialog$2)
.class Lcom/kidoz/sdk/api/general/BaseDialog$2;
.super Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/BaseDialog;->getMyHandlerInstance()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/BaseDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/BaseDialog;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$2;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-direct {p0, p2}, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    return-void
.end method
