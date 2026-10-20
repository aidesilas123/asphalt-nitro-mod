###### Class io.didomi.drawable.de (io.didomi.sdk.de)
.class public final synthetic Lio/didomi/sdk/de;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/b7$a;

.field public final synthetic b:Lio/didomi/sdk/x6$f;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/de;->a:Lio/didomi/sdk/b7$a;

    iput-object p2, p0, Lio/didomi/sdk/de;->b:Lio/didomi/sdk/x6$f;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/de;->a:Lio/didomi/sdk/b7$a;

    iget-object v1, p0, Lio/didomi/sdk/de;->b:Lio/didomi/sdk/x6$f;

    invoke-static {v0, v1, p1, p2, p3}, Lio/didomi/sdk/h7;->b(Lio/didomi/sdk/b7$a;Lio/didomi/sdk/x6$f;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
