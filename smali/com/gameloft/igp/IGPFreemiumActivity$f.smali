###### Class com.gameloft.igp.IGPFreemiumActivity.f (com.gameloft.igp.IGPFreemiumActivity$f)
.class Lcom/gameloft/igp/IGPFreemiumActivity$f;
.super Landroid/webkit/WebView;
.source "IGPFreemiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method public constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$f;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x60

    if-eq v0, v1, :cond_29

    const/16 v1, 0x61

    if-eq v0, v1, :cond_29

    const/16 v1, 0x63

    if-eq v0, v1, :cond_29

    const/16 v1, 0x64

    if-eq v0, v1, :cond_29

    const/16 v1, 0x66

    if-eq v0, v1, :cond_29

    const/16 v1, 0x67

    if-eq v0, v1, :cond_29

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_29

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_29

    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$f;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_49

    :cond_3a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$f;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_49
    :goto_49
    return v1
.end method
