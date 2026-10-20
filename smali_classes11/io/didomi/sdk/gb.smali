###### Class io.didomi.drawable.gb (io.didomi.sdk.gb)
.class public final synthetic Lio/didomi/sdk/gb;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/L6;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/L6;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/gb;->a:Lio/didomi/sdk/L6;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/gb;->a:Lio/didomi/sdk/L6;

    invoke-static {v0, p1, p2, p3}, Lio/didomi/sdk/L6;->f(Lio/didomi/sdk/L6;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
