###### Class com.kidoz.sdk.api.ui_views.html_view.MaximizedViewDialog.AnonymousClass1 (com.kidoz.sdk.api.ui_views.html_view.MaximizedViewDialog$1)
.class Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog$1;
.super Ljava/lang/Object;
.source "MaximizedViewDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/KidozTopBar$KidozTopBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;->initTopBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitClicked(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/MaximizedViewDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->closeDialog()V

    return-void
.end method
