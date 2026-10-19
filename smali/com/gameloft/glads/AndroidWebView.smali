###### Class com.gameloft.glads.AndroidWebView (com.gameloft.glads.AndroidWebView)
.class public Lcom/gameloft/glads/AndroidWebView;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static TAG:Ljava/lang/String; = "GLADS"


# instance fields
.field buttons:Ljava/util/HashMap;

.field isPresentingFullScreen:Z

.field isReleased:Z

.field modalWebviewParams:Ljava/lang/String;

.field openWithModalWebview:Z

.field orientation:I

.field parent:J

.field webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/glads/AndroidWebView;->orientation:I

    iput-boolean v0, p0, Lcom/gameloft/glads/AndroidWebView;->isPresentingFullScreen:Z

    iput-boolean v0, p0, Lcom/gameloft/glads/AndroidWebView;->isReleased:Z

    iput-boolean v0, p0, Lcom/gameloft/glads/AndroidWebView;->openWithModalWebview:Z

    const-string v0, "{}"

    iput-object v0, p0, Lcom/gameloft/glads/AndroidWebView;->modalWebviewParams:Ljava/lang/String;

    iput-wide p1, p0, Lcom/gameloft/glads/AndroidWebView;->parent:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView;->buttons:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/gameloft/glads/AndroidWebView;->StartWebView()V

    return-void
.end method

.method public static native NativeButtonClicked(JI)V
.end method

.method public static native NativeOnCreateWindow(JJLjava/lang/String;)V
.end method

.method public static native NativeOnFailedLoad(JLjava/lang/String;)V
.end method

.method public static native NativeOnFinishLoad(J)V
.end method

.method public static native NativeOnJavaScriptEvaluated(JLjava/lang/String;I)V
.end method

.method public static native NativeOnTouch(J)V
.end method

.method public static native NativeOnWebViewCrashed(J)V
.end method

.method public static native NativeShouldOpenURL(JLjava/lang/String;)Z
.end method


