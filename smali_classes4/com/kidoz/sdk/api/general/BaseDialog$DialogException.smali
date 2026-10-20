###### Class com.kidoz.sdk.api.general.BaseDialog.DialogException (com.kidoz.sdk.api.general.BaseDialog$DialogException)
.class Lcom/kidoz/sdk/api/general/BaseDialog$DialogException;
.super Ljava/lang/Exception;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/BaseDialog;


# direct methods
.method private constructor <init>(Lcom/kidoz/sdk/api/general/BaseDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$DialogException;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kidoz/sdk/api/general/BaseDialog;Lcom/kidoz/sdk/api/general/BaseDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog$DialogException;-><init>(Lcom/kidoz/sdk/api/general/BaseDialog;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    const-string v0, "Don\'t use the show() method\nUse openDialog() instead!"

    return-object v0
.end method
