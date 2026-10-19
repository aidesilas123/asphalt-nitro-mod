###### Class io.didomi.drawable.ib (io.didomi.sdk.ib)
.class public final synthetic Lio/didomi/sdk/ib;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/L6;

.field public final synthetic b:Lio/didomi/sdk/J6$i;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/L6;Lio/didomi/sdk/J6$i;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ib;->a:Lio/didomi/sdk/L6;

    iput-object p2, p0, Lio/didomi/sdk/ib;->b:Lio/didomi/sdk/J6$i;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/ib;->a:Lio/didomi/sdk/L6;

    iget-object v1, p0, Lio/didomi/sdk/ib;->b:Lio/didomi/sdk/J6$i;

    invoke-static {v0, v1, p1, p2, p3}, Lio/didomi/sdk/L6;->h(Lio/didomi/sdk/L6;Lio/didomi/sdk/J6$i;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
