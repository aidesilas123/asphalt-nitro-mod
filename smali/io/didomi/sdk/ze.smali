###### Class io.didomi.drawable.ze (io.didomi.sdk.ze)
.class public final synthetic Lio/didomi/sdk/ze;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/l8;

.field public final synthetic b:Lio/didomi/sdk/g8$g;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/l8;Lio/didomi/sdk/g8$g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ze;->a:Lio/didomi/sdk/l8;

    iput-object p2, p0, Lio/didomi/sdk/ze;->b:Lio/didomi/sdk/g8$g;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/ze;->a:Lio/didomi/sdk/l8;

    iget-object v1, p0, Lio/didomi/sdk/ze;->b:Lio/didomi/sdk/g8$g;

    invoke-static {v0, v1, p1, p2, p3}, Lio/didomi/sdk/l8;->e(Lio/didomi/sdk/l8;Lio/didomi/sdk/g8$g;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
