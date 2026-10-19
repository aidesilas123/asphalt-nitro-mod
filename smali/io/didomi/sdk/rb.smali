###### Class io.didomi.drawable.rb (io.didomi.sdk.rb)
.class public final synthetic Lio/didomi/sdk/rb;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/L6;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/L6;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/rb;->a:Lio/didomi/sdk/L6;

    iput-object p2, p0, Lio/didomi/sdk/rb;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/rb;->a:Lio/didomi/sdk/L6;

    iget-object v1, p0, Lio/didomi/sdk/rb;->b:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Lio/didomi/sdk/L6;->q(Lio/didomi/sdk/L6;Landroid/view/View;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
