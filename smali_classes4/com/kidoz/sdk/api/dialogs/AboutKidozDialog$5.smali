###### Class com.kidoz.sdk.api.dialogs.AboutKidozDialog.AnonymousClass5 (com.kidoz.sdk.api.dialogs.AboutKidozDialog$5)
.class Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$5;
.super Ljava/lang/Object;
.source "AboutKidozDialog.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$5;->this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