# virtual methods
.method AddButton([BIIIII)V
    .registers 16

    new-instance v8, Lcom/gameloft/glads/AndroidWebView$f;

    move-object v0, v8

    move-object v1, p0

    move v2, p6

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/gameloft/glads/AndroidWebView$f;-><init>(Lcom/gameloft/glads/AndroidWebView;I[BIIII)V

    invoke-static {v8}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public BringToFront()V
    .registers 2

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$q;

    invoke-direct {v0, p0}, Lcom/gameloft/glads/AndroidWebView$q;-><init>(Lcom/gameloft/glads/AndroidWebView;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method ClearCacheAndCookies()V
    .registers 2

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$j;

    invoke-direct {v0, p0}, Lcom/gameloft/glads/AndroidWebView$j;-><init>(Lcom/gameloft/glads/AndroidWebView;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method declared-synchronized CloseFullScreen()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/gameloft/glads/AndroidWebView;->isPresentingFullScreen:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/gameloft/glads/AndroidWebView;->isPresentingFullScreen:Z

    invoke-static {}, Lcom/gameloft/glads/Utils;->RestoreOrientation()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public DismissFullScreen()V
    .registers 2

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$e;

    invoke-direct {v0, p0}, Lcom/gameloft/glads/AndroidWebView$e;-><init>(Lcom/gameloft/glads/AndroidWebView;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method EnableModalWebView()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/glads/AndroidWebView;->openWithModalWebview:Z

    return-void
.end method

.method public EvaluateJavaScript(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/gameloft/glads/AndroidWebView$d;-><init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GetLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetParentView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RelativeLayout;

    const/4 v2, -0x1

    if-eqz v1, :cond_f

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_2e

    :cond_f
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_19

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_2e

    :cond_19
    instance-of v1, v0, Landroid/widget/AbsoluteLayout;

    if-eqz v1, :cond_2d

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    move-object v0, v1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return-object v0
.end method

.method public GetLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;
    .registers 8

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetParentView()Landroid/view/ViewGroup;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x9

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p3, 0xa

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_34

    :cond_1c
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_29

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_34

    :cond_29
    instance-of v0, v0, Landroid/widget/AbsoluteLayout;

    if-eqz v0, :cond_33

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return-object v0
.end method

.method public GetWebView()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public IsParentViewHardwareAccelerated()Z
    .registers 2

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetParentView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method public LoadHTMLFile(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$s;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/glads/AndroidWebView$s;-><init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public LoadHTMLString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/gameloft/glads/AndroidWebView$a;-><init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public LoadURL(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$b;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/glads/AndroidWebView$b;-><init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnCreateWindow(JLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lcom/gameloft/glads/AndroidWebView;->parent:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/gameloft/glads/AndroidWebView;->NativeOnCreateWindow(JJLjava/lang/String;)V

    return-void
.end method

.method public OnFailedLoad(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lcom/gameloft/glads/AndroidWebView;->parent:J

    invoke-static {v0, v1, p1}, Lcom/gameloft/glads/AndroidWebView;->NativeOnFailedLoad(JLjava/lang/String;)V

    return-void
.end method

.method public OnFinishLoad()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lcom/gameloft/glads/AndroidWebView;->parent:J

    invoke-static {v0, v1}, Lcom/gameloft/glads/AndroidWebView;->NativeOnFinishLoad(J)V

    return-void
.end method

.method public OnJavaScriptEvaluated(Ljava/lang/String;I)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lcom/gameloft/glads/AndroidWebView;->parent:J

    invoke-static {v0, v1, p1, p2}, Lcom/gameloft/glads/AndroidWebView;->NativeOnJavaScriptEvaluated(JLjava/lang/String;I)V

    return-void
.end method

.method public OnWebViewCrashed()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/gameloft/glads/Utils;->GetParentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    iget-wide v0, p0, Lcom/gameloft/glads/AndroidWebView;->parent:J

    invoke-static {v0, v1}, Lcom/gameloft/glads/AndroidWebView;->NativeOnWebViewCrashed(J)V

    return-void
.end method

.method public PresentFullScreen(I)V
    .registers 3

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$n;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/glads/AndroidWebView$n;-><init>(Lcom/gameloft/glads/AndroidWebView;I)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Release()V
    .registers 2

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$o;

    invoke-direct {v0, p0}, Lcom/gameloft/glads/AndroidWebView$o;-><init>(Lcom/gameloft/glads/AndroidWebView;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method RemoveButton(I)V
    .registers 3

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$g;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/glads/AndroidWebView$g;-><init>(Lcom/gameloft/glads/AndroidWebView;I)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public RunJavaScript(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$c;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/glads/AndroidWebView$c;-><init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetBounds(IIII)V
    .registers 12

    new-instance v6, Lcom/gameloft/glads/AndroidWebView$p;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/gameloft/glads/AndroidWebView$p;-><init>(Lcom/gameloft/glads/AndroidWebView;IIII)V

    invoke-static {v6}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method SetButtonBounds(IIIII)V
    .registers 14

    new-instance v7, Lcom/gameloft/glads/AndroidWebView$h;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/gameloft/glads/AndroidWebView$h;-><init>(Lcom/gameloft/glads/AndroidWebView;IIIII)V

    invoke-static {v7}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetInitialScale(I)V
    .registers 3

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$k;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/glads/AndroidWebView$k;-><init>(Lcom/gameloft/glads/AndroidWebView;I)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetOrientation(I)V
    .registers 2

    iput p1, p0, Lcom/gameloft/glads/AndroidWebView;->orientation:I

    invoke-static {p1}, Lcom/gameloft/glads/Utils;->SetOrientation(I)V

    return-void
.end method

.method public SetUseWideViewPort(Z)V
    .registers 3

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$l;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/glads/AndroidWebView$l;-><init>(Lcom/gameloft/glads/AndroidWebView;Z)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method SetUserAgent(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$i;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/glads/AndroidWebView$i;-><init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetVisible(Z)V
    .registers 3

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$r;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/glads/AndroidWebView$r;-><init>(Lcom/gameloft/glads/AndroidWebView;Z)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ShouldOpenURL(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-wide v0, p0, Lcom/gameloft/glads/AndroidWebView;->parent:J

    invoke-static {v0, v1, p1}, Lcom/gameloft/glads/AndroidWebView;->NativeShouldOpenURL(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public StartWebView()V
    .registers 2

    new-instance v0, Lcom/gameloft/glads/AndroidWebView$m;

    invoke-direct {v0, p0, p0}, Lcom/gameloft/glads/AndroidWebView$m;-><init>(Lcom/gameloft/glads/AndroidWebView;Lcom/gameloft/glads/AndroidWebView;)V

    invoke-static {v0}, Lcom/gameloft/glads/Utils;->RunOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object p1, p0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    const/4 p2, 0x0

    if-nez p1, :cond_6

    return p2

    :cond_6
    iget-wide v0, p0, Lcom/gameloft/glads/AndroidWebView;->parent:J

    invoke-static {v0, v1}, Lcom/gameloft/glads/AndroidWebView;->NativeOnTouch(J)V

    return p2
.end method
