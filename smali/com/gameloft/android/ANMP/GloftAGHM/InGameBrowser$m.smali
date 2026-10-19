###### Class com.gameloft.android.ANMP.GloftAGHM.InGameBrowser.m (com.gameloft.android.ANMP.GloftAGHM.InGameBrowser$m)
.class Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$m;
.super Landroid/webkit/WebView;
.source "InGameBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;


# direct methods
.method public constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$m;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x60

    if-eq v0, v1, :cond_28

    const/16 v1, 0x61

    if-eq v0, v1, :cond_28

    const/16 v1, 0x63

    if-eq v0, v1, :cond_28

    const/16 v1, 0x64

    if-eq v0, v1, :cond_28

    const/16 v1, 0x66

    if-eq v0, v1, :cond_28

    const/16 v1, 0x67

    if-eq v0, v1, :cond_28

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_28

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_28

    packed-switch v0, :pswitch_data_4e

    goto :goto_48

    :cond_28
    :pswitch_28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$m;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_48

    :cond_38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser$m;->a:Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/InGameBrowser;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_48
    :goto_48
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_4e
    .packed-switch 0x13
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method
