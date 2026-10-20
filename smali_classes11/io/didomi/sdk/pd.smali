###### Class io.didomi.drawable.pd (io.didomi.sdk.pd)
.class public final synthetic Lio/didomi/sdk/pd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Z7;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Z7;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/pd;->a:Lio/didomi/sdk/Z7;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/pd;->a:Lio/didomi/sdk/Z7;

    invoke-static {v0, p1, p2, p3}, Lio/didomi/sdk/Z7;->i(Lio/didomi/sdk/Z7;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
