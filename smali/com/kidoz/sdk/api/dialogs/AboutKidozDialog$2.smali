###### Class com.kidoz.sdk.api.dialogs.AboutKidozDialog.AnonymousClass2 (com.kidoz.sdk.api.dialogs.AboutKidozDialog$2)
.class Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$2;
.super Ljava/lang/Object;
.source "AboutKidozDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->initCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

.field final synthetic val$closeImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$2;->this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    iput-object p2, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$2;->val$closeImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$2;->val$closeImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    return-void
.end method
