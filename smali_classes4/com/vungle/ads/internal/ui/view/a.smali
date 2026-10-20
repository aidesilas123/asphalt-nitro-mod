###### Class com.vungle.ads.internal.ui.view.a (com.vungle.ads.internal.ui.view.a)
.class public final synthetic Lcom/vungle/ads/internal/ui/view/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/a;->a:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/a;->a:Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;

    invoke-static {v0, p1, p2}, Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;->a(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
