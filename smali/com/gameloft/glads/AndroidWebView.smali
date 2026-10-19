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

###### Class com.gameloft.glads.AndroidWebView.a (com.gameloft.glads.AndroidWebView$a)
.class Lcom/gameloft/glads/AndroidWebView$a;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->LoadHTMLString(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$a;->c:Lcom/gameloft/glads/AndroidWebView;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gameloft/glads/AndroidWebView$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$a;->c:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/gameloft/glads/AndroidWebView$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/gameloft/glads/AndroidWebView$a;->b:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.b (com.gameloft.glads.AndroidWebView$b)
.class Lcom/gameloft/glads/AndroidWebView$b;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->LoadURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$b;->b:Lcom/gameloft/glads/AndroidWebView;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$b;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.c (com.gameloft.glads.AndroidWebView$c)
.class Lcom/gameloft/glads/AndroidWebView$c;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->RunJavaScript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$c;->b:Lcom/gameloft/glads/AndroidWebView;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$c;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gameloft/glads/AndroidWebView$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.d (com.gameloft.glads.AndroidWebView$d)
.class Lcom/gameloft/glads/AndroidWebView$d;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->EvaluateJavaScript(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$d;->c:Lcom/gameloft/glads/AndroidWebView;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$d;->a:Ljava/lang/String;

    iput p3, p0, Lcom/gameloft/glads/AndroidWebView$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$d;->c:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gameloft/glads/AndroidWebView$d;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/gameloft/glads/AndroidWebView$d;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "javascript:GLAdsV2.OnJavaScriptEvaluated(eval(\"%s\"), %d);"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.e (com.gameloft.glads.AndroidWebView$e)
.class Lcom/gameloft/glads/AndroidWebView$e;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->DismissFullScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$e;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$e;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->CloseFullScreen()V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.f (com.gameloft.glads.AndroidWebView$f)
.class Lcom/gameloft/glads/AndroidWebView$f;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->AddButton([BIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[B

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;I[BIIII)V
    .registers 8

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$f;->g:Lcom/gameloft/glads/AndroidWebView;

    iput p2, p0, Lcom/gameloft/glads/AndroidWebView$f;->a:I

    iput-object p3, p0, Lcom/gameloft/glads/AndroidWebView$f;->b:[B

    iput p4, p0, Lcom/gameloft/glads/AndroidWebView$f;->c:I

    iput p5, p0, Lcom/gameloft/glads/AndroidWebView$f;->d:I

    iput p6, p0, Lcom/gameloft/glads/AndroidWebView$f;->e:I

    iput p7, p0, Lcom/gameloft/glads/AndroidWebView$f;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$f;->g:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/widget/ImageButton;

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/gameloft/glads/AndroidWebView$f;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    new-instance v1, Lcom/gameloft/glads/AndroidWebView$f$a;

    invoke-direct {v1, p0}, Lcom/gameloft/glads/AndroidWebView$f$a;-><init>(Lcom/gameloft/glads/AndroidWebView$f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v2, p0, Lcom/gameloft/glads/AndroidWebView$f;->b:[B

    array-length v3, v2

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$f;->g:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v1, Lcom/gameloft/glads/AndroidWebView;->buttons:Ljava/util/HashMap;

    iget v2, p0, Lcom/gameloft/glads/AndroidWebView$f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$f;->g:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v1, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v3, p0, Lcom/gameloft/glads/AndroidWebView$f;->c:I

    iget v4, p0, Lcom/gameloft/glads/AndroidWebView$f;->d:I

    iget v5, p0, Lcom/gameloft/glads/AndroidWebView$f;->e:I

    iget v6, p0, Lcom/gameloft/glads/AndroidWebView$f;->f:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.f.a (com.gameloft.glads.AndroidWebView$f$a)
.class Lcom/gameloft/glads/AndroidWebView$f$a;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/AndroidWebView$f;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView$f;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$f$a;->a:Lcom/gameloft/glads/AndroidWebView$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$f$a;->a:Lcom/gameloft/glads/AndroidWebView$f;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView$f;->g:Lcom/gameloft/glads/AndroidWebView;

    iget-wide v0, v0, Lcom/gameloft/glads/AndroidWebView;->parent:J

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/gameloft/glads/AndroidWebView;->NativeButtonClicked(JI)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.g (com.gameloft.glads.AndroidWebView$g)
.class Lcom/gameloft/glads/AndroidWebView$g;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->RemoveButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;I)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$g;->b:Lcom/gameloft/glads/AndroidWebView;

    iput p2, p0, Lcom/gameloft/glads/AndroidWebView$g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$g;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->buttons:Ljava/util/HashMap;

    iget v1, p0, Lcom/gameloft/glads/AndroidWebView$g;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$g;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v1, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    :cond_1e
    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.h (com.gameloft.glads.AndroidWebView$h)
.class Lcom/gameloft/glads/AndroidWebView$h;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->SetButtonBounds(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;IIIII)V
    .registers 7

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$h;->f:Lcom/gameloft/glads/AndroidWebView;

    iput p2, p0, Lcom/gameloft/glads/AndroidWebView$h;->a:I

    iput p3, p0, Lcom/gameloft/glads/AndroidWebView$h;->b:I

    iput p4, p0, Lcom/gameloft/glads/AndroidWebView$h;->c:I

    iput p5, p0, Lcom/gameloft/glads/AndroidWebView$h;->d:I

    iput p6, p0, Lcom/gameloft/glads/AndroidWebView$h;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$h;->f:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->buttons:Ljava/util/HashMap;

    iget v1, p0, Lcom/gameloft/glads/AndroidWebView$h;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_22

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/gameloft/glads/AndroidWebView$h;->b:I

    iget v3, p0, Lcom/gameloft/glads/AndroidWebView$h;->c:I

    iget v4, p0, Lcom/gameloft/glads/AndroidWebView$h;->d:I

    iget v5, p0, Lcom/gameloft/glads/AndroidWebView$h;->e:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_22
    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.i (com.gameloft.glads.AndroidWebView$i)
.class Lcom/gameloft/glads/AndroidWebView$i;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->SetUserAgent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$i;->b:Lcom/gameloft/glads/AndroidWebView;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$i;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.j (com.gameloft.glads.AndroidWebView$j)
.class Lcom/gameloft/glads/AndroidWebView$j;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->ClearCacheAndCookies()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$j;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$j;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$j;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_28

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_47

    :cond_28
    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$j;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_47
    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.k (com.gameloft.glads.AndroidWebView$k)
.class Lcom/gameloft/glads/AndroidWebView$k;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->SetInitialScale(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;I)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$k;->b:Lcom/gameloft/glads/AndroidWebView;

    iput p2, p0, Lcom/gameloft/glads/AndroidWebView$k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$k;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v1, p0, Lcom/gameloft/glads/AndroidWebView$k;->a:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.l (com.gameloft.glads.AndroidWebView$l)
.class Lcom/gameloft/glads/AndroidWebView$l;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->SetUseWideViewPort(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$l;->b:Lcom/gameloft/glads/AndroidWebView;

    iput-boolean p2, p0, Lcom/gameloft/glads/AndroidWebView$l;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$l;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/gameloft/glads/AndroidWebView$l;->a:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.m (com.gameloft.glads.AndroidWebView$m)
.class Lcom/gameloft/glads/AndroidWebView$m;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->StartWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/AndroidWebView;

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Lcom/gameloft/glads/AndroidWebView;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$m;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    new-instance v1, Landroid/webkit/WebView;

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/gameloft/glads/GLWebViewClient;

    iget-object v4, p0, Lcom/gameloft/glads/AndroidWebView$m;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {v3, v4}, Lcom/gameloft/glads/GLWebViewClient;-><init>(Lcom/gameloft/glads/AndroidWebView;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/gameloft/glads/a;

    iget-object v4, p0, Lcom/gameloft/glads/AndroidWebView$m;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {v3, v4}, Lcom/gameloft/glads/a;-><init>(Lcom/gameloft/glads/AndroidWebView;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_ba

    iget-object v3, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v3, v3, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    iget-object v3, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v3, v3, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    :cond_ba
    const/16 v3, 0x15

    if-lt v0, v3, :cond_c9

    iget-object v3, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v3, v3, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_c9
    const/16 v3, 0x13

    if-lt v0, v3, :cond_d8

    iget-object v3, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v3, v3, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_d8
    const/16 v2, 0x11

    if-lt v0, v2, :cond_e7

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_e7
    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$m;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->GetLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetParentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v1, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$m;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/gameloft/glads/WebViewJavaScriptInterface;

    iget-object v2, p0, Lcom/gameloft/glads/AndroidWebView$m;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {v1, v2}, Lcom/gameloft/glads/WebViewJavaScriptInterface;-><init>(Lcom/gameloft/glads/AndroidWebView;)V

    const-string v2, "GLAdsV2"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.n (com.gameloft.glads.AndroidWebView$n)
.class Lcom/gameloft/glads/AndroidWebView$n;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->PresentFullScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;I)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$n;->b:Lcom/gameloft/glads/AndroidWebView;

    iput p2, p0, Lcom/gameloft/glads/AndroidWebView$n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$n;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_7

    return-void

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/gameloft/glads/AndroidWebView;->isPresentingFullScreen:Z

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->GetLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$n;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$n;->b:Lcom/gameloft/glads/AndroidWebView;

    iget v1, p0, Lcom/gameloft/glads/AndroidWebView$n;->a:I

    invoke-virtual {v0, v1}, Lcom/gameloft/glads/AndroidWebView;->SetOrientation(I)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$n;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.o (com.gameloft.glads.AndroidWebView$o)
.class Lcom/gameloft/glads/AndroidWebView$o;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->Release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->CloseFullScreen()V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetParentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v1, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetParentView()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/gameloft/glads/AndroidWebView$o$a;

    invoke-direct {v2, p0, v0}, Lcom/gameloft/glads/AndroidWebView$o$a;-><init>(Lcom/gameloft/glads/AndroidWebView$o;Landroid/webkit/WebView;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$o;->a:Lcom/gameloft/glads/AndroidWebView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.o.a (com.gameloft.glads.AndroidWebView$o$a)
.class Lcom/gameloft/glads/AndroidWebView$o$a;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView$o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView$o;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView$o;Landroid/webkit/WebView;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$o$a;->b:Lcom/gameloft/glads/AndroidWebView$o;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$o$a;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$o$a;->a:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.p (com.gameloft.glads.AndroidWebView$p)
.class Lcom/gameloft/glads/AndroidWebView$p;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->SetBounds(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;IIII)V
    .registers 6

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$p;->e:Lcom/gameloft/glads/AndroidWebView;

    iput p2, p0, Lcom/gameloft/glads/AndroidWebView$p;->a:I

    iput p3, p0, Lcom/gameloft/glads/AndroidWebView$p;->b:I

    iput p4, p0, Lcom/gameloft/glads/AndroidWebView$p;->c:I

    iput p5, p0, Lcom/gameloft/glads/AndroidWebView$p;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$p;->e:Lcom/gameloft/glads/AndroidWebView;

    iget-object v1, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget v2, p0, Lcom/gameloft/glads/AndroidWebView$p;->a:I

    iget v3, p0, Lcom/gameloft/glads/AndroidWebView$p;->b:I

    iget v4, p0, Lcom/gameloft/glads/AndroidWebView$p;->c:I

    iget v5, p0, Lcom/gameloft/glads/AndroidWebView$p;->d:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/gameloft/glads/AndroidWebView;->GetLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.q (com.gameloft.glads.AndroidWebView$q)
.class Lcom/gameloft/glads/AndroidWebView$q;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->BringToFront()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$q;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$q;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Landroid/webkit/WebView;->bringToFront()V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.r (com.gameloft.glads.AndroidWebView$r)
.class Lcom/gameloft/glads/AndroidWebView$r;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->SetVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$r;->b:Lcom/gameloft/glads/AndroidWebView;

    iput-boolean p2, p0, Lcom/gameloft/glads/AndroidWebView$r;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$r;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v1, p0, Lcom/gameloft/glads/AndroidWebView$r;->a:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_f

    :cond_d
    const/16 v1, 0x8

    :goto_f
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

###### Class com.gameloft.glads.AndroidWebView.s (com.gameloft.glads.AndroidWebView$s)
.class Lcom/gameloft/glads/AndroidWebView$s;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->LoadHTMLFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$s;->b:Lcom/gameloft/glads/AndroidWebView;

    iput-object p2, p0, Lcom/gameloft/glads/AndroidWebView$s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$s;->b:Lcom/gameloft/glads/AndroidWebView;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gameloft/glads/AndroidWebView$s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
