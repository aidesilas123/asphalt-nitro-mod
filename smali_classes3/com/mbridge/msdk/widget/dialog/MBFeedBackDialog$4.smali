###### Class com.mbridge.msdk.widget.dialog.MBFeedBackDialog.AnonymousClass4 (com.mbridge.msdk.widget.dialog.MBFeedBackDialog$4)
.class final Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog$4;
.super Ljava/lang/Object;
.source "MBFeedBackDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog$4;->a:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog$4;->a:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-static {p1}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->a(Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;)Lcom/mbridge/msdk/widget/dialog/a;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog$4;->a:Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;

    invoke-static {p1}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->a(Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;)Lcom/mbridge/msdk/widget/dialog/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/widget/dialog/a;->c()V

    :cond_11
    return-void
.end method
