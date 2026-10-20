###### Class io.didomi.drawable.yb (io.didomi.sdk.yb)
.class public final synthetic Lio/didomi/sdk/yb;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/K7$a;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/K7$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/yb;->a:Lio/didomi/sdk/K7$a;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/yb;->a:Lio/didomi/sdk/K7$a;

    invoke-static {v0, p1, p2, p3}, Lio/didomi/sdk/M7;->b(Lio/didomi/sdk/K7$a;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
